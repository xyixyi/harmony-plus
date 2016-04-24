class ApplybController < ActionController::Base
  layout 'application'
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :gender, :country, 
                  :country_code, :phone_number, :program, :zipCode, :dateOfBirth, :addressLineOne, :addressLineTwo,
                  :province, :city, :school, :grade)
  end
  
  def show
    redirect_to b_bay_apply_path
  end

  def index
  end

  def new
  end
  
  def create

    @old_student = Student.find_by_email(params[:student][:email])
    @student = Student.new(student_params)

    if @student.save
      redirect_to success_path
    else
      if @student.errors.any?
        @student.errors.full_messages.each do |error_message|
          flash[:error] = error_message if @student.errors.full_messages.first == error_message
        end
      
      else
        flash[:error] = "Something wrong during saving."
      end
      if params[:student][:program] == "B-Bay"
        redirect_to b_bay_apply_path
      else
        redirect_to ideal_apply_path
      end
    end
  end

  def edit
    # @student = Student.find(params[:id])
  end
  

end