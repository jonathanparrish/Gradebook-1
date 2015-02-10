class StudentsController < ApplicationController
  before_action :check_logged_in

  def index
    @student = Student.all
    @achievement = Achievement.all
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def edit_achievements
    @achievements = Achievement.all
  end

  def update_achievements
  @student.achievements = []
  params[:achievements].keys.each do |achievements_id|
    @student.achievement << Achievement.find_by_id(achievement_id)
  end
  redirect_to edit_achievements_students_path
end

  def create
    @student = Student.new(student_params)
    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def show
    redirect_to teachers_path
  end

  private
  def check_logged_in
    redirect_to login_login_path unless session[:student_id] || session[:teacher_id]
  end

  private
  def student_params
    params.require(:student).permit(:name, :student_email, :teacher_id, :password)
  end
end
