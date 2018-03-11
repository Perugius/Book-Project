class Author < ApplicationRecord
  validates :lastName, presence: true
  has_many :books_to_authors
  has_many :books, through: :books_to_authors
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/No_Image_Available.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
