class UrlsController < ApplicationController
  def show
    @url = Url.find_by( :short_url => params[:short_url] )
    redirect_to @url.original_url
  end

  def index
    @urls = Url.all.order("created_at DESC")
    @url = Url.new
  end

  def create
    @url = Url.new(params_url)
    @url.save
    redirect_to urls_path

  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy
    redirect_to urls_path
  end

  private

  def params_url
    params.require(:url).permit(:short_url, :original_url)
  end



end
