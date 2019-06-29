class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
  end

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to students_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

end
