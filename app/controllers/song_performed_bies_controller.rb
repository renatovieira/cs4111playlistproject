class SongPerformedBiesController < ApplicationController
  before_action :set_song_performed_by, only: [:show, :edit, :update, :destroy]

  # GET /song_performed_bies
  # GET /song_performed_bies.json
  def index
    @song_performed_bies = SongPerformedBy.all
  end

  # GET /song_performed_bies/1
  # GET /song_performed_bies/1.json
  def show
  end

  # GET /song_performed_bies/new
  def new
    @song_performed_by = SongPerformedBy.new
  end

  # GET /song_performed_bies/1/edit
  def edit
  end

  # POST /song_performed_bies
  # POST /song_performed_bies.json
  def create
    @song_performed_by = SongPerformedBy.new(song_performed_by_params)
    
    puts @song_performed_by.to_s

    respond_to do |format|
      if @song_performed_by.save
        format.html { redirect_to '/admin', notice: 'Association created.' }
        format.json { render :show, status: :created, location: @song_performed_by }
      else
        format.html { render :new }
        format.json { render json: @song_performed_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_performed_bies/1
  # PATCH/PUT /song_performed_bies/1.json
  def update
    respond_to do |format|
      if @song_performed_by.update(song_performed_by_params)
        format.html { redirect_to @song_performed_by, notice: 'Song performed by was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_performed_by }
      else
        format.html { render :edit }
        format.json { render json: @song_performed_by.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_performed_bies/1
  # DELETE /song_performed_bies/1.json
  def destroy
    @song_performed_by.destroy
    respond_to do |format|
      format.html { redirect_to song_performed_bies_url, notice: 'Song performed by was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_performed_by
      @song_performed_by = SongPerformedBy.find([params[:song_id], params[:artist_id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_performed_by_params
      params.require(:song_performed_by).permit(:song_id, :artist_id)
    end
end
