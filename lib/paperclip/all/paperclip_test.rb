# typed: strict

class User < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :avatar
  validates_attachment :avatar, presence: true,
  content_type: "image/jpeg",
  size: { in: 0..10 }
  before_post_process :skip_for_audio
  after_post_process :skip_for_audio
  do_not_validate_attachment_file_type :avatar
end
