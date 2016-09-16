class MbcpusController < ApplicationController
  before_action :set_mbcpu, only: [:show, :edit, :update, :destroy]

  # GET /mbcpus
  # GET /mbcpus.json
  def index
    @mbcpus = Mbcpu.all
  end

  # GET /mbcpus/1
  # GET /mbcpus/1.json
  def show
  end

  # GET /mbcpus/new
  def new
    @mbcpu = Mbcpu.new
  end

  # GET /mbcpus/1/edit
  def edit
  end

  # POST /mbcpus
  # POST /mbcpus.json
  def create
    @mbcpu = Mbcpu.new(mbcpu_params)

    respond_to do |format|
      if @mbcpu.save
        format.html { redirect_to @mbcpu, notice: 'Mbcpu was successfully created.' }
        format.json { render :show, status: :created, location: @mbcpu }
      else
        format.html { render :new }
        format.json { render json: @mbcpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mbcpus/1
  # PATCH/PUT /mbcpus/1.json
  def update
    respond_to do |format|
      if @mbcpu.update(mbcpu_params)
        format.html { redirect_to @mbcpu, notice: 'Mbcpu was successfully updated.' }
        format.json { render :show, status: :ok, location: @mbcpu }
      else
        format.html { render :edit }
        format.json { render json: @mbcpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbcpus/1
  # DELETE /mbcpus/1.json
  def destroy
    @mbcpu.destroy
    respond_to do |format|
      format.html { redirect_to mbcpus_url, notice: 'Mbcpu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mbcpu
      @mbcpu = Mbcpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mbcpu_params
      params.require(:mbcpu).permit(:type, :brend, :model, :description)
    end
end
