class DrugsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @prescription = @doctor.prescriptions.find(params[:prescription_id])
    @drugs = @prescription.drugs
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end
