class Influencer
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  #field :market_id, type: String
  field :image_url, type: String
  field :company, type:String
  field :twitter_url, type: String
  field :facebook_url, type: String
  field :blog_url, type: String

  belongs_to :market
end
