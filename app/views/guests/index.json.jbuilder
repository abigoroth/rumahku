json.set! :data do
  json.array! @guests do |guest|
    json.partial! 'guests/guest', guest: guest
    json.url  "
              #{link_to 'Show', guest }
              #{link_to 'Edit', edit_guest_path(guest)}
              #{link_to 'Destroy', guest, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end