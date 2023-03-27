class Api::V1::GreetingsController < ApiController
  def index
    @greetings = Greeting.all
    render json: { greetings: @greetings.map { |greeting| greeting.message }  }
  end
end