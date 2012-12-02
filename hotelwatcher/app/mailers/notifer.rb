class Notifer < ActionMailer::Base

default from: "noreply@getmetrip.com", 
	return_path: "mailin@getmetrip.com"

	def price_alert()
  	# when 
  end

  # below is the snippet from SimpleBlog app  
  # def comment_notification(user, comment)
  # 	@comment = comment
  # 	@user = user
  # 	mail(to: user.email, subject: "A new comment")
  # 		format.html
  # 		format.text
  # 	end
  # end

end