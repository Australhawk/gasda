class TeamsController < ApplicationController
  def create
    if params[:team]
      @team = Team.create(team_parameters)
      
      if @team.save
        @member = TeamMember.create(:user_id => current_user.id, :team_id => @team.id, :role_id => 1)
        @member.save
        flash[:notice]= 'Saved'
      else
        flash[:notice]= 'Error '
      end
    end
    redirect_to ui_path
  end
  def team_parameters
    params.require(:team).permit(:game_id, :name, :description, :tag);
  end
end