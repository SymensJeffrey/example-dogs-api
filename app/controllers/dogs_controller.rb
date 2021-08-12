class DogsController < ApplicationController

  def create
    if current_user
      dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id
      )
      dog.save
      render json: dog.as_json
    else
      render json: {message: "you have to be logged in to create a new dog profile"}
    end
  end

end
