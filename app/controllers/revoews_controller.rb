class RevoewsController < ApplicationController
  before_action :set_revoew, only: [:show, :edit, :update, :destroy]

  # GET /revoews
  # GET /revoews.json
  def index
    @revoews = Revoew.all
  end

  # GET /revoews/1
  # GET /revoews/1.json
  def show
  end

  # GET /revoews/new
  def new
    @revoew = Revoew.new
  end

  # GET /revoews/1/edit
  def edit
  end

  # POST /revoews
  # POST /revoews.json
  def create
    @revoew = Revoew.new(revoew_params)

    respond_to do |format|
      if @revoew.save
        format.html { redirect_to @revoew, notice: 'Revoew was successfully created.' }
        format.json { render :show, status: :created, location: @revoew }
      else
        format.html { render :new }
        format.json { render json: @revoew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revoews/1
  # PATCH/PUT /revoews/1.json
  def update
    respond_to do |format|
      if @revoew.update(revoew_params)
        format.html { redirect_to @revoew, notice: 'Revoew was successfully updated.' }
        format.json { render :show, status: :ok, location: @revoew }
      else
        format.html { render :edit }
        format.json { render json: @revoew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revoews/1
  # DELETE /revoews/1.json
  def destroy
    @revoew.destroy
    respond_to do |format|
      format.html { redirect_to revoews_url, notice: 'Revoew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revoew
      @revoew = Revoew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revoew_params
      params.require(:revoew).permit(:rating, :comment)
    end
end
