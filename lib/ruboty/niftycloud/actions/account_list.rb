module Ruboty
  module Niftycloud
    module Actions
      class AccountList < Base
        def call
          accounts.each_with_index do |account, i|
            message.reply("#{i} [#{account[:name] == current_account[:name] ? "*" : " "}] #{account[:name]} - #{account[:description]}")
          end
        end
      end
    end
  end
end
