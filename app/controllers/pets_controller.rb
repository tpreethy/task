class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end
  def show
    @pet = Pet.find(params[:id])
  end
  def index
    @pets = Pet.all
  end
  def edit
    @pet = Pet.find(params[:id])
  end
  def update
    @pet = Pet.find(params[:id])
    if @pet.update(params[:pet].permit(:name, :pet_type, :breed, :age, :weight, :dated))
      redirect_to @pet
    else
      render 'edit'
    end
  end
  def create
    @pet = Pet.new(params[:pet].permit(:name, :pet_type, :breed, :age, :weight, :dated))
    if @pet.save
      redirect_to @pet
    else
      render 'new'
    end
  end
  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end
  private
  def pet_params
    params.require(:pet).permit(:name, :pet_type, :breed, :age, :weight, :dated)
  end
end
