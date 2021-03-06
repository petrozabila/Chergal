class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]
  # GET /pics
  # GET /pics.json
  def index
    @pics = Pic.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /pics/1
  # GET /pics/1.json
  def show
    @pic = Pic.find(params[:id])
    @pic.category = Category.find(params[:category_id]) if params[:category_id]
  end

  # GET /pics/new
  def new
    @pic = Pic.new
    @categories = Category.all
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  # POST /pics.json
  def create
    @pic = Pic.new(pic_params)
    
    respond_to do |format|
      if @pic.save
        format.html { redirect_to @pic, notice: 'Pic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pic }
      else
        format.html { render action: 'new' }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pics/1
  # PATCH/PUT /pics/1.json
  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to @pic, notice: 'Pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pics/1
  # DELETE /pics/1.json
  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params.require(:pic).permit(:title, :description, :image, :category_id, :remote_image_url)
    end
end
