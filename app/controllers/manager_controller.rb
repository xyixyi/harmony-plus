class ManagerController < ActionController::Base
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :gender, :country, :country_code, :phone_number)
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "#{@student.first_name} #{@student.last_name}'s data was successfully created."
      redirect_to manager_index_path
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes!(student_params)
    flash[:notice] = "#{@student.first_name} #{@student.last_name}'s data was successfully updated."
    redirect_to manager_index_path
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = "#{@student.first_name} #{@student.last_name}'s data was successfully deleted."
    redirect_to manager_index_path
  end
end