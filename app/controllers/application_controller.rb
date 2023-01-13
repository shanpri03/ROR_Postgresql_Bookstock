class ApplicationController < ActionController::Base
    def index
        render html: "Book stock Management"
    end

end
