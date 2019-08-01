class CompatibilitiesController < ApplicationController
before_action :find_compatibility, only: [:show,:update,:destroy]

    def show

    end


  def new
    @compatibility = Compatibility.new
  end

  def create

    @compatibility = Compatibility.create(compatibility_params)

    if @compatibility.valid?
      redirect_to user_path(@compatibility.user)
    else
      flash[:errors] = @compatibility.errors.full_messages
      redirect_to user_path(@compatibility.user)
    end
  end


  def update
    if @compatibility.update(review_params)
    redirect_to user_path(@compatibility.user)
   else
    flash[:errors] = @compatibility.errors.full_messages
    redirect_to compatibility_path(@compatibility)
   end
  end

  def destroy
    @compatibility.destroy
    redirect_to user_path(@compatibility.user)
  end

  private

  def find_compatibility
    @compatibility = Compatibility.find(params[:id])
  end

  def compatibility_params
    params.require(:compatibility).permit(:horoscope_id,:user_id)
  end
end
