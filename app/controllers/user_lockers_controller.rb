class UserLockersController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_user_locker, only: [:show, :edit, :update, :destroy]

  def new
    @user_locker = UserLocker.new
  end

  # POST /user_lockers
  # POST /user_lockers.json
  def create
    @user_locker = UserLocker.new(user_locker_params)

    respond_to do |format|
      if @user_locker.save
        format.html { redirect_to @user_locker, notice: 'User locker was successfully created.' }
        format.json { render :show, status: :created, location: @user_locker }
      else
        format.html { render :new }
        format.json { render json: @user_locker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_lockers/1
  # DELETE /user_lockers/1.json
  def destroy
    @user_locker.destroy
    respond_to do |format|
      format.html { redirect_to user_lockers_url, notice: 'User locker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_locker
      @user_locker = UserLocker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_locker_params
      params.require(:user_locker).permit(:user_id, :locker_id)
    end
end
