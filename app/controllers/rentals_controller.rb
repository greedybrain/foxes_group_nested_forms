class RentalsController < ApplicationController
     
     def show 
          @rental = Rental.find(params[:id])
     end

     def new 
          @rental = Rental.new
          @customer = Customer.new
     end

     def create 
          @rental = Rental.new(rental_params)
          # binding.pry
          if @rental.save 
               redirect_to rental_path(@rental)
          else
               render :new
          end 
     end


     private 

     def rental_params
          params.require(:rental).permit(:reservation, {customer_attributes: [:name]}, :boat_id)
     end

end
