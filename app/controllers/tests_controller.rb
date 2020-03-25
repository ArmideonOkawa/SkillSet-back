class TestsController < ApplicationController

    def index
        tests = Test.all 
        render json: tests
    end

    def show
        test = Test.find(params[:id])
        problems = Problem.all.select {|problem| problem.test_id == test.id }
        render json: test
    end
end
