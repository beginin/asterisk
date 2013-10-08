class LastcallsController < ApplicationController
  before_action :set_lastcall, only: [:show, :edit, :update, :destroy]

  # GET /lastcalls
  # GET /lastcalls.json
  def index
    @lastcalls = Lastcall.all
  end

  # GET /lastcalls/1
  # GET /lastcalls/1.json
  def show
  end

  # GET /lastcalls/new
  def new
    @lastcall = Lastcall.new
  end

  # GET /lastcalls/1/edit
  def edit
  end

  # POST /lastcalls
  # POST /lastcalls.json
  def create
    @lastcall = Lastcall.new(lastcall_params)

    respond_to do |format|
      if @lastcall.save
        format.html { redirect_to @lastcall, notice: 'Lastcall was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lastcall }
      else
        format.html { render action: 'new' }
        format.json { render json: @lastcall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lastcalls/1
  # PATCH/PUT /lastcalls/1.json
  def update
    respond_to do |format|
      if @lastcall.update(lastcall_params)
        format.html { redirect_to @lastcall, notice: 'Lastcall was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lastcall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lastcalls/1
  # DELETE /lastcalls/1.json
  def destroy
    @lastcall.destroy
    respond_to do |format|
      format.html { redirect_to lastcalls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lastcall
      @lastcall = Lastcall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lastcall_params
      params.require(:lastcall).permit(:extention, :tnumber)
    end
end
