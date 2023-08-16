class CourseOfferingsController < ApplicationController
  before_action :set_course_offering, only: %i[ show update destroy ]

  # GET /course_offerings
  def index
    if params[:key]
      #Easy to add other fields to search, but not when courseCode is auto decapitalized and not recognized in ActiveRecord
      # Just add 'or courseCode LIKE ?' to see what I mean plus another params[:key]
      @course_offerings = CourseOffering.where("name LIKE ?", params[:key])
    else
      @course_offerings = CourseOffering.all
    end
    render json: @course_offerings
  end

  # GET /course_offerings/1
  def show
    render json: @course_offering
  end

  # POST /course_offerings
  def create
    @course_offering = CourseOffering.new(course_offering_params)

    if @course_offering.save
      render json: @course_offering, status: :created, location: @course_offering
    else
      render json: @course_offering.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_offerings/1
  def update
    if @course_offering.update(course_offering_params)
      render json: @course_offering
    else
      render json: @course_offering.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_offerings/1
  def destroy
    @course_offering.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_offering
      @course_offering = CourseOffering.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_offering_params
      params.require(:course_offering).permit(:typeKey, :stateKey, :effectiveDate, :expirationDate, :name, :descr, :courseId, :term_id, :courseCode, :courseOfferingCode, :subjectAreaId, :courseNumberSuffix, :courseOfferingTitle, :isHonorsOffering, :maximumEnrollment, :minimumEnrollment, :gradingOptionId, :studentRegistrationGradingOptionIds, :creditOptionId, :instructors, :unitsDeploymentOrgIds, :requisiteIds, :coRequisiteIds, :restrictionIds, :campusLocations, :isEvaluated, :courseOfferingUrl, :gradeRosterDefinitionId, :gradingOptionIds, :creditOptionIds, :meta)
    end
end
