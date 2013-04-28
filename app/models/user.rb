class User
  include Mongoid::Document
  field :email, type: String
  field :password, type: String
  field :password_confirmation, type: String
  field :facebook_url, type: String
  field :website, type: String
  field :last_login, type: Date

  validates_presence_of :email
  validates_presence_of :password
  validates_presence_of :website

  embeds_many :works

end
