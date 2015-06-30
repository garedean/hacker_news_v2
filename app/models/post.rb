class Post < ActiveRecord::Base
  has_many :comments
  validates :author, :title, :url, :presence => true
end
