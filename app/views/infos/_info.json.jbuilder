json.extract! info, :id, :email, :name, :apartmentnum, :phonenumber, :owner, :password, :picture, :created_at, :updated_at
json.url info_url(info, format: :json)
