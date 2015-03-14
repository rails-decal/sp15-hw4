class DogsController < ApplicationController
    def home
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new #Creates an empty user object.
    end

    def show
        @dogs = Dog.find(params[:id]) # Query for the dog with the id that is in params
    end

    def new
        @dog = Dog.create(dog_params)
        if @dog.save #If saving the dog was successful
          redirect_to @dog #Go to the show view of the dog
        else
          render "new" #Go to the new view for the dog
        end
    end

    private

    def dog_params
      params.require(:dog).permit(:name, :age)
    end
end
