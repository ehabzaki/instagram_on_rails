class Post < ApplicationRecord
  has_attached_file :image, styles: { medium: "500x500>", thumb: "100x100>" },   :convert_options => {
    :all => '-background white'
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
