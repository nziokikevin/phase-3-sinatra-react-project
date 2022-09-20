class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # GET
  # /saccos
  # /vehicles
  # /owners
  # /drivers
  # /routes
  # /saccos/:id
  # /vehicles/:id
  # /owners/:id
  # /drivers/:id
  # /routes/:id

  # POST
  # /saccos
  # /vehicles
  # /owners
  # /drivers
  # /routes

  # DELETE
  # /saccos/:id
  # /vehicles/:id
  # /owners/:id
  # /drivers/:id
  # /routes/:id

  # PATCH
  # /saccos/:id - only the name
  # /vehicles/:id - the route, sacco, ownership
  # /owners/:id - ownership, name
  # /drivers/:id - name, route, vehicle
  # /routes/:id - 

#GET section
  get "/saccos" do
    all_saccos = Sacco.all
    all_saccos.to_json
  end
  
  get '/vehicles' do
    all_vehicles = Vehicle.all
    all_vehicles.to_json
  end

  get '/owners' do
    all_owners = Owner.all
    all_owners.to_json
  end

  get '/drivers' do
    all_drivers = Driver.all
    all_drivers.to_json(include: {vehicle: {only: [:plate_no]}})
  end

  get '/routes' do
    all_routes = Route.all
    all_routes.to_json
  end

  get '/saccos/:id' do
    single_sacco = Sacco.find(params[:id])
    single_sacco.to_json(only: [:name], 
      include: { vehicles: {only: [:plate_no], include: {routes: {only: [:name]}}}
    })
  end

  get '/vehicles/:id' do
    single_vehicle = Vehicle.find(params[:id])
    single_vehicle.to_json(only: [:plate_no, :model], 
      include: { owner: {only: [:name], include: {saccos: {only: [:name]}}}
    })
  end

  get '/owners/:id' do
    single_owner = Owner.find(params[:id])
    single_owner.to_json(only: [:name], 
    include: {vehicles: {only: [:plate_no]}})
  end

  get '/drivers/:id' do
    single_driver = Driver.find(params[:id])
    single_driver.to_json(only: [:name, :license_no, :identity_card_no],
    include: {vehicle: {only: [:plate_no, :model], include: {owner: {only: [:name]}}}})
  end

  get '/routes/:id' do
    single_route = Route.find(params[:id])
    single_route.to_json(only: [:name],
    include: {vehicles: {only: [:plate_no, :model], include: {drivers: {only: [:name]}}}})
  end

  # POST section
  post '/saccos' do
    create_sacco = Sacco.create(
      name: params[:name],
      description: params[:description]
    )
    create_sacco.to_json
  end

  post '/vehicles' do
    create_vehicle = Vehicle.create(
      plate_no: params[:plate_no],
      model: params[:model]
    )
    create_vehicle.to_json
  end

  post '/owners' do
    create_owner = Owner.create(
      name: params[:name]
    )
    create_owner.to_json
  end

  post '/drivers' do
    create_driver = Driver.create(
      name: params[:name],
      license_no: params[:license_no],
      identity_card_no: params[:identity_card_no]
    )
    create_driver.to_json
  end

  post '/routes' do
    create_route = Route.create(
      name: params[:name]
    )
    create_route.to_json
  end

  #PATCH requests
  patch '/drivers/:id' do
    update_driver = Driver.find(params[:id])
    update_driver.update(
      name: params[:name],
      license_no: params[:license_no]
    )
    
  end

  # DELETE section
  delete '/saccos/:id' do
    delete_sacco = Sacco.find(params[:id])
    delete_sacco.destroy
    delete_sacco.to_json
  end

  delete '/vehicles/:id' do
    delete_vehicle = Vehicle.find(params[:id])
    delete_sacco.destroy
    delete_sacco.to_json
  end

  delete '/owners/:id' do
    delete_owner = Owner.find(params[:id])
    delete_owner.destroy
    delete_owner.to_json
  end

  delete '/drivers/:id' do
    delete_driver = Driver.find(params[:id])
    delete_driver.destroy
    delete_driver.to_json
  end

  delete '/routes/:id' do
    delete_route = Route.find(params[:id])
    delete_route.destroy
    delete_route.to_json
  end


end
