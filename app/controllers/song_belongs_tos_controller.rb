class SongBelongsTosController < ApplicationController
  before_action :logged_in_user
  before_action :set_song_belongs_to, only: [:show, :edit, :update, :destroy]

  # GET /song_belongs_tos
  # GET /song_belongs_tos.json
  def index
    @song_belongs_tos = SongBelongsTo.all
  end

  # GET /song_belongs_tos/1
  # GET /song_belongs_tos/1.json
  def show
  end

  # GET /song_belongs_tos/new
  def new
    @song_belongs_to = SongBelongsTo.new
  end

  # GET /song_belongs_tos/1/edit
  def edit
  end

  # POST /song_belongs_tos
  # POST /song_belongs_tos.json
  def create
    @song_belongs_to = SongBelongsTo.new(song_belongs_to_params)

    respond_to do |format|
      if @song_belongs_to.save
        format.html { redirect_to '/admin', notice: 'Association created.' }
        format.json { render :show, status: :created, location: @song_belongs_to }
      else
        format.html { render :new }
        format.json { render json: @song_belongs_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_belongs_tos/1
  # PATCH/PUT /song_belongs_tos/1.json
  def update
    respond_to do |format|
      if @song_belongs_to.update(song_belongs_to_params)
        format.html { redirect_to @song_belongs_to, notice: 'Song belongs to was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_belongs_to }
      else
        format.html { render :edit }
        format.json { render json: @song_belongs_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_belongs_tos/1
  # DELETE /song_belongs_tos/1.json
  def destroy
    @song_belongs_to.destroy
    respond_to do |format|
      format.html { redirect_to song_belongs_tos_url, notice: 'Song belongs to was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_belongs_to
      @song_belongs_to = SongBelongsTo.find([params[:id],params[:genre_id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_belongs_to_params
      params.require(:song_belongs_to).permit(:song_id, :genre_id)
    end
end
