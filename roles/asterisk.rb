name 'asterisk'
description 'Installs Asterisk to run Adhearsion apps'
run_list "recipe[asterisk]",
  "recipe[asterisk::unimrcp]"

override_attributes asterisk: {
  version: '12.0.0-beta2',
  checksum: "dbc1c06ba96127473f96f3af808a60db1654bd06cff907bbb11a09e443b90f4b",
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
