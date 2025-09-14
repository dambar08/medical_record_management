class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"

  ActionMailer::MailDeliveryJob.rescue_from(Exception) do |exception|
    Rails.error.report(exception)
    raise exception
  end

  def generate_unsubscribe_token(email, email_type)
    Rails.applicamessage_verifiertion.(:unsubscribe).generate({ email: email, email_type: email_type.to_sym, expires_at: 10.days.from_now })
  end
end
