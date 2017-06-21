module Parliaments
  class HousesController < ApplicationController
    def index
      parliament_id = params[:parliament_id]

      @parliament, @houses = RequestHelper.filter_response_data(
      parliament_request.parliaments(parliament_id).houses,
      'http://id.ukpds.org/schema/ParliamentPeriod',
      'http://id.ukpds.org/schema/House'
      )

      @parliament = @parliament.first
      @houses     = @houses.sort_by(:name)
    end

    def show
      parliament_id = params[:parliament_id]
      house_id      = params[:house_id]

      @parliament, @house = RequestHelper.filter_response_data(
      parliament_request.parliaments(parliament_id).houses(house_id),
      'http://id.ukpds.org/schema/ParliamentPeriod',
      'http://id.ukpds.org/schema/House'
      )

      raise ActionController::RoutingError, 'Not Found' if @house.empty?

      @parliament = @parliament.first
      @house      = @house.first
    end
  end
end