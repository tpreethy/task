class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new
  end
  def index
    @schedules = Schedule.all
  end
  def show
    @schedule = Schedule.find(params[:id])
  end
  def edit
    @schedule = Schedule.find(params[:id])
  end
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params[:schedule].permit(:name, :reason, :dated))
      redirect_to @schedule
    else
      render 'edit'
    end
  end
  def create
    @schedule = Schedule.new(params[:schedule].permit(:name, :dated, :reason))
    if @schedule.save
      redirect_to @schedule
    else
      render 'new'
    end
  end
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to schedules_path
  end
  private
  def pet_params
    params.require(:schedule).permit(:name,:dated, :reason)
  end
end
