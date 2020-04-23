ssh_authorized_key { "master_root" :
        key => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDqzQHfIv+mJv7iYKa8HcWgHDJtvMgb5pb3gn/9N+ms1zOGp2r/lfTeZbTPDA7cZ6hvJ7xNJ0dJnoP/S5NHx+akBNtb3Qn+Vl0QF+FbcB39V6WJpnoC84Y6SKi4UkEqHTPF/6SqQ+tP+XIe2kZQmTHJv+wFr1vr3hiIwRZ6WoJhiwrEHC/UuAqpcDlrdC2QbodeKZ/Ozcn3etwwRWVXm99PpVQO3x1yduQ1FI4fLWSaoDkG3NjRpp0GvxBmpTznHh3yRmtIRUvpURKOOEERWfRcHay0EFce/OkCr70LVNF3eWeEVpP4eCaZDrgc5acNFuOKuZqy+0g1p8WLQkE/yAER",
        user => root,
        ensure => present,
        type => rsa,
}

augeas { "sshd_config":
	context => "/files/etc/ssh/sshd_config",
	changes => [
		"set PermitRootLogin yes",
	],
}