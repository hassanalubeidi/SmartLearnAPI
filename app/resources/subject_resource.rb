class SubjectResource < JSONAPI::Resource
  attributes :title
  has_many :units
end