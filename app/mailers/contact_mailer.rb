class ContactMailer < ApplicationMailer
  ADMIN_EMAIL = "spendtime.info@gmail.com"

  def user_email(contact)
    @contact = contact
    @name = contact.name.presence || contact.email
    subject = "【おうち時間〜spendtime〜】お問い合わせを受付いたしました"

    mail(to: contact.email, subject: subject)
  end

  def admin_email(contact)
    @contact = contact
    @name = contact.name.presence || contact.email
    subject = "【おうち時間〜spendtime〜】お問い合わせがありました"

    mail(to: ADMIN_EMAIL, subject: subject)
  end
end
