class Work
  include Mongoid::Document
  field :status_id, type: Integer
  field :assigned_to, type: String
  field :value, type: String
  field :type_id, type: Integer
  field :type_desc, type: String
  field :note, type: String

  embedded_in :user

  validates_presence_of :status_id
  validates_presence_of :type_id

  def update_to_created
  	self.status_id = 0
  end

  def update_to_in_progress
		self.status_id = 1
  end

  def update_to_done
		self.status_id = 2
  end

  def in_progress?
  	self.status_id == 1
  end

  def done?
  	self.status_id == 2
  end
end
