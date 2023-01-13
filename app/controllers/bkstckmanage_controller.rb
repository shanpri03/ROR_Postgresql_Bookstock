class BkstckmanageController < ApplicationController
    skip_before_action :verify_authenticity_token
    
   def index 
    render json: Bookstck.all
end

def show
    puts params[:id]
    h = Bookstck.exists?(params[:id])
    if h
    h = Bookstck.find(params[:id])
    render json: h
    else
    render html:"No data found"     
   end

end

 def create
    v=!params[:bookname].empty?
    if(v)
     Bookstck.create('bookname': params[:bookname], 'bookauthor': params[:bookauthor], 'bookquantity': params[:bookquantity],'bookprice': params[:bookprice], 'pubyear': params[:pubyear])
     puts p
     render json: "Data added"
    else
     render json: "Data not added"
      end
 
      def update
        b = Bookstck.find(params[:id].to_i)
        b.update('bookname': params[:bookname], 'bookauthor': params[:bookauthor], 'bookquantity': params[:bookquantity],'bookprice': params[:bookprice], 'pubyear': params[:pubyear])
        render json: "Data Updated"
    end

    def destroy
        a = Bookstck.find(params[:id].to_i)
        a.destroy
        render json: "Data deleted"
    end

 end
end
