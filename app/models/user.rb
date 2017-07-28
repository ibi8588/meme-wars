class User < ApplicationRecord
  include Clearance::User

  validates_uniqueness_of :email, :username

  acts_as_voter
  has_many :memes
  has_many :favorites
  has_many :favorite_memes, through: :favorites, source: :favorited, source_type: 'Meme'
end
