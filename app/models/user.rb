class User
  include Mongoid::Document
  field :email, type: String
  field :password, type: String
  field :password_confirmation, type: String
  field :twitter_handle, type: String
  field :facebook_url, type: String
  field :website, type: String
  field :last_login, type: Date

  validates_uniqueness_of :email, message: 'Email is already taken'
  validates_presence_of :email, message: 'Email is required'
  validates_presence_of :website, message: 'Website is required'
  validates :password, :presence =>true, :length => { :minimum => 6, :maximum => 12 }, :confirmation =>true#, message: 'Password is required'
  validates_confirmation_of :password, message: 'Password Confirmation Mismatch' 
  validates :email, allow_blank: false, format: {
    with: /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i,
    message: 'Email is invalid'
  }
  validates_format_of :website, :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, message: 'Website is Invalid'

  embeds_many :works

end
