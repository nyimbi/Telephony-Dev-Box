name 'asterisk'
description 'Installs Asterisk to run Adhearsion apps'
run_list "recipe[asterisk]",
  "recipe[asterisk::unimrcp]"

override_attributes asterisk: {
  version: '12.0.0',
  checksum: '0efc4507d5384447011fd1148eaaae2d06f70b04c736b4c73fbb9941a9440a2b',
  sip: {
    context: 'adhearsion'
  },
  manager: {
    ip_address: '0.0.0.0',
    permit: '0.0.0.0/0.0.0.0',
    read_perms: %w{all},
    write_perms: %w{all}
  }
}
