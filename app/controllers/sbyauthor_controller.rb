class SbyauthorController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        bauthor = Bookstck.find_by('bookauthor': params[:bookauthor])
        if (bauthor.nil?)
            render json: "Book by this author is not available"
        else 
            render json: bauthor
        end
    end
end
