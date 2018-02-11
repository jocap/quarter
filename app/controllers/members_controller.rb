class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new params.require(:member)
                           .permit(:home, :username, :password, :display_name,
                                   :email, :terms_of_service)

    @member.username.downcase!

    if @member.save
      flash[:notice] = 'Account created successfully!' # TODO: i18n
      redirect_to home_path
    else
      flash.now.alert = @member.errors.full_messages
      render :new # back to "new member" page
    end
  end
end
