class Post < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :User

  belongs_to :sub,
  primary_key: :id,
  foreign_key: :sub_id,
  class_name: :Sub

  has_many :postsubs,
  primary_key: :id,
  foreign_key: :post_id,
  class_name: :Post

  has_many :subs,
  through: :postsubs,
  source: :post
end
