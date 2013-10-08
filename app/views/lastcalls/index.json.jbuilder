json.array!(@lastcalls) do |lastcall|
  json.extract! lastcall, :extention, :tnumber
  json.url lastcall_url(lastcall, format: :json)
end
