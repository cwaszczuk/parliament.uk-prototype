module People
  class PartiesController < ApplicationController
    before_action :data_check, :build_request

    ROUTE_MAP = {
      index:   proc { |params| ParliamentHelper.parliament_request.people(params[:person_id]).parties },
      current: proc { |params| ParliamentHelper.parliament_request.people(params[:person_id]).parties.current }
    }.freeze

    def index
      @person, @party_memberships = RequestHelper.filter_response_data(
        @request,
        'http://id.ukpds.org/schema/Person',
        'http://id.ukpds.org/schema/PartyMembership'
      )

      @person = @person.first
      @party_memberships = @party_memberships.reverse_sort_by(:start_date)
    end

    def current
      @person, @party = RequestHelper.filter_response_data(
        @request,
        'http://id.ukpds.org/schema/Person',
        'http://id.ukpds.org/schema/Party'
      )

      @person = @person.first
      @party = @party.first
    end
  end
end
