class PagesController < ApplicationController
  before_action :set_page, only: %i[ show edit update destroy ]

  # GET /pages or /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1 or /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
  end

  # POST /pages or /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to page_url(@page), notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to page_url(@page), notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1 or /pages/1.json
  def destroy
    @page.destroy!

    respond_to do |format|
      format.html { redirect_to pages_url, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def promotions
    @promos = [
      {
        :image => "alex-haney-CAhjZmVk5H4-unsplash.jpg",
        :title => "christmas eve & new years eve",
        :description => ""
      },
      {
        :image => "alex-haney-CAhjZmVk5H4-unsplash.jpg",
        :title => "holiday lunch booking incentive",
        :description => ""
      },
      {
        :image => "pexels-adonyi-gábor-1407848.jpg",
        :title => "tastemaker dinners",
        :description => "You're invited to join us again in 2024 for a dinner series of legendary pairings. Continue to check back for our 2024 TasteMaker Dinner lineup."
      },
      {
        :image => "jed-owen-q6Y8Xr3SoQA-unsplash-1920x1277.jpg",
        :title => "classics menu",
        :description => "Enjoy full 3 courses for one set price."
      },
    ]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.require(:page).permit(:item_title, :item_description, :item_image)
    end
end
