class Work
  include Mongoid::Document
  field :status_id, type: Integer
  field :assigned_to, type: String
  field :type_id, type: Integer
  field :type_desc, type: String
  field :note, type: String

  embedded_in :user
end
