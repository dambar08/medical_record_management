class NewsletterSubscriptionsController < ApplicationController
  allow_unauthenticated_access only: %i[ success create new unsubscribe ]

  # GET /newsletter_subscriptions/new
  def new
    @newsletter_subscription = NewsletterSubscription.new
  end

  # GET /newsletter_subscriptions/success or /newsletter_subscriptions/sucess.json
  def success
  end

  # POST /newsletter_subscriptions or /newsletter_subscriptions.json
  def create
    @newsletter_subscription = NewsletterSubscription.new(newsletter_subscription_params)

    respond_to do |format|
      if @newsletter_subscription.save
        format.html { redirect_to :success }
        format.json { render :success, status: :created, location: @newsletter_subscription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletter_subscriptions/1 or /newsletter_subscriptions/1.json
  def unsubscribe
    verified_params = Rails.application.message_verifier(:unsubscribe).verify(params[:ut])

    if verified_params[:expires_at] > Time.current
      newsletter_subscription = NewsletterSubscription.find_by(email: verified_params[:email])
      not_found and return unless newsletter_subscription
      newsletter_subscription.destroy!
      respond_to do |format|
        format.html { redirect_to newsletter_subscriptions_path, status: :see_other }
        format.json { head :no_content }
      end
    else
      render "invalid_token"
    end
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    not_found
  end

  private
    def newsletter_subscription_params
      params.fetch(:newsletter_subscription, {}).permit(:email)
    end
end
