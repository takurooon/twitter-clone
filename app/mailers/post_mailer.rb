class PostMailer < ApplicationMailer

  def post_mail(post)
    @post = post
    mail to: "mailaddress0726@icloud.com", subject: "お問い合わせの確認メール"
  end

end
