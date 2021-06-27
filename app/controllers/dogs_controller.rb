class DogsController < ApplicationController

  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    dog.save
    render json: dog
  end
end
