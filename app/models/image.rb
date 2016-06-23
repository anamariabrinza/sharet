class Image < ActiveRecord::Base
  belongs_to :article 

  has_attached_file :img, styles: { profile: "300x300>"}
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/

end
