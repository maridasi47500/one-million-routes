class MyprogramsController < ApplicationController
  before_action :set_myprogram, only: %i[ show edit update destroy ]

  # GET /myprograms or /myprograms.json
  def index
    @myprograms = Myprogram.all
  end

  # GET /myprograms/1 or /myprograms/1.json
  def show
  end

  # GET /myprograms/new
  def new
    @myprogram = Myprogram.new
  end

  # GET /myprograms/1/edit
  def edit
  end

  # POST /myprograms or /myprograms.json
  def create
    @myprogram = Myprogram.new(myprogram_params)

    respond_to do |format|
      if @myprogram.save
        format.html { redirect_to @myprogram, notice: "Myprogram was successfully created." }
        format.json { render :show, status: :created, location: @myprogram }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myprograms/1 or /myprograms/1.json
  def update
    respond_to do |format|
      if @myprogram.update(myprogram_params)
        format.html { redirect_to @myprogram, notice: "Myprogram was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @myprogram }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myprograms/1 or /myprograms/1.json
  def destroy
    @myprogram.destroy!

    respond_to do |format|
      format.html { redirect_to myprograms_path, notice: "Myprogram was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myprogram
      @myprogram = Myprogram.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def myprogram_params
      params.expect(myprogram: [ :framework_id, :title, :description, :user_id ])
    end
end
