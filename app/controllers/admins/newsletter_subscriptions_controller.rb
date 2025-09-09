class Admins::NewsletterSubscriptionsController < ApplicationController
  before_action :set_newsletter_subscription, only: %i[ show edit update destroy ]

  # GET /admins/newsletter_subscriptions or /admins/newsletter_subscriptions.json
  def index
    @newsletter_subscriptions = NewsletterSubscription.all
  end

  # GET /admins/newsletter_subscriptions/1 or /admins/newsletter_subscriptions/1.json
  def show
  end

  # GET /admins/newsletter_subscriptions/new
  def new
    @newsletter_subscription = NewsletterSubscription.new
  end

  # GET /admins/newsletter_subscriptions/1/edit
  def edit
  end

  # POST /admins/newsletter_subscriptions or /admins/newsletter_subscriptions.json
  def create
    @newsletter_subscription = NewsletterSubscription.new(newsletter_subscription_params)

    respond_to do |format|
      if @newsletter_subscription.save
        format.html { redirect_to [ :admins, @newsletter_subscription ], notice: "Newsletter subscription was successfully created." }
        format.json { render :show, status: :created, location: @newsletter_subscription }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/newsletter_subscriptions/1 or /admins/newsletter_subscriptions/1.json
  def update
    respond_to do |format|
      if @newsletter_subscription.update(newsletter_subscription_params)
        format.html { redirect_to [ :admins, @newsletter_subscription ], notice: "Newsletter subscription was successfully updated." }
        format.json { render :show, status: :ok, location: @newsletter_subscription }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/newsletter_subscriptions/1 or /admins/newsletter_subscriptions/1.json
  def destroy
    @newsletter_subscription.destroy!

    respond_to do |format|
      format.html { redirect_to admins_newsletter_subscriptions_path, status: :see_other, notice: "Newsletter subscription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter_subscription
      @newsletter_subscription = NewsletterSubscription.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def newsletter_subscription_params
      params.fetch(:newsletter_subscription, {})
    end
end
