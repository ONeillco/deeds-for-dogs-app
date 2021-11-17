class DogsController < ApplicationController
    get "/dogs" do 

    Dog.all.to_json(include: [deeds: {only: [:id, :action]}], except: [:created_at, :updated_at])
    end
  
    get "/dogs/:id" do
      find_dog
      dog_to_json
    end
  
  
    post "/dogs" do
      @dog = Dog.new(params)
      if @dog.save
  
        dog_to_json
      else
        dog_error_messages
      end
    end
  
    patch "/dogs/:id" do
      find_dog
      if @dog.update(params)
        dog_to_json
      else
        dog_error_messages
      end
    end
  
    delete "/dogs/:id" do
      find_dog
      if @dog
        @dog.destroy
        @dog.to_json
      else
        { errors: ["Dog Not Found"] }.to_json
      end
    end
  
    private
      def find_dog
        @dog = Dog.find_by_id(params["id"])
      end
  
      def dog_to_json
        @dog.to_json(include: [:deeds])
      end
  
      def dog_error_messages
        { errors: @dog.errors.full_message }.to_json
      end
  end