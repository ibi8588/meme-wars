class User < ApplicationRecord
  include Clearance::User

  def self.create_with_omniauth(auth)

  user = find_or_create_by(uid: auth['uid'], provider:  auth['provider'])
  user.email = "#{auth['uid']}@#{auth['provider']}.com"
  user.password = auth['uid']
  user.name = auth['info']['name']
  if User.exists?(user)
    user
  else
    user.save!
    user
  end
end

  validates_uniqueness_of :email, :username

  acts_as_voter
  has_many :memes
  has_many :favorites
  has_many :favorite_memes, through: :favorites, source: :favorited, source_type: 'Meme'
end
