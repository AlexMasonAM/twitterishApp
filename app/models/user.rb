class User
  include Mongoid::Document
  field :username, type: String
  field :password, type: String
  field :name, type: String
  field :location, type: String
  field :url, type: String
  field :joined_at, type: Time
  field :verified, type: Mongoid::Boolean

  validates :username, length: { in: 4..20 }, uniqueness: true
  validates :name, presence: true

  before_create :make_username_friendly

  def make_username_friendly
    self.username = self.username.strip.gsub(" ", "_")
  end

end
