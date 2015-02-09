class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  validates :user_id, presence: true

  attr_accessor :author_name, :author_city
end
