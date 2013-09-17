class CelsController < ApplicationController
  before_action :set_cel, only: [:show, :edit, :update, :destroy]

  # GET /cels
  # GET /cels.json
  def index
    @cels = Cel.all
  end

  # GET /cels/1
  # GET /cels/1.json
  def show
  end

  # GET /cels/new
  def new
    @cel = Cel.new
  end

  # GET /cels/1/edit
  def edit
  end

  # POST /cels
  # POST /cels.json
  def create
    @cel = Cel.new(cel_params)

    respond_to do |format|
      if @cel.save
        format.html { redirect_to @cel, notice: 'Cel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cel }
      else
        format.html { render action: 'new' }
        format.json { render json: @cel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cels/1
  # PATCH/PUT /cels/1.json
  def update
    respond_to do |format|
      if @cel.update(cel_params)
        format.html { redirect_to @cel, notice: 'Cel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cels/1
  # DELETE /cels/1.json
  def destroy
    @cel.destroy
    respond_to do |format|
      format.html { redirect_to cels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cel
      @cel = Cel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cel_params
      params.require(:cel).permit(:eventtype, :eventtime, :userdeftype, :cid_name, :cid_num, :cid_ani, :cid_rdnis, :cid_dnid, :exten, :context, :channame, :appname, :appdata, :amaflags, :accountcode, :peeraccount, :uniqueid, :linkedid, :userfield, :peer)
    end
end
