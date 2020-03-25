class ProfessionsController < ApplicationController

    def index
        professions = Profession.all 
        render json: professions
    end

    def show
        profession = Profession.find(params[:id])
        render json: profession
    end
end
