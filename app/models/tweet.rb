class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence:true
  validates :content, presence:true

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
