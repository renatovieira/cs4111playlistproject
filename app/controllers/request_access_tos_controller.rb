class RequestAccessTosController < ApplicationController
  before_action :logged_in_user
  before_action :set_request_access_to, only: [:show, :edit, :update, :destroy]

  # GET /request_access_tos
  # GET /request_access_tos.json
  def index
    @request_access_tos = RequestAccessTo.all
  end

  # GET /request_access_tos/1
  # GET /request_access_tos/1.json
  def show
  end

  # GET /request_access_tos/new
  def new
    @request_access_to = RequestAccessTo.new
  end

  # GET /request_access_tos/1/edit
  def edit
  end

  # POST /request_access_tos
  # POST /request_access_tos.json
  def create
    @request_access_to = RequestAccessTo.new(request_access_to_params)

    respond_to do |format|
      if @request_access_to.save
        format.html { redirect_to '/playlists', notice: "Requested access to #{Playlist.find([params[:playlist_id]]).first.name}." }
        format.json { render :show, status: :created, location: @request_access_to }
      else
        format.html { render :new }
        format.json { render json: @request_access_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_access_tos/1
  # PATCH/PUT /request_access_tos/1.json
  def update
    respond_to do |format|
      if @request_access_to.update(request_access_to_params)
        format.html { redirect_to @request_access_to, notice: 'Request access to was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_access_to }
      else
        format.html { render :edit }
        format.json { render json: @request_access_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_access_tos/1
  # DELETE /request_access_tos/1.json
  def destroy
    @request_access_to.destroy
    respond_to do |format|
      if params[:type] == 'cancel'
        format.html { redirect_to '/playlists', notice: "Cancelled request." }
      elsif params[:type] == 'accept'
          @collaborates_in = CollaboratesIn.new(user_id: @request_access_to.user_id, playlist_id: @request_access_to.playlist_id)
          if @collaborates_in.save
            format.html { redirect_to '/requests', notice: "Accepted request." }
          end
      else
        format.html { redirect_to '/requests', notice: "Rejected request." }
      end
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_access_to
      @request_access_to = RequestAccessTo.find([params[:id], params[:playlist_id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_access_to_params
      params.permit(:user_id, :playlist_id)
    end
end
