class ProblemsController < ApplicationController

    def index
        problems = Problem.all 
        render json: problems.to_json(except: [:created_at, :updated_at])
    end

    def show
        problem = Problem.find(params[:id])
        render json: problem.to_json(except: [:created_at, :updated_at])
    end
end
