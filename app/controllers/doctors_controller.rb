class DoctorsController < ApplicationController
    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.new(params.require(:doctor).permit(:doctor_name))

        if @doctor.save
            redirect_to doctor_path(@doctor.id)
        else
            render :new
        end
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:id])
        if @doctor.update(params.require(:doctor).permit(:doctor_name))
            redirect_to doctor_path(@doctor.id)
        else
            render :new
        end
    end

    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to doctors_path
    end

end
