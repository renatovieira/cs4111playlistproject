class IncludedInsController < ApplicationController
  before_action :set_included_in, only: [:show, :edit, :update, :destroy]

  # GET /included_ins
  # GET /included_ins.json
  def index
    @included_ins = IncludedIn.all
  end

  # GET /included_ins/1
  # GET /included_ins/1.json
  def show
  end

  # GET /included_ins/new
  def new
    @included_in = IncludedIn.new
  end

  # GET /included_ins/1/edit
  def edit
  end

  # POST /included_ins
  # POST /included_ins.json
  def create
    @included_in = IncludedIn.new(included_in_params)

    respond_to do |format|
      if @included_in.save
        format.html { redirect_to '/admin', notice: 'Association created.' }
        format.json { render :show, status: :created, location: @included_in }
      else
        format.html { render :new }
        format.json { render json: @included_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /included_ins/1
  # PATCH/PUT /included_ins/1.json
  def update
    respond_to do |format|
      if @included_in.update(included_in_params)
        format.html { redirect_to @included_in, notice: 'Included in was successfully updated.' }
        format.json { render :show, status: :ok, location: @included_in }
      else
        format.html { render :edit }
        format.json { render json: @included_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /included_ins/1
  # DELETE /included_ins/1.json
  def destroy
    @included_in.destroy
    respond_to do |format|
      format.html { redirect_to included_ins_url, notice: 'Included in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_included_in
      @included_in = IncludedIn.find([params[:id], params[:album_id]])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def included_in_params
      params.require(:included_in).permit(:song_id, :album_id)
    end
end
