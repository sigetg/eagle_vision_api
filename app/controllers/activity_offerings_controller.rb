class ActivityOfferingsController < ApplicationController
  before_action :set_activity_offering, only: %i[ show update destroy ]

  # GET /activity_offerings
  def index
    course_offering = CourseOffering.find(params[:course_offering_id])
    @activity_offerings = course_offering.activity_offerings

    render json: @activity_offerings
  end

  # GET /activity_offerings/1
  def show
    render json: @activity_offering
  end

  # POST /activity_offerings
  def create
    @activity_offering = ActivityOffering.new(activity_offering_params)

    if @activity_offering.save
      render json: @activity_offering, status: :created, location: @activity_offering
    else
      render json: @activity_offering.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /activity_offerings/1
  def update
    if @activity_offering.update(activity_offering_params)
      render json: @activity_offering
    else
      render json: @activity_offering.errors, status: :unprocessable_entity
    end
  end

  # DELETE /activity_offerings/1
  def destroy
    @activity_offering.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_offering
      @activity_offering = ActivityOffering.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def activity_offering_params
      params.require(:activity_offering).permit(:typeKey, :stateKey, :name, :descr, :effectiveDate, :expirationDate, :formatOfferingId, :formatOfferingName, :activityId, :term_id, :termCode, :activityCode, :scheduleIds, :isHonorsOffering, :instructors, :weeklyInclassContactHours, :weeklyOutofClassHours, :weeklyTotalContactHours, :maximumEnrollment, :minimumEnrollment, :isEvaluated, :activityOfferingUrl, :course_offering_id, :courseOfferingTitle, :courseOfferingCode, :unitsDeploymentOrgIds, :requisiteIds, :coRequisiteIds, :restrictionIds, :meta)
    end
end
