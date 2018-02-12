class MembersController < ApplicationController
  def new
    @home = Home.find_by_id!(params[:home_id])
    @member = Member.new
  end

  def create
    @home = Home.find_by_id!(params[:home_id])
    form_params = params.require(:member).permit(:username, :password,
                                                 :display_name, :email,
                                                 :terms_of_service)
    @member = Member.new form_params.merge({ home_id: params[:home_id] })

    @member.username.downcase!

    if @member.save
      render plain: "Success"
    else
      flash.now.alert = @member.errors.full_messages
      render :new # back to "new member" page
    end
  end
end
