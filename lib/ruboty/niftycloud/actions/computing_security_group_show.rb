module Ruboty
  module Niftycloud
    module Actions
      class ComputingSecurityGroupShow < Base
        def call
          security_group = computing.security_groups.find {|security_group| security_group['groupName'] == message[:group_name] }
          security_group.each do |k, v|
            message.reply "#{k}: #{v}"
          end
        end
      end
    end
  end
end
