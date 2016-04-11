class ManagerController < ActionController::Base
  # before_action :authenticate_user!
  layout 'application'
  def show
    @student = Student.find(params[:id])
  end

  def index
    sort = params[:sort] || session[:sort]
    # @students = Student.all
    
    if params[:query].present?
      @students = Student.search(params[:query])
    else
      @students = Student.all
    end
    
    @students = Student.order("lower(#{sort})") if sort
  end

  def new
    @student = Student.new
  end

  def create
    @old_student = Student.find_by_email(params[:student][:email])
    @student = Student.new(student_params)

    if @student.save
      # @student.update_attribute(:program, "B-Bay")
      flash[:notice] = "#{@student.first_name} #{@student.last_name}'s data was successfully created."
      redirect_to manager_index_path
    else
      if @student.errors.any?
        @student.errors.full_messages.each do |error_message|
          flash[:error] = error_message if @student.errors.full_messages.first == error_message
        end
      end
      redirect_to manager_index_path
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
  
  private
    def student_params
       params.require(:student).permit(:first_name, :last_name, :age, :email, :gender, :country, :country_code, :phone_number, :program, :school, :addressLineOne, :addressLineTwo, :dateOfBirth, :zipCode, :grade, :city)
    end
endclass ManagerController < ActionController::Base
  before_action :authenticate_user!
  layout 'application'
  def show
    @student = Student.find(params[:id])
  end

  def index
    sort = params[:sort] || session[:sort]
    @students = Student.all
    @students = Student.order("lower(#{sort})") if sort
  end

  def new
    @student = Student.new
  end

  def create
    @old_student = Student.find_by_email(params[:student][:email])
    @student = Student.new(student_params)

    if @student.save
      # @student.update_attribute(:program, "B-Bay")
      flash[:notice] = "#{@student.first_name} #{@student.last_name}'s data was successfully created."
      redirect_to manager_index_path
    else
      if @student.errors.any?
        @student.errors.full_messages.each do |error_message|
          flash[:error] = error_message if @student.errors.full_messages.first == error_message
        end
      end
      redirect_to manager_index_path
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
  
  private
    def student_params
       params.require(:student).permit(:first_name, :last_name, :age, :email, :gender, :country, :country_code, :phone_number, :program, :school, :addressLineOne, :addressLineTwo, :dateOfBirth, :zipCode, :grade, :city)
    end
end