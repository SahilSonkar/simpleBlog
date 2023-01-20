class PostsController < ApplicationController

    def index
        Rails.logger.info 'Inside post controller index action - - - - - - - - - - -'
        @articles = Article.all
    end

    def new
        Rails.logger.info 'inside post controller new action  - - - - - - - - - - - - - '
        # @articles = Article.find(params[:id])
        render :index
    end

    def title
    end
end
