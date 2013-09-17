class CdrsController < ApplicationController
  before_action :set_cdr, only: [:show, :edit, :update, :destroy]

  # GET /cdrs
  # GET /cdrs.json
  def index
    @cdrs = Cdr.all
  end

  # GET /cdrs/1
  # GET /cdrs/1.json
  def show
    @cels = Cel.where("uniqueid like ?",@cdr.uniqueid)
  end

  # GET /cdrs/new
  def new
    @cdr = Cdr.new
  end

  # GET /cdrs/1/edit
  def edit
  end

  # POST /cdrs
  # POST /cdrs.json
  def create
    @cdr = Cdr.new(cdr_params)

    respond_to do |format|
      if @cdr.save
        format.html { redirect_to @cdr, notice: 'Cdr was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cdr }
      else
        format.html { render action: 'new' }
        format.json { render json: @cdr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdrs/1
  # PATCH/PUT /cdrs/1.json
  def update
    respond_to do |format|
      if @cdr.update(cdr_params)
        format.html { redirect_to @cdr, notice: 'Cdr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cdr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdrs/1
  # DELETE /cdrs/1.json
  def destroy
    @cdr.destroy
    respond_to do |format|
      format.html { redirect_to cdrs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdr
      @cdr = Cdr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdr_params
      params.require(:cdr).permit(:calldate, :calldate, :src, :dst, :dcontext, :channel, :dstchannel, :lastapp, :lastdata, :duration, :billsec, :disposition, :amaflags, :accountcode, :uniqueid, :userfield, :peeraccount, :linkedid, :sequence)
    end
end
