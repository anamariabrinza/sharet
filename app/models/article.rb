class Article < ActiveRecord::Base
  belongs_to :user
  has_many :images

  accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

  has_attached_file :cover_image, styles: { profile: "300x300>"}
  validates_attachment_content_type :cover_image, content_type: /\Aimage\/.*\Z/

end
