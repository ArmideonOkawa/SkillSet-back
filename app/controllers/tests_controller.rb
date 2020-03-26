class TestsController < ApplicationController

    def index
        tests = Test.all 
        render json: tests.to_json(except: [:created_at, :updated_at])
    end

    def show
        test = Test.find(params[:id])
        problems = Problem.all.select {|problem| problem.test_id == test.id }
        render json: test.to_json(except: [:created_at, :updated_at])
    end
end
