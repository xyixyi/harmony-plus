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