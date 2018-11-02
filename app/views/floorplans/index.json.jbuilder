json.set! :data do
  json.array! @floorplans do |floorplan|
    json.partial! 'floorplans/floorplan', floorplan: floorplan
    json.url  "
              #{link_to 'Show', floorplan }
              #{link_to 'Edit', edit_floorplan_path(floorplan)}
              #{link_to 'Destroy', floorplan, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end