json.set! :data do
  json.array! @clusters do |cluster|
    json.partial! 'clusters/cluster', cluster: cluster
    json.url  "
              #{link_to 'Show', cluster }
              #{link_to 'Edit', edit_cluster_path(cluster)}
              #{link_to 'Destroy', cluster, method: :delete, data: { confirm: 'Are you sure?' }}
              "
  end
end