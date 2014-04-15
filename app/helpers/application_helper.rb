module ApplicationHelper
	def gravatar_url(user,size=80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
  def cp(path)
  "current" if current_page?(path)
  end
end
