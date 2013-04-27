class User
  include Mongoid::Document
  field :email, type: String,
  field :password, type: String,
  field :facebook_ur, type: String,
  field :website, type: String,
  field :last_login, type: Time

  embeds_many :works
end
