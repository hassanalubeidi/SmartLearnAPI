require 'rails_helper'

RSpec.describe "Subject Resource", :type => :request do
  	describe "GET /subjects" do
	  	it "returns subjects" do
	    	get "/subjects"
	    	expect(JSON.parse(response.body)).to eq({ "data" => [] })
	  	end
	end
	describe "POST /subjects" do
		it "creates subject, given valid parameters" do
			#Create subject
			post "/subjects", { "data" => 
									{ "type" => "subjects",
									  "attributes" => {"title" => "test title"} 
									} 
							  }.to_json,
							  {'Content-Type' => "application/vnd.api+json"}
			#If successful, created object is returned to us
			expect(JSON.parse(response.body)).to eq({"data" => {"id"=>"1", "type"=>"subjects", "links"=>{"self"=>"http://www.example.com/subjects/1"}, "attributes"=>{"title"=>"test title"}, "relationships"=>{"units"=>{"links"=>{"self"=>"http://www.example.com/subjects/1/relationships/units", "related"=>"http://www.example.com/subjects/1/units"}}}}})
		end
	end
end