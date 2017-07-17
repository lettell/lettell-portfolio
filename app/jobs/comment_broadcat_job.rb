class CommentBrodcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "blog_#{comment.blog.id}_chanel", comment: render_comment(comment)
  end

  private

  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: { comment: comment }
  end
end
