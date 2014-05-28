class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end
  def show
    @appointment = Appointment.find(params[:id])
  end
  def index
    @appointments = Appointment.all
  end
  def edit
    @appointment = Appointment.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(params[:appointment].permit(:customer, :pet, :reason, :dated, :doctor))
      redirect_to @appointment
    else
      render 'edit'
    end
  end
  def create
    @appointment = Appointment.new(params[:appointment].permit(:customer, :pet, :reason, :dated, :doctor))
    if @appointment.save
      redirect_to @appointment
    else
      render 'new'
    end
  end
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end
  private
  def appointment_params
    params.require(:appointment).permit(:customer, :pet, :reason, :dated, :doctor)
  end
end
