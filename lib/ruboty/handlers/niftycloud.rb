p 'handl'
module Ruboty
  module Handlers
    class Niftycloud < Base
      on(
        /niftycloud account list/,
        name: 'account_list',
        description: 'list niftycloud accounts',
      )

      on(
        /niftycloud account use (?<target>.+)/,
        name: 'account_use',
        description: 'use niftycloud account',
      )

      def account_list(message)
        Ruboty::Niftycloud::Actions::AccountList.new(message).call
      end

      def account_use(message)
        Ruboty::Niftycloud::Actions::AccountUse.new(message).call
      end
    end
  end
end
