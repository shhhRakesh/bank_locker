class LockerTypesController < ApplicationController
  before_action :set_locker_type, only: [:show, :edit, :update, :destroy]

  # GET /locker_types
  # GET /locker_types.json
  def index
    @locker_types = LockerType.all
  end

  # GET /locker_types/1
  # GET /locker_types/1.json
  def show
  end

  # GET /locker_types/new
  def new
    @locker_type = LockerType.new
  end

  # GET /locker_types/1/edit
  def edit
  end

  # POST /locker_types
  # POST /locker_types.json
  def create
    @locker_type = LockerType.new(locker_type_params)

    respond_to do |format|
      if @locker_type.save
        format.html { redirect_to @locker_type, notice: 'Locker type was successfully created.' }
        format.json { render :show, status: :created, location: @locker_type }
      else
        format.html { render :new }
        format.json { render json: @locker_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locker_types/1
  # PATCH/PUT /locker_types/1.json
  def update
    respond_to do |format|
      if @locker_type.update(locker_type_params)
        format.html { redirect_to @locker_type, notice: 'Locker type was successfully updated.' }
        format.json { render :show, status: :ok, location: @locker_type }
      else
        format.html { render :edit }
        format.json { render json: @locker_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locker_types/1
  # DELETE /locker_types/1.json
  def destroy
    @locker_type.destroy
    respond_to do |format|
      format.html { redirect_to locker_types_url, notice: 'Locker type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locker_type
      @locker_type = LockerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locker_type_params
      params.require(:locker_type).permit(:locker_type, :yearly_rent, :number_of_free_visits, :extra_visit_charges)
    end
end
