class Api::DishesController <
	ApplicationController

	def index
		# dish1 = Dish.new
		# dish1.name = "cakepudding"
		# dish1.image_url = "http://www.technobuffalo.com/wp-content/uploads/2014/04/fast-food.jpg"
		# dish1.save
		@dishes = Dish.all
		render json: @dishes, status: 200

		
	end 

end 