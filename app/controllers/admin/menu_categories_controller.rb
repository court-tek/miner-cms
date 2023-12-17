class Admin::MenuCategoriesController < ApplicationController
  layout 'admin'
  before_action :set_admin_menu_category, only: %i[ show edit update destroy ]

  # GET /admin/menu_categories or /admin/menu_categories.json
  def index
    @admin_menu_categories = Admin::MenuCategory.all
  end

  # GET /admin/menu_categories/1 or /admin/menu_categories/1.json
  def show
  end

  # GET /admin/menu_categories/new
  def new
    @admin_menu_category = Admin::MenuCategory.new
  end

  # GET /admin/menu_categories/1/edit
  def edit
  end

  # POST /admin/menu_categories or /admin/menu_categories.json
  def create
    @admin_menu_category = Admin::MenuCategory.new(admin_menu_category_params)

    respond_to do |format|
      if @admin_menu_category.save
        format.html { redirect_to admin_menu_category_url(@admin_menu_category), notice: "Menu category was successfully created." }
        format.json { render :show, status: :created, location: @admin_menu_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_menu_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/menu_categories/1 or /admin/menu_categories/1.json
  def update
    respond_to do |format|
      if @admin_menu_category.update(admin_menu_category_params)
        format.html { redirect_to admin_menu_categories_path, notice: "Menu category was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_menu_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_menu_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/menu_categories/1 or /admin/menu_categories/1.json
  def destroy
    @admin_menu_category.destroy!

    respond_to do |format|
      format.html { redirect_to admin_menu_categories_url, notice: "Menu category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_menu_category
      @admin_menu_category = Admin::MenuCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_menu_category_params
      params.require(:admin_menu_category).permit(:title, :description)
    end
end
