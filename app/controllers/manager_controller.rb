class ManagerController < ActionController::Base
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
    check = true
    firstName = params[:student][:first_name]
    if firstName.empty? or firstName[/[a-zA-Z]+/] != firstName
      flash.now[:error] = "First name cannot be empty."
      check = false
    end
    firstName = params[:student][:first_name]
    if firstName.empty? or firstName[/[a-zA-Z]+/] != firstName
      flash.now[:error] = "First name cannot be empty."
      check = false
    end
    if not params[:student][:last_name]
      flash.now[:error] = "Last name cannot be empty."
      check = false
    end
    if not params[:student][:email]
      flash.now[:error] = "Email address cannot be empty."
      check = false
    end
    
    if not params[:student][:phone_number]
      flash.now[:error] = "Phone number cannot be empty."
      check = false
    end
    
    phone_number = params[:student][:phone_number]
    
    phone_number.delete("-")
    
    if phone_number.to_i.to_s != phone_number
      flash.now[:error] = "Phone number is not vaild."
      check = false
    end
    
    
    @old_student = Student.find_by_email(params[:student][:email])
    if @old_student
      @old_student.destroy
    end
    
    @student = Student.new(student_params)
    if check == true and @student.save
      flash[:notice] = "#{@student.first_name} #{@student.last_name}'s data was successfully created."
      redirect_to manager_index_path
    else
      redirect_to new_manager_path
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
  
  # def manager
  #   if current_user
  #     @message = "Welcome admin!"
  #     redirect_to manager_index_path
  #   else
  #     @message = "Access Denied"
  #   end
  # end
  
  # <h1><%= @message %></h1>
  # <% if current_user %>
  #   <% link_to('Logout', destroy_user_session_path, :method => :delete) %>
  # <% end %>
  private
    def student_params
       params.require(:student).permit(:first_name, :last_name, :age, :email, :gender, :country, :country_code, :phone_number, :program)
    end
end