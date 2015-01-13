class User
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :name, type: String
  field :location, type: String
  field :url, type: String
  field :joined_at, type: Time
  field :verified, type: Mongoid::Boolean

  validates :username, length: { in: 4..20 }
  validates :name, presence: true
end
