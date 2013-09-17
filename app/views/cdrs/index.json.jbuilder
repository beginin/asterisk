json.array!(@cdrs) do |cdr|
  json.extract! cdr, :calldate, :calldate, :src, :dst, :dcontext, :channel, :dstchannel, :lastapp, :lastdata, :duration, :billsec, :disposition, :amaflags, :accountcode, :uniqueid, :userfield, :peeraccount, :linkedid, :sequence
  json.url cdr_url(cdr, format: :json)
end
