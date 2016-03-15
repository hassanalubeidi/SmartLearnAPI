class ParseController < ApplicationController
	def paper
		paper = ParsePaper::parse(params[:url])
		paper = JSON.parse(paper)
		testpaper = TestPaper.last
		paper["mainquestions"].each_with_index do |mainquestion, mainquestion_index|
			unit_title = mainquestion["objectives"][0][0]["label"]
			unit = Unit.find_or_create_by(title: unit_title, subject_id: testpaper.subject_id)
			topic_title = mainquestion["objectives"][0][1]["label"]
			topic = Topic.find_or_create_by(title: topic_title, unit_id: Unit.last.id)
			objective_title = mainquestion["objectives"][0][2]["label"]
			objective = Objective.find_or_create_by(title: objective_title, topic_id: topic.id)
			m = MainQuestion.new(html: mainquestion["html"])
			m.objectives << objective
			mainquestion["questions"].each do |question|

				q = Question.create(position: (mainquestion_index + 1).to_s + question["position"].gsub(/\d/, ""), out_of: question["total_marks"])

				m.questions << q
			end
			m.save
			testpaper.main_questions << m
		end
		testpaper.save
	end
	def exampro
	end
end
