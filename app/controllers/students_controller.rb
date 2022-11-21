class StudentsController < ApplicationController
    def index 
        @students = Student.all
        render json: @students
    end

    def grades
        @grades = Student.grades
        render json: @grades
    end

    def highest_grade
        @highest_grade = Student.highest_grade
        render json: @highest_grade
    end
end
