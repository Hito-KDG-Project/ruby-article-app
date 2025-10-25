class CommentsController < ApplicationController
  # articleコントローラーのset_articleを先に実行する
  before_action :set_article

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to @article, notice: "コメントを投稿しました。"
    else
      flash.now[:]
    end
  end
end
