class Influencer
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :market_id, type: String
  field :image_url, type: String
  field :company, type:String
  field :twitter_url, type: String
  field :facebook_url, type: String
  field :blog_url, type: String

  belongs_to :market, :foreign_key => "market_id"

  def t
    Influencer.create!(
      first_name: "",
      last_name: "",
      image_url: "",
      company: "",
      twitter_url: "",
      facebook_url: "",
      blog_url: ""
    )
  end
end
