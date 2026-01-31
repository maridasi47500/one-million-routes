class MyroutesController < ApplicationController
  before_action :set_myroute, only: %i[ show edit update destroy ]

  # GET /myroutes or /myroutes.json
  def index
    @myroutes = Myroute.all
  end

  # GET /myroutes/1 or /myroutes/1.json
  def show
  end

  # GET /myroutes/new
  def new
    @myroute = Myroute.new
  end

  # GET /myroutes/1/edit
  def edit
  end

  # POST /myroutes or /myroutes.json
  def create
    @myroute = Myroute.new(myroute_params)

    respond_to do |format|
      if @myroute.save
        format.html { redirect_to @myroute, notice: "Myroute was successfully created." }
        format.json { render :show, status: :created, location: @myroute }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myroutes/1 or /myroutes/1.json
  def update
    respond_to do |format|
      if @myroute.update(myroute_params)
        format.html { redirect_to @myroute, notice: "Myroute was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @myroute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myroute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myroutes/1 or /myroutes/1.json
  def destroy
    @myroute.destroy!

    respond_to do |format|
      format.html { redirect_to myroutes_path, notice: "Myroute was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myroute
      @myroute = Myroute.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def myroute_params
      params.expect(myroute: [ :myprogram_id, :title, :description, :myurl ])
    end
end
