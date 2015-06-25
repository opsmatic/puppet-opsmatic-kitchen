@test "rhel repo has gpgcheck on" {
  if [ -e /etc/lsb-release ]; then
    skip "Not on a centos-like system"
  fi
  # there should only one permutation of gpgcheck, and it should be set to 1
  export result=`grep -ri gpgcheck /etc/yum.repos.d/opsmatic_public* | grep "^gpgcheck=" | uniq -c`
  lc=`echo ${result} | wc -l`
  [ "${lc}" -eq "1" ]
  echo $(echo $result | cut -d "=" -f 2)
  [ `echo $result | cut -d "=" -f 2` -eq "1" ]
}

@test "rhel repo has repo_gpgcheck on" {
  if [ -e /etc/lsb-release ]; then
    skip "Not on a centos-like system"
  fi
  # there should only one permutation of repo_gpgcheck and it should be set to 1
  export result=`grep -ri repo_gpgcheck /etc/yum.repos.d/opsmatic_public* | grep "^repo_gpgcheck=" | uniq -c`
  lc=`echo ${result} | wc -l`
  [ "${lc}" -eq "1" ]
  echo $(echo $result | cut -d "=" -f 2)
  [ `echo $result | cut -d "=" -f 2` -eq "1" ]
}

@test "rhel repo has ssl_verify on" {
  if [ -e /etc/lsb-release ]; then
    skip "Not on a centos-like system"
  fi
  # there should only one permutation of sslverify and it should be set to 1
  export result=`grep -ri sslverify /etc/yum.repos.d/opsmatic_public* | grep "^sslverify=" | uniq -c`
  lc=`echo ${result} | wc -l`
  [ "${lc}" -eq "1" ]
  echo $(echo $result | cut -d "=" -f 2)
  [ `echo $result | cut -d "=" -f 2` -eq "1" ]
}
