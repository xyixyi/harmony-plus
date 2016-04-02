class ApplybController < ActionController::Base
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :gender, :country, :country_code, :phone_number, :age, :program)
  end
  
  def show
    # @student = Student.find(params[:id])
    redirect_to b_bay_apply_path
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end
  
  def create

    @old_student = Student.find_by_email(params[:student][:email])
    if @old_student
      @old_student.destroy
    end
    
    # print "here :"+@old_student.to_s
    @student = Student.new(student_params)

    if @student.save
      @student.update_attribute(:program, "B-Bay")
      redirect_to success_b_bay_path
    else
      if @student.errors.any?
        @student.errors.full_messages.each do |error_message|
          flash[:error] = error_message if @student.errors.full_messages.first == error_message
        end
      
      else
        flash[:error] = "Something wrong during saving."
      end
      redirect_to b_bay_apply_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end
  

end