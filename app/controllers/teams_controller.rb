class TeamsController < ApplicationController
  def create
    if params[:team]
      Team.transaction do
        @team = Team.create(team_parameters)
        if @team.save
          @team.team_members.create(account_id: params[:team][:team_member][:account], role_id: 1)
          if @team.save
            flash[:notice]= 'Saved'
          else
            flash[:notice]= @team.errors.empty? ? "Error" : @team.errors.full_messages.to_sentence      
          end
        else
          flash[:notice]= @team.errors.empty? ? "Error" : @team.errors.full_messages.to_sentence      
        end
      end
    end
    redirect_to newteam_path
  end
  def team_parameters
    params.require(:team).permit(:game_id, :name, :description, :tag, team_member_atributtes: [:account, :role_id]);
  end
  
end