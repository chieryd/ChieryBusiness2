

Pod::Spec.new do |s|

  s.name         = "ChieryBusiness2"
  s.version      = "0.0.6"
  s.summary      = "业务2"

  s.description  = <<-DESC
                    业务2
                    业务2
                   DESC

  s.homepage     = "https://github.com/chieryd/ChieryBusiness2"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
                    Copyright 2012
                    Permission is granted to...
                  LICENSE
                }
  s.author             = { "chieryw" => "chieryw@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/chieryd/ChieryBusiness2.git", :tag => "#{s.version}" }

  s.dependency "ChieryJumpHandleLib"
  s.dependency "ChieryConfigure"
  s.dependency "ChieryCommonKitLib"
  s.dependency "ChieryHomePageLib"
  s.dependency "ChieryVCControllerLib"
  s.source_files  = "ChieryBusiness2/**/*.{h,m}"

  s.public_header_files = "ChieryBusiness2/**/*.h"
  s.requires_arc = true

end
