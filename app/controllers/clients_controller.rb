class ClientsController < ApplicationController

  def index
    render json: Client.all
  end

  def create
    new_client = Client.create(client_params)
    render json: new_client, status: :created
  end

  def update
    client = find_client
    client.update!(client_params)
    render json: client, status: :accepted
  end

  def show
    client = find_client
    render json: client, status: 200
  end

  private

  def find_client
    Client.find(params[:id])
  end

  def client_params
    params.permit(:name, :age)
  end

end
