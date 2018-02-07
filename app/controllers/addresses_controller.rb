class AddressesController < ApplicationController

  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    student = Student.find(params[:student_id])
    #I need to shorten below but don't know how to get student_id into the address hash?
    @address = Address.new(description: params[:address][:description], street: params[:address][:street], city: params[:address][:city], state: params[:address][:state], student_id: params[:student_id])
    if @address.save
      redirect_to student_path(student)
    else
      render :new
    end
  end

  private

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip)
  end
end
