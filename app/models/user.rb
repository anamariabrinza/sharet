class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { profile: "300x300>"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  enum gender: [:Other, :Male, :Female]

  has_many :articles

end
