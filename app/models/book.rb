class Book < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :book_image, styles: { book_index: "250x350>", thumb: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_image, content_type: /\Aimage\/.*\z/
end
