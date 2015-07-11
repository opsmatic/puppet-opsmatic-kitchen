@test "test facter interval is set correctly" {
  [ $(cat /etc/opsmatic-agent.conf | grep facter_interval_sec | awk '{print $3}' | xargs) = "15" ]
  # verify that it is not in quotes
  [ $(cat /etc/opsmatic-agent.conf | grep facter_interval_sec | awk '{print $3}' | xargs | grep "\"15\"" | wc -l) = "0" ]
}
