class ArtistBelongTosController < ApplicationController
  before_action :logged_in_user
  before_action :set_artist_belong_to, only: [:show, :edit, :update, :destroy]

  # GET /artist_belong_tos
  # GET /artist_belong_tos.json
  def index
    @artist_belong_tos = ArtistBelongTo.all
  end

  # GET /artist_belong_tos/1
  # GET /artist_belong_tos/1.json
  def show
  end

  # GET /artist_belong_tos/new
  def new
    @artist_belong_to = ArtistBelongTo.new
  end

  # GET /artist_belong_tos/1/edit
  def edit
  end

  # POST /artist_belong_tos
  # POST /artist_belong_tos.json
  def create
    @artist_belong_to = ArtistBelongTo.new(artist_belong_to_params)

    respond_to do |format|
      if @artist_belong_to.save
        format.html { redirect_to '/admin', notice: 'Association created.' }
        format.json { render :show, status: :created, location: @artist_belong_to }
      else
        format.html { render :new }
        format.json { render json: @artist_belong_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_belong_tos/1
  # PATCH/PUT /artist_belong_tos/1.json
  def update
    respond_to do |format|
      if @artist_belong_to.update(artist_belong_to_params)
        format.html { redirect_to @artist_belong_to, notice: 'Artist belong to was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_belong_to }
      else
        format.html { render :edit }
        format.json { render json: @artist_belong_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_belong_tos/1
  # DELETE /artist_belong_tos/1.json
  def destroy
    @artist_belong_to.destroy
    respond_to do |format|
      format.html { redirect_to artist_belong_tos_url, notice: 'Artist belong to was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_belong_to
      @artist_belong_to = ArtistBelongTo.find([params[:id], params[:genre_id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_belong_to_params
      params.require(:artist_belong_to).permit(:artist_id, :genre_id)
    end
end
