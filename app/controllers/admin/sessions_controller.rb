class Admin::SessionsController < Admin::Base
  def  new
    if current_administrator
      redirect_to :admin_root
    else
      @form = Admin::LoginForm.new
      render action: "new"
    end  
  end  
  
  def create
    @form = Admin::LoginForm.new(params[:admin_login_form])
    if @form.email.prsent?
      admin_member = AdminMember.find_by("LOWER(email) =?", @form.email.downcase)
    end
    if admin_member
      session[:admin_member_id] = admin_member.id
      redirect_to :admin_root
    else
      render action: "new"
    end
    
    def destroy
      session.delete(admin_member_id)
      redirect_to :admin_root
    end 
  end
end
