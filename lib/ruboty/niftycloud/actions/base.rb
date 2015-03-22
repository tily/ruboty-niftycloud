module Ruboty
  module Niftycloud
    module Actions
      class Base
        NAMESPACE = "niftycloud"

        attr_reader :message

        def initialize(message)
          @message = message
        end

        def accounts
          ENV["NIFTYCLOUD_ACCOUNTS"].split(",").map do |account|
            {
              name: account,
              description: ENV["NIFTYCLOUD_ACCOUNT_#{account}_DESCRIPTION"],
              access_key_id: ENV["NIFTYCLOUD_ACCOUNT_#{account}_ACCESS_KEY_ID"],
              secret_access_key: ENV["NIFTYCLOUD_ACCOUNT_#{account}_SECRET_ACCESS_KEY"],
            }
          end
        end

        def current_account(account=nil)
          message.robot.brain.data[NAMESPACE] ||= {}
          if account
            message.robot.brain.data[NAMESPACE]["current_account"] = account
          else
            name = message.robot.brain.data[NAMESPACE]["current_account"] || ENV["NIFTYCLOUD_DEFAULT_ACCOUNT"]
            accounts.find {|account| account[:name] == name }
          end
        end
      end
    end
  end
end
