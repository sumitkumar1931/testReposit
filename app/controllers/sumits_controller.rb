class SumitsController < ApplicationController
  before_action :set_sumit, only: [:show, :edit, :update, :destroy]

  # GET /sumits
  # GET /sumits.json
  def index
    @sumits = Sumit.all
  end

  # GET /sumits/1
  # GET /sumits/1.json
  def show
  end

  # GET /sumits/new
  def new
    @sumit = Sumit.new
  end

  # GET /sumits/1/edit
  def edit
  end

  # POST /sumits
  # POST /sumits.json
  def create
    @sumit = Sumit.new(sumit_params)

    respond_to do |format|
      if @sumit.save
        format.html { redirect_to @sumit, notice: 'Sumit is successfully created.' }
        format.json { render action: 'show', status: :created, location: @sumit }
      else
        format.html { render action: 'new' }
        format.json { render json: @sumit.errors, status: :unprocessable_entity }



        
      end
    end
  end

  # PATCH/PUT /sumits/1
  # PATCH/PUT /sumits/1.json
  def update
    respond_to do |format|
      if @sumit.update(sumit_params)
        format.html { redirect_to @sumit, notice: 'Sumit is successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sumit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sumits/1
  # DELETE /sumits/1.json
  def destroy
    @sumit.destroy
    respond_to do |format|
      format.html { redirect_to sumits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sumit
      @sumit = Sumit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sumit_params
      params.require(:sumit).permit(:name, :content, :published_on, :tags)
    end
end
