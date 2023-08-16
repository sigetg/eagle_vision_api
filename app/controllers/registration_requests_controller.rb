class RegistrationRequestsController < ApplicationController
  before_action :set_registration_request, only: %i[ show update destroy ]

  # GET /registration_requests
  def index
    if params[:person_id]
      @registration_requests = RegistrationRequest.where(person_id: params[:person_id])
    else
      @registration_requests = RegistrationRequest.all
    end

    render json: @registration_requests
  end

  # GET /registration_requests/1
  def show
    render json: @registration_request
  end

  # POST /registration_requests
  def create
    @registration_request = RegistrationRequest.new(registration_request_params)

    if @registration_request.save
      render json: @registration_request, status: :created, location: @registration_request
    else
      render json: @registration_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /registration_requests/1
  def update
    if @registration_request.update(registration_request_params)
      render json: @registration_request
    else
      render json: @registration_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registration_requests/1
  def destroy
    @registration_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_request
      @registration_request = RegistrationRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registration_request_params
      params.require(:registration_request).permit(:typeKey, :stateKey, :effectiveDate, :expirationDate, :name, :descr, :person_id, :term_id, :submittedDate, :processResults, :itemStudentIds, :itemStudentPopulationId, :meta, :id, :updatedAt, :createdAt)
    end
end
