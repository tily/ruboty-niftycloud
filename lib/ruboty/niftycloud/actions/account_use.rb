module Ruboty
  module Niftycloud
    module Actions
      class AccountUse < Base
        def call
          target = message[:target]

          if target.match(/^\d+$/)
            account = accounts[target.to_i]
          else
            account = accounts.find {|account| account[:name] == target }
          end

          if !account
            return message.reply("Error: account not found")
          end 

          current_account(account[:name])
          message.reply("using: #{account[:name]}")
        end
      end
    end
  end
end
