class Comment < ActiveRecord::Base
  belongs_to :list
  validates :content, :author, :presence => true
end
