SCHEDULER.every '5s', :first_in => 0 do |job|
  send_event('hotness', { value: rand(100) })
end