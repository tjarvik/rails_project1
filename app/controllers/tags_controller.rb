class TagsController < ApplicationController
    before_action :require_login, only: [:destroy]
    
    def show
        @tag = Tag.find(params[:id])
    end
    
    def index
        @tags = Tag.all
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        flash.notice = "Tag '#{@tag.name}' Deleted."
        redirect_to articles_path
    end

end
