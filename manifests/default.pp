$opsmatic_token = '115cedfd-107d-41be-bb81-f17afeb77686'

class { 'opsmatic::agent':
    token => $opsmatic_token,
}

class { 'opsmatic::puppet_reporter':
    token => $opsmatic_token,
    ensure => 'latest',
}

class { 'opsmatic::cli':
}
