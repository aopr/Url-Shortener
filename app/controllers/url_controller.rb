class UrlController < ApplicationController
  def index
    @url = Url.new
    @urls = Url.all
    # form
  end

  def create
    @url = Url.new(url_params)
    @url.save
    redirect_to root_path
    # save the data when make a post
  end

  def show
    @url = Url.find(params[:id])
    redirect_to @url.short_url
    # Redirect user to thr url
  end

  private
    def url_params
      params.require(:url).permit(:short_url)
    end
end
