json.extract! car, :id, :insider_car_image, :front_car_image, :profile_car_image, :marque, :modele, :color, :year, :distance, :description, :created_at, :updated_at
json.url car_url(car, format: :json)
