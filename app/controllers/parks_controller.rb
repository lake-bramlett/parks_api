class ParksController < ApplicationController
  def index
    @state = State.find(params[:state_id])
    @parks = @state.parks.all
    json_response(@parks)
  end

  def show
    @state = State.find(params[:state_id])
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @state = State.find(params[:state_id])
    @park = @state.parks.create!(park_params)
    json_response(@park)
    render status: 200, json: {
     message: "This park has been created."
     }
  end

  def update
    @state = State.find(params[:state_id])
    @park = Park.find(params[:id])
    @state.parks.update(park_params)
    render status: 200, json: {
     message: "This park has been updated successfully."
     }
  end

  def destroy
    @state = State.find(params[:state_id])
    @park = Park.find(params[:id])
    @park.destroy
    render status: 200, json: {
     message: "This park has been destroyed."
     }
  end

  def random
    @park = Park.random
    json_response(@park)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def park_params
    params.permit(:name, :park_ranger, :open)
  end
end
