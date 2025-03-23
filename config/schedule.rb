every 10.minutes do
  runner "UpdateFreightStatusJob.perform_later"
end