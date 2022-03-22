class PrescriptionsController < ApplicationController
    def index
        @doctor = Doctor.find(params[:doctor_id])
        @prescriptions = @doctor.prescriptions
    end

    def new
        @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.build
    end

    def create
        @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.build(params.require(:prescription).permit(:discount_eligible, :doctor_id))

        if @prescription.save
            redirect_to  doctor_prescription_path(@doctor.id, @prescription.id)
        else
            render :new
        end
    end


    def show
        @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.find(params[:id])
    end

    def edit
        @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.find(params[:id])
        # @prescription = @doctor.prescriptions.build(params.require(:prescription).permit(:discount_eligible, :doctor_id))

        if @prescription.update(params.require(:prescription).permit(:discount_eligible, :doctor_id))
            redirect_to  doctor_prescription_path(@doctor.id, @prescription.id)
        else
            render :edit
        end
    end
end
