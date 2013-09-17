json.array!(@cels) do |cel|
  json.extract! cel, :eventtype, :eventtime, :userdeftype, :cid_name, :cid_num, :cid_ani, :cid_rdnis, :cid_dnid, :exten, :context, :channame, :appname, :appdata, :amaflags, :accountcode, :peeraccount, :uniqueid, :linkedid, :userfield, :peer
  json.url cel_url(cel, format: :json)
end
