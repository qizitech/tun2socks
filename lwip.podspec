
Pod::Spec.new do |s|

  s.name     = 'lwip'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'lwip internal use'
  s.homepage = 'https://github.com/qizitech/tun2socks'
  s.author   = { 'cuzv' => '' }
  s.source   = { :git => 'https://github.com/qizitech/tun2socks.git',
                 :tag => "#{s.version}" }

  s.description = 'lwip internal use for proxy module' 

  s.requires_arc   = true

  s.preserve_paths = 'README.md'

  s.ios.deployment_target     = '8.0'
  s.osx.deployment_target     = '10.10'
  
  
  private_header_files = ['lwip/**/*.h']
  
  source_files = [
                 'lwip/src/core/ipv4/ip.c',
                 'lwip/src/core/ipv4/ip_addr.c',                 
                 'lwip/src/core/sys.c',
                 'lwip/src/core/tcp.c',
                 'lwip/src/darwin/src/sys_arch.c',
                 'lwip/src/core/raw.c',
                 'lwip/src/core/netif.c',
                 'lwip/src/darwin/src/compat.c',
                 'lwip/src/core/memp.c',
                 'lwip/src/core/ipv4/inet.c',
                 'lwip/src/core/tcp_in.c',
                 'lwip/src/core/timers.c',
                 'lwip/src/core/ipv4/inet_chksum.c',
                 'lwip/src/core/udp.c',
                 'lwip/src/core/init.c',
                 'lwip/src/core/pbuf.c',
                 'lwip/src/core/ipv4/ip_frag.c',
                 'lwip/src/core/tcp_out.c',
                 'lwip/src/core/mem.c',
                 'lwip/src/api/err.c',
                 'lwip/src/core/def.c'
                 ]
  
  s.source_files = source_files + private_header_files
  s.public_header_files = 'lwip/lwip.h'
  s.header_mappings_dir = 'lwip'
end
