class CommentsController < ApplicationController

  def create
  	@comment = Comment.new(comment_params)
  	@comment.save
    redirect_to article_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  	def comment_params
  		params.require(:comment).permit(:content, :article_id)
  	end
end
