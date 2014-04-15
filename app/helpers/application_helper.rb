module ApplicationHelper
	def gravatar_url(user,size=80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
  def cp(path)
	  if current_page?(path)
	  	"current"
		elsif path.include?(params[:controller])
			"current"
		end 
	end
end
