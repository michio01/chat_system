class MymodelsController < ApplicationController
  before_action :set_mymodel, only: [:show, :edit, :update, :destroy]

  # GET /mymodels
  # GET /mymodels.json
  def index
    @mymodels = Mymodel.all
  end

  # GET /mymodels/1
  # GET /mymodels/1.json
  def show
  end

  # GET /mymodels/new
  def new
    @mymodel = Mymodel.new
  end

  # GET /mymodels/1/edit
  def edit
  end

  # POST /mymodels
  # POST /mymodels.json
  def create
    @mymodel = Mymodel.new(mymodel_params)

    respond_to do |format|
      if @mymodel.save
        format.html { redirect_to @mymodel, notice: 'Mymodel was successfully created.' }
        format.json { render :show, status: :created, location: @mymodel }
      else
        format.html { render :new }
        format.json { render json: @mymodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mymodels/1
  # PATCH/PUT /mymodels/1.json
  def update
    respond_to do |format|
      if @mymodel.update(mymodel_params)
        format.html { redirect_to @mymodel, notice: 'Mymodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @mymodel }
      else
        format.html { render :edit }
        format.json { render json: @mymodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mymodels/1
  # DELETE /mymodels/1.json
  def destroy
    @mymodel.destroy
    respond_to do |format|
      format.html { redirect_to mymodels_url, notice: 'Mymodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mymodel
      @mymodel = Mymodel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mymodel_params
      params.require(:mymodel).permit(:user_id, :name, :password_digest, :authority)
    end
end
