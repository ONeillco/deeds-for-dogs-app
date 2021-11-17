class DeedsController < ApplicationController
    get "/deeds" do 

    Deed.all.to_json(include: [dog: {only: [:id, :name]}], except: [:created_at, :updated_at])
    end

    get "/dogs/:dog_id/deeds" do
      find_dog
      @dog.deeds.to_json(include: [:dog])
    end
  
    
  get "/deeds/:id" do
    find_deed
    deed_to_json
    end
  
  
    post "/dogs/:dog_id/deeds" do
      find_dog
      @deed = @dog.deeds.build(params)
      if @deed.save
  
        deed_to_json
      else
        deed_error_messages
      end
    end
  
    patch "/deeds/:id" do
      find_deed
      if @deed.update(params)
        deed_to_json
      else
        deed_error_messages
      end
    end
  
    delete "/deeds/:id" do
      find_deed
      if @deed
        @deed.destroy
        @deed.to_json
      else
        { errors: ["Deed Not Found"] }.to_json
      end
    end

    private
    def find_deed
      @deed = Deed.find_by_id(params["id"])
    end

    def find_dog
      @dog = Dog.find_by_id(params["dog_id"])
    end

    def deed_to_json
      @deed.to_json(include: [:dog])
    end

    def deed_error_messages
      { errors: @deed.errors.full_message }.to_json
    end
  end



  