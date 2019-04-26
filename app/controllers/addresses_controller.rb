class AddressesController < ApplicationController

	def index
    @addresses = Address.page(params[:page]).per(params[:per_page]).order("created_at DESC")
	end

	def new
		@address = Address.new
	end

	def create
		@address = Address.new(address_params)

		if @address.save
			redirect_to @address
		else
			render 'new'
		end
	end

	def show
		@address = Address.find(params[:id])
	end

	def update
		@address = Address.find(params[:id])

		if @address.update(address_params)
			redirect_to @address
		else
			render 'edit'
		end
	end

	def edit
		@address = Address.find(params[:id])
	end

	def destroy
		@address = Address.find(params[:id])
		@address.destroy

		redirect_to addresses_path
	end

	private def address_params
		params.require(:address).permit(:company, :title, :street_name, :city, :country, :postal_code, :phone_number)
	end
end
