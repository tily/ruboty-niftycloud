module Ruboty
  module Niftycloud
    module Actions
      class ComputingLoadBalancerShow < Base
        def call
          load_balancer = computing.load_balancers.find {|load_balancer| load_balancer['LoadBalancerName'] == message[:load_balancer_name] }
          load_balancer.each do |k, v|
            message.reply "#{k}: #{v}"
          end
        end
      end
    end
  end
end
