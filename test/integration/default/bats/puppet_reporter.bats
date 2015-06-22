@test "opsmatic-puppet-reporter is running with a token configured" {
  result=`cat /proc/$(pidof opsmatic-puppet-reporter-bin)/environ |  xargs --null -L1 | grep TOKEN | wc -l`
  [ "$result" -eq "1" ]
}
