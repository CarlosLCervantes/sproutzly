class Market
  include Mongoid::Document
  field :name, type: String
  field :desc, type: String

  has_many :influencers, :foreign_key => "market_id"
end
