class ProfessionsController < ApplicationController

    def index
        professions = Profession.all 
        render json: professions
    end

    def show
        profession = Profession.find(params[:id])
        render json: profession
    end

    def tests
        profession = Profession.find(params[:id])
        tests = Test.all.select {|test| test.profession_id == profession.id }
        render json: tests.to_json(except: [:created_at, :updated_at])
    end
end
