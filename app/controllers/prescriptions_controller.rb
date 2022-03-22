class PrescriptionsController < ApplicationController
    before_action :set_doctor
    before_action :set_prescription, only: [:show, :edit, :update, :destroy]

    def index
        # @doctor = Doctor.find(params[:doctor_id])
        @prescriptions = @doctor.prescriptions
    end

    def new
        # @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.build
    end

    def create
        # @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.build(prescription_params)

        if @prescription.save
            redirect_to  doctor_prescription_path(@doctor.id, @prescription.id)
        else
            render :new
        end
    end


    def show
        # @doctor = Doctor.find(params[:doctor_id])
        # @prescription = @doctor.prescriptions.find(params[:id])
    end

    def edit
        # @doctor = Doctor.find(params[:doctor_id])
        # @prescription = @doctor.prescriptions.find(params[:id])
    end

    def update
        # @doctor = Doctor.find(params[:doctor_id])
        # @prescription = @doctor.prescriptions.find(params[:id])

        if @prescription.update(prescription_params)
            redirect_to  doctor_prescription_path(@doctor.id, @prescription.id)
        else
            render :edit
        end
    end

    def destroy
        # @doctor = Doctor.find(params[:doctor_id])
        # @prescription = @doctor.prescriptions.find(params[:id])
        @prescription.destroy
        redirect_to doctor_prescriptions_path

    end

    private
    
    def prescription_params
        params.require(:prescription).permit(:discount_eligible, :doctor_id, :taken_for, :doctor_name)
    end

    def set_doctor
        @doctor = Doctor.find(params[:doctor_id])
    end

    def set_prescription
        @prescription = @doctor.prescriptions.find(params[:id])
    end
end
