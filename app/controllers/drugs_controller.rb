class DrugsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @prescription = @doctor.prescriptions.find(params[:prescription_id])
    @drugs = @prescription.drugs
  end

  def new
    @doctor = Doctor.find(params[:doctor_id])
    @prescription = @doctor.prescriptions.find(params[:prescription_id])
    @drug = @prescription.drugs.build

  end

  def create
  end

  def show
    @doctor = Doctor.find(params[:doctor_id])
    @prescription = @doctor.prescriptions.find(params[:prescription_id])
    @drug = @prescription.drugs.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
