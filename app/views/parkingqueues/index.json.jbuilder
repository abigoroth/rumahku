json.set! :data do
  json.array! @parkingqueues do |parkingqueue|
    json.partial! 'parkingqueues/parkingqueue', parkingqueue: parkingqueue
    json.url  "
              #{link_to 'Show', parkingqueue }
              #{link_to 'Edit', edit_parkingqueue_path(parkingqueue)}
              #{link_to 'Destroy', parkingqueue, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end