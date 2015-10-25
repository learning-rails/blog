class Post < ActiveRecord::Base
    has_many :comments , dependent: :destroy
    validates :title, presence:true, length: { minimum: 5 }
    validates :body, presence:true
    has_attached_file :image, styles: { default: "1024x1024>", thumb: "250x250#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end