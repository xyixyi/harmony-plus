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
    check = true
    firstName = params[:student][:first_name]
    if firstName.empty? or firstName[/[a-zA-Z]+/] != firstName
      errormessage = "First name cannot be empty."
      check = false
    end
    lastname = params[:student][:last_name]
    if not lastname or lastname[/[a-zA-Z]+/] != lastname
      errormessage = "Last name cannot be empty or invaild last name."
      check = false
    end
    
    if params[:student][:email] == ""
      errormessage = "Email address cannot be empty."
      check = false
    end
    
    if not params[:student][:phone_number]
      errormessage = "Phone number cannot be empty."
      check = false
    end
    
    
    if params[:student][:age].to_i == 0
        errormessage = "please enter your age."
        check = false
    end
    

    phone_number = params[:student][:phone_number]
    
    phone_number.delete("-")
    
    if phone_number.to_i.to_s != phone_number
      errormessage = "Phone number is not vaild."
      check = false
    end
    
    
    @old_student = Student.find_by_email(params[:student][:email])
    if @old_student
      @old_student.destroy
    end
    
    # print "here :"+@old_student.to_s
    @student = Student.new(student_params)
    
    if check == true and @student.save
      @student.update_attribute(:program, "B-Bay")
      redirect_to success_b_bay_path
    else
      flash[:error] = errormessage
      redirect_to b_bay_apply_path
    end
  end

  def edit
    @student = Student.find(params[:id])
  end
  

end