class BlogDetailsController < ApplicationController
  before_action :set_blog_detail, only: [:show, :edit, :update, :destroy]

  # GET /blog_details
  # GET /blog_details.json
  def index
    @blog_details = BlogDetail.all
  end

  # GET /blog_details/1
  # GET /blog_details/1.json
  def show
  end

  # GET /blog_details/new
  def new
    @blog_detail = BlogDetail.new
  end

  # GET /blog_details/1/edit
  def edit
  end

  # POST /blog_details
  # POST /blog_details.json
  def create
    @blog_detail = BlogDetail.new(blog_detail_params)

    respond_to do |format|
      if @blog_detail.save
        format.html { redirect_to @blog_detail, notice: 'Blog detail was successfully created.' }
        format.json { render :show, status: :created, location: @blog_detail }
      else
        format.html { render :new }
        format.json { render json: @blog_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_details/1
  # PATCH/PUT /blog_details/1.json
  def update
    respond_to do |format|
      if @blog_detail.update(blog_detail_params)
        format.html { redirect_to @blog_detail, notice: 'Blog detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_detail }
      else
        format.html { render :edit }
        format.json { render json: @blog_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_details/1
  # DELETE /blog_details/1.json
  def destroy
    @blog_detail.destroy
    respond_to do |format|
      format.html { redirect_to blog_details_url, notice: 'Blog detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_detail
      @blog_detail = BlogDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_detail_params
      params.require(:blog_detail).permit(:title, :description)
    end
end
