class UnitResource < JSONAPI::Resource
	attribute :title
	has_one :subject
end