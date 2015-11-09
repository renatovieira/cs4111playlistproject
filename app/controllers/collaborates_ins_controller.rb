class CollaboratesInsController < ApplicationController
  before_action :set_collaborates_in, only: [:show, :edit, :update, :destroy]

  # GET /collaborates_ins
  # GET /collaborates_ins.json
  def index
    @collaborates_ins = CollaboratesIn.all
  end

  # GET /collaborates_ins/1
  # GET /collaborates_ins/1.json
  def show
  end

  # GET /collaborates_ins/new
  def new
    @collaborates_in = CollaboratesIn.new
  end

  # GET /collaborates_ins/1/edit
  def edit
  end

  # POST /collaborates_ins
  # POST /collaborates_ins.json
  def create
    @collaborates_in = CollaboratesIn.new(collaborates_in_params)

    respond_to do |format|
      if @collaborates_in.save
        format.html { redirect_to '/playlists', notice: 'Collaborates in was successfully created.' }
        format.json { render :show, status: :created, location: @collaborates_in }
      else
        format.html { render :new }
        format.json { render json: @collaborates_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collaborates_ins/1
  # PATCH/PUT /collaborates_ins/1.json
  def update
    respond_to do |format|
      if @collaborates_in.update(collaborates_in_params)
        format.html { redirect_to '/playlists', notice: 'Collaborates in was successfully updated.' }
        format.json { render :show, status: :ok, location: @collaborates_in }
      else
        format.html { render :edit }
        format.json { render json: @collaborates_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collaborates_ins/1
  # DELETE /collaborates_ins/1.json
  def destroy
    @collaborates_in.destroy
    respond_to do |format|
      format.html { redirect_to '/my_playlists', notice: "Stopped collaborating in #{Playlist.find([params[:playlist_id]]).first.name}." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collaborates_in
      @collaborates_in = CollaboratesIn.find([params[:id], params[:playlist_id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def collaborates_in_params
      params.permit(:user_id, :playlist_id)
    end
end
