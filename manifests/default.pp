$opsmatic_token = '115cedfd-107d-41be-bb81-f17afeb77686'

class { 'opsmatic::agent':
    token                    => $opsmatic_token,
    agent_simple_options_num => {
        'facter_interval_sec'         => 15,
    },
}

class { 'opsmatic::puppet_reporter':
    ensure => 'latest',
    token  => $opsmatic_token,
}

class { 'opsmatic::cli':
}
