class PrescriptionsController < ApplicationController
    def index
        @doctor = Doctor.find(params[:doctor_id])
        @prescriptions = @doctor.prescriptions
    end

    def show
        @doctor = Doctor.find(params[:doctor_id])
        @prescription = @doctor.prescriptions.find(params[:id])
    end
end
