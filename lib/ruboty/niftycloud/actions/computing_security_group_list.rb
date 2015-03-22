module Ruboty
  module Niftycloud
    module Actions
      class ComputingSecurityGroupList < Base
        def call
          computing.security_groups.each do |security_group|
            p security_group
          end
        end
      end
    end
  end
end
