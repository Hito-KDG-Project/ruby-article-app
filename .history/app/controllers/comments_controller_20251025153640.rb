class CommentsController < ApplicationController
  # set_articleを一番先に実行する
  before_action :set_article

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to @article, notice: "コメントを投稿しました。"
    else
      flash.now[:alert] = "コメントの投稿に失敗しました。"
      render "article/show", status: :unprocessable_entity
    end
  end

  def destroy
    comment = @article.comments.find(params[:id])
    comment.destroy
    redirect_to @article, notice: "コメントを削除しました。"
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, body)
  end
end
