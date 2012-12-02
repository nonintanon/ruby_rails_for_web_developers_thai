class CommentsController < ApplicationController

	before_filter :authenticate_user!
	before_filter :load_scope
	respond_to :js, :html, :json		# copy from simple blog

	def new		
		@com
		ment = @commentable.comments.build
	end

	def create
		@comment = @commentable.comments.build(params[:comment])
		if @comment.user = current_user and @comment.save
			redirect_to @commentable
		end

	end

	def edit
		@comment = get_comment
		if @comment.user == current_user
			respond_with @comment
		end
	end

	def update
		@comment = get_comment
		if @comment.user == current_user and @comment.update_attributes(params[:comment])
			redirect_to @commentable
		end	
	end

	def destroy
		@comment = get_comment
		if @comment.user == current_user and @comment.destroy
			redirect_to @commentable
		end
	end

	private

	def load_scope
		@commentable = get_commentable
	end

	def get_comment
		@commentable.comments.find(params[:id])
	end

	def get_commentable
		resource, id = request.path.split('/')[1, 2]
		resource.singularize.classify.constantize.find(id)
	end
end