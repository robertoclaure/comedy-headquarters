class User < ActiveRecord::Base
  has_many :short_jokes
  has_many :long_jokes
  has_many :pictures
  has_many :votes

  validates :name, :uniqueness => true
  validates :name, :presence => true
end
