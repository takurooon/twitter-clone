class PostMailer < ApplicationMailer

  def post_mail(post)
    @post = post
    @user_email = @post.user.email
    mail to: @user_email, subject: "ぼやき確認メール"
  end

end
