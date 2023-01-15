class SbynameController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        bname = Bookstck.find_by('bookname': params[:bookname])
        if (bname.nil?)
            render json: "This book is not available"
        else 
            render json: bname
        end
    end
end
