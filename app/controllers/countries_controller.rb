class CountriesController < ApplicationController
    skip_before_action :authorized, only: [:show]
    # this method takes in a country nacode and returns the proper table entry
    def show
        country = Country.find_by(code: params[:code])
        render json: country
    end

end
