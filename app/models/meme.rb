class Meme < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
