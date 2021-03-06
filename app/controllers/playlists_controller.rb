class PlaylistsController < ApplicationController
  before_action :logged_in_user
  before_action :set_playlist, only: [:show, :edit, :update, :destroy]
  helper_method :requested_access, :is_collaborator

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists = Playlist.all.sort_by {|obj| obj.name}
  end
  
  def my_playlists
    @playlists = current_user.playlists.sort_by {|obj| obj.name}
  end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
  end

  # GET /playlists/new
  def new
    @playlist = Playlist.new
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists
  # POST /playlists.json
  def create
    @playlist = Playlist.new(playlist_params)

    respond_to do |format|
      if @playlist.save
        CollaboratesIn.create(user: current_user, playlist: @playlist)
        
        format.html { redirect_to @playlist, notice: 'Playlist was successfully created.' }
        format.json { render :show, status: :created, location: @playlist }
      else
        format.html { render :new }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to @playlist, notice: 'Playlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist }
      else
        format.html { render :edit }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist.destroy
    respond_to do |format|
      format.html { redirect_to playlists_url, notice: 'Playlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def is_collaborator(playlist)
    current_user.playlists.include? (playlist)
  end
  
  def requested_access(playlist)
    current_user.requested_playlists.include? (playlist)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:name, :is_public)
    end
end
