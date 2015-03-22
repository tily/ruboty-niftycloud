# Ruboty::Niftycloud

Manage NIFTYCloud via Ruboty

## Install

```
# Gemfile
gem "ruboty-niftycloud"
```

## Usage

```
@ruboty niftycloud account list                       - list accounts
@ruboty niftycloud account switch <account or number> - switch to account
```

## ENV

```
NIFTYCLOUD_ACCOUNTS                           - accounts to use (separated by comma)
NIFTYCLOUD_DEFAULT_ACCOUNT                    - default account
NIFTYCLOUD_ACCOUNT_ABC12345_DESCRIPTION       - account's description
NIFTYCLOUD_ACCOUNT_ABC00001_ACCESS_KEY_ID     - account's access key id
NIFTYCLOUD_ACCOUNT_ABC00001_SECRET_ACCESS_KEY - account's secret access key
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruboty-niftycloud/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
