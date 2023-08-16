class RegistrationRequestItemsController < ApplicationController
  before_action :set_registration_request_item, only: %i[ show update destroy ]

  # GET /registration_request_items
  def index
    registration_request = RegistrationRequest.find(params[:registration_request_id])
    @registration_request_items = registration_request.registration_request_items
    # @registration_request_items = RegistrationRequestItem.all

    render json: @registration_request_items
  end

  # GET /registration_request_items/1
  def show
    render json: @registration_request_item
  end

  # POST /registration_request_items
  def create
    @registration_request_item = RegistrationRequestItem.new(registration_request_item_params)

    if @registration_request_item.save
      render json: @registration_request_item, status: :created, location: @registration_request_item
    else
      render json: @registration_request_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registration_request_items/1
  def update
    if @registration_request_item.update(registration_request_item_params)
      render json: @registration_request_item
    else
      render json: @registration_request_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registration_request_items/1
  def destroy
    @registration_request_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_request_item
      @registration_request_item = RegistrationRequestItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registration_request_item_params
      params.require(:registration_request_item).permit(:typeKey, :stateKey, :effectiveDate, :expirationDate, :name, :descr, :registration_request_id, :person_id, :requestedEffectiveDate, :existingRegistrationId, :existingActivityOfferingId, :preferredActivityOfferingIds, :preferredFormatOfferingIds, :preferredRegistrationGroupIds, :preferredCredits, :preferredGradingOptionIds, :processResults, :resultingRegistrationId, :courseWaitlistEntryId, :processingPriority, :lastAttendanceDate, :notificationDate, :meta, :activity_offering_id)
    end
end
