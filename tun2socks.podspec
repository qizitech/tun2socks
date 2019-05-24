
Pod::Spec.new do |s|

  s.name     = 'tun2socks'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'tun2socks internal use.'
  s.homepage = 'https://github.com/qizitech/tun2socks'
  s.author   = { 'cuzv' => '' }
  s.source   = { :git => 'https://github.com/qizitech/tun2socks.git',
                 :tag => "#{s.version}" }

  s.description = 'tun2socks internal use for proxy module'

  s.requires_arc   = true

  s.preserve_paths = 'README.md'

  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.10'
  s.swift_version = '5.0'

  s.dependency 'lwip'
  s.source_files = 'tun2socks/*.{swift}', 'tun2socks-ios/*.{h}'
  s.public_header_files = 'tun2socks-ios/*.{h}'
end
