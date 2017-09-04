#
# Be sure to run `pod lib lint PhoClient.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "PhoClient"
    s.version          = "1.1.1"

    s.summary          = "Social Graph API"
    s.description      = <<-DESC
                         Pho Networks REST API
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/pho-clients/objc"
    s.license      = "Apache License, Version 2.0"
    s.source       = { :git => "https://github.com/pho-clients/objc.git", :tag => "#{s.version}" }
    s.author       = { "Emre Sokullu" => "emre@phonetworks.org" }

    s.source_files = 'PhoClient/**/*.{m,h}'
    s.public_header_files = 'PhoClient/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.4'
    s.dependency 'ISO8601', '~> 0.5'
end

