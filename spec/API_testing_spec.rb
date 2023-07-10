require "API_testing"

RSpec.describe TimeError do
  it "returns difference between server time and now" do
    fake_request = double :request
    expect(fake_request).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"86.9.185.177","datetime":"2023-07-09T22:31:43.959612+01:00","day_of_week":0,"day_of_year":190,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1688938303,"utc_datetime":"2023-07-09T21:31:43.959612+00:00","utc_offset":"+01:00","week_number":27}')
    time = Time.new(2023, 7, 9, 22, 31, 43)
    time_error = TimeError.new(fake_request)

    expect(time_error.error(time)).to eq 0.959612
  end 
end