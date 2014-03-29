module ApplicationHelper
	def gravatar_url(user,size=80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
  def get_username(user)
    if user.username.nil?
      user.email
    else
      user.username.capitalize
    end
  end
  def get_team_role(user,team)
    user.team_members.where(team_id: team.id).take.role.name
  end
end
