class SiteController < ApplicationController
  def index
  	@picall = Pic.all
    @pics = @picall.order('created_at desc').reverse[0..2]
  end

def show
    @pic = Pic.find(params[:id])
    @pi
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params.require(:pic).permit(:title, :description, :image, :remote_image_url)
    end
end