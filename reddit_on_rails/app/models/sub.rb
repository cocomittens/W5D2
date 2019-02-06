class Sub < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true

  belongs_to :moderator,
    primary_key: :id,
    foreign_key: :moderator_id,
    class_name: :User

    has_many :posts,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Post

    has_many :postsubs,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: :Sub
end
