class Market
  include Mongoid::Document
  field :name, type: String
  field :desc, type: String

  has_many :influencers
end
