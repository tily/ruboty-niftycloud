# Ruboty::Niftycloud

Manage NIFTYCloud via Ruboty

## Install

```
# Gemfile
gem "ruboty-niftycloud"
```

## Usage

```
@ruboty niftycloud account list                          - list accounts
@ruboty niftycloud account use <account or number>       - use account
@ruboty niftycloud computing region list                 - list computing regions
@ruboty niftycloud computing region use                  - use computing region
@ruboty niftycloud computing instance list               - list computing instances
@ruboty niftycloud computing instance show <instance_id> - show computing instance
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
