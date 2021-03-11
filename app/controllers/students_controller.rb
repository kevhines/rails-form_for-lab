class StudentsController < ApplicationController
    def new 
        @student = Student.new
    end

    def show
        @student = Student.find_by_id(params[:id])
    end

    def index
    end

    def create
        student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name] )
        redirect_to student_path(student)
    end

    def update
        student = Student.find_by_id(params[:id])
        student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name] )
        redirect_to student_path(student)
    end

    def edit
        @student = Student.find_by_id(params[:id])
    end
end
