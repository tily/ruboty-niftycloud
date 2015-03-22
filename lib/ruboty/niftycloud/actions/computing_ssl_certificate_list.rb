module Ruboty
  module Niftycloud
    module Actions
      class ComputingSslCertificateList < Base
        def call
          computing.ssl_certificates.each do |ssl_certificate|
            p ssl_certificate
          end
        end
      end
    end
  end
end
