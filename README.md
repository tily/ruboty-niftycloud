# Ruboty::Niftycloud

Manage NIFTYCloud via Ruboty

## Install

```
# Gemfile
gem "ruboty-niftycloud"
```

## Usage

```
@ruboty niftycloud account list                                      - list accounts
@ruboty niftycloud account use <account or number>                   - use account
@ruboty niftycloud computing region list                             - list computing regions
@ruboty niftycloud computing region use                              - use computing region
@ruboty niftycloud computing availability zone list                  - list computing availability zones
@ruboty niftycloud computing instance list                           - list computing instances
@ruboty niftycloud computing instance show <instance_id>             - show computing instance
@ruboty niftycloud computing key_pair list                           - list computing key pairs
@ruboty niftycloud computing security group list                     - list computing security groups
@ruboty niftycloud computing security group show <group name>        - show computing security group
@ruboty niftycloud computing volume list                             - list computing volumes
@ruboty niftycloud computing volume show <volume id>                 - show computing volume
@ruboty niftycloud computing load_balancer list                      - list computing load balancers
@ruboty niftycloud computing load_balancer show <load balancer name> - show computing load balancer
@ruboty niftycloud computing address list                            - list computing addresses
@ruboty niftycloud computing image list                              - list computing images
@ruboty niftycloud computing image show <image id>                   - show computing image
@ruboty niftycloud computing ssl certificate list                    - list computing ssl certificates
@ruboty niftycloud computing ssl certificate show <fqdn id>          - show computing ssl certificate
@ruboty niftycloud rdb db_instance list                              - list rdb db instances
@ruboty niftycloud rdb db_instance show <db_instance_id>             - show rdb db instance
```

## ENV

```
NIFTYCLOUD_ACCOUNTS                           - accounts to use (separated by comma)
NIFTYCLOUD_DEFAULT_ACCOUNT                    - default account
NIFTYCLOUD_ACCOUNT_ABC12345_DESCRIPTION       - account's description
NIFTYCLOUD_ACCOUNT_ABC12345_ACCESS_KEY_ID     - account's access key id
NIFTYCLOUD_ACCOUNT_ABC12345_SECRET_ACCESS_KEY - account's secret access key
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruboty-niftycloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
