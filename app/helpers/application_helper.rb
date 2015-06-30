module ApplicationHelper
  def comment_count(post)
    "#{post.comments.size}"
  end
end
