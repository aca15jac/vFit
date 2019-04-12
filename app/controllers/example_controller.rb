class AssetsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_asset, only: [:show, :edit, :destroy, :update]
  before_action :set_asset_id, only: [:calendar, :loan, :hist, :peripherals]

## The following are used in our Index page to load the current list of
## assets and categories.
# Provding access in regardes to user ability
  def index
    @assets = Asset.all
    @category = Category.all
  end

## The following is used in the creation of new asset.
## The current list of category and asstes are loaded.
  def new
    @category = Category.all
    @asset = Asset.new
    @asset_owner = User.all
    render layout: false
  end

## Allows creation of new assets
  def create
    @asset = Asset.new(asset_params)
    @asset_owner = User.all
    @category = Category.all
    if @asset.save
      if !@asset.image.present?
        render :js => "window.location = '/site_assets'"
      else
        redirect_to assets_path, notice: 'Asset was successfully created.'
      end
    else
      render 'create_failure'
    end
  end

## Creates a new request whenever a user asks to loan an asset
  def loan
    @user = current_user
    @request = Request.new
    render layout: false
  end

## Returns the history for specific asset
  def hist
    @hist = History.where(:asset_id => @asset)
    render layout: false
  end

## Creates new peripheral for asset
   def peripherals
    @assets = Asset.all
    @peripheral = Peripheral.new
    render layout: false
   end

## Updates a current asset stored
  def update
    @category = Category.all
    if !Request.where('(start_date <= ? AND end_date >= ? AND asset_id = ?)', Date.current,Date.current, @asset).present?
      if @asset.update(asset_params)
        redirect_to assets_path, notice: 'Asset was successfully updated.'
      else
        redirect_to assets_path, notice: 'Please provide valid information.'
      end
    else
      redirect_to assets_path, notice: 'Sorry this asset in on loan.'
    end
  end

  ## Deletes a current asset stored
  def destroy
    if Request.where(:asset_id => @asset.id).present?
      redirect_to assets_path, notice: 'Sorry this asset is current being requested.'
    else
      @asset.destroy
      redirect_to assets_path, notice: 'Asset was successfully destroyed.'
    end
  end

## Searches through asstes through category or asset name
  def search
    @category = Category.all
    @assets = Asset.all
    @assets = Asset.where(category_id: params[:search][:category_id]) if
    params[:search][:category_id].present?
    @assets = @assets.where("name ILIKE ? OR serial ILIKE ?", "%#{params[:search][:name]}%", "%#{params[:search][:name]}%") if params[:search][:name].present?
    @notice = ("Your search for '#{params[:search][:name]}' returned 0 results") if !@assets.present?
    render :index
  end

  def calendar
    render layout: false
  end

  private
    def set_asset
      @asset = Asset.find(params[:id])
    end

    def set_asset_id
      @asset = Asset.find(params[:asset_id])
    end

    ## Permits data to add asset
    def asset_params
      params.require(:asset).permit(:name, :serial, :condition, :aq_date, :purchase_price, :manufacturer, :model, :asset_owner, :PO_number, :attached_doc, :attached_doc_cache, :description, :retired_date, :image, :image_cache, :category_id, :asset_owner_id, :storage_loc)
    end

end
