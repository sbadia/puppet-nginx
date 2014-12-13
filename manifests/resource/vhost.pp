# define: nginx::resource::vhost
#
# This is a legacy resource that will be deprecated in v1.0.0
#
# Please add any additions to nginx::vhost
define nginx::resource::vhost (
  $ensure                       = undef,
  $listen_ip                    = undef,
  $listen_port                  = undef,
  $listen_options               = undef,
  $location_allow               = undef,
  $location_deny                = undef,
  $ipv6_enable                  = undef,
  $ipv6_listen_ip               = undef,
  $ipv6_listen_port             = undef,
  $ipv6_listen_options          = undef,
  $add_header                   = undef,
  $ssl                          = undef,
  $ssl_listen_option            = undef,
  $ssl_cert                     = undef,
  $ssl_dhparam                  = undef,
  $ssl_key                      = undef,
  $ssl_port                     = undef,
  $ssl_protocols                = undef,
  $ssl_ciphers                  = undef,
  $ssl_cache                    = undef,
  $ssl_stapling                 = undef,
  $ssl_stapling_file            = undef,
  $ssl_stapling_responder       = undef,
  $ssl_stapling_verify          = undef,
  $ssl_session_timeout          = undef,
  $ssl_trusted_cert             = undef,
  $spdy                         = undef,
  $proxy                        = undef,
  $proxy_redirect               = undef,
  $proxy_read_timeout           = undef,
  $proxy_connect_timeout        = undef,
  $proxy_set_header             = undef,
  $proxy_cache                  = undef,
  $proxy_cache_valid            = undef,
  $proxy_method                 = undef,
  $proxy_set_body               = undef,
  $resolver                     = undef,
  $fastcgi                      = undef,
  $fastcgi_params               = undef,
  $fastcgi_script               = undef,
  $index_files                  = undef,
  $autoindex                    = undef,
  $server_name                  = undef,
  $www_root                     = undef,
  $rewrite_www_to_non_www       = undef,
  $rewrite_to_https             = undef,
  $location_custom_cfg          = undef,
  $location_cfg_prepend         = undef,
  $location_cfg_append          = undef,
  $location_custom_cfg_prepend  = undef,
  $location_custom_cfg_append   = undef,
  $try_files                    = undef,
  $auth_basic                   = undef,
  $auth_basic_user_file         = undef,
  $client_body_timeout          = undef,
  $client_header_timeout        = undef,
  $client_max_body_size         = undef,
  $raw_prepend                  = undef,
  $raw_append                   = undef,
  $location_raw_prepend         = undef,
  $location_raw_append          = undef,
  $vhost_cfg_prepend            = undef,
  $vhost_cfg_append             = undef,
  $vhost_cfg_ssl_prepend        = undef,
  $vhost_cfg_ssl_append         = undef,
  $include_files                = undef,
  $access_log                   = undef,
  $error_log                    = undef,
  $format_log                   = undef,
  $passenger_cgi_param          = undef,
  $log_by_lua                   = undef,
  $log_by_lua_file              = undef,
  $use_default_location         = undef,
  $rewrite_rules                = undef,
  $string_mappings              = undef,
  $geo_mappings                 = undef,
  $gzip_types                   = undef,
  $owner                        = undef,
  $group                        = undef,
  $mode                         = undef,
) {
  nginx::notice::resources { $name: }

  nginx::vhost { $name:
    ensure                       => $ensure,
    listen_ip                    => $listen_ip,
    listen_port                  => $listen_port,
    listen_options               => $listen_options,
    location_allow               => $location_allow,
    location_deny                => $location_deny,
    ipv6_enable                  => $ipv6_enable,
    ipv6_listen_ip               => $ipv6_listen_ip,
    ipv6_listen_port             => $ipv6_listen_port,
    ipv6_listen_options          => $ipv6_listen_options,
    add_header                   => $add_header,
    ssl                          => $ssl,
    ssl_listen_option            => $ssl_listen_option,
    ssl_cert                     => $ssl_cert,
    ssl_dhparam                  => $ssl_dhparam,
    ssl_key                      => $ssl_key,
    ssl_port                     => $ssl_port,
    ssl_protocols                => $ssl_protocols,
    ssl_ciphers                  => $ssl_ciphers,
    ssl_cache                    => $ssl_cache,
    ssl_stapling                 => $ssl_stapling,
    ssl_stapling_file            => $ssl_stapling_file,
    ssl_stapling_responder       => $ssl_stapling_responder,
    ssl_stapling_verify          => $ssl_stapling_verify,
    ssl_session_timeout          => $ssl_session_timeout,
    ssl_trusted_cert             => $ssl_trusted_cert,
    spdy                         => $spdy,
    proxy                        => $proxy,
    proxy_redirect               => $proxy_redirect,
    proxy_read_timeout           => $proxy_read_timeout,
    proxy_connect_timeout        => $proxy_connect_timeout,
    proxy_set_header             => $proxy_set_header,
    proxy_cache                  => $proxy_cache,
    proxy_cache_valid            => $proxy_cache_valid,
    proxy_method                 => $proxy_method,
    proxy_set_body               => $proxy_set_body,
    resolver                     => $resolver,
    fastcgi                      => $fastcgi,
    fastcgi_params               => $fastcgi_params,
    fastcgi_script               => $fastcgi_script,
    index_files                  => $index_files,
    autoindex                    => $autoindex,
    server_name                  => $server_name,
    www_root                     => $www_root,
    rewrite_www_to_non_www       => $rewrite_www_to_non_www,
    rewrite_to_https             => $rewrite_to_https,
    location_custom_cfg          => $location_custom_cfg,
    location_cfg_prepend         => $location_cfg_prepend,
    location_cfg_append          => $location_cfg_append,
    location_custom_cfg_prepend  => $location_custom_cfg_prepend,
    location_custom_cfg_append   => $location_custom_cfg_append,
    try_files                    => $try_files,
    auth_basic                   => $auth_basic,
    auth_basic_user_file         => $auth_basic_user_file,
    client_body_timeout          => $client_body_timeout,
    client_header_timeout        => $client_header_timeout,
    client_max_body_size         => $client_max_body_size,
    raw_prepend                  => $raw_prepend,
    raw_append                   => $raw_append,
    location_raw_prepend         => $location_raw_prepend,
    location_raw_append          => $location_raw_append,
    vhost_cfg_prepend            => $vhost_cfg_prepend,
    vhost_cfg_append             => $vhost_cfg_append,
    vhost_cfg_ssl_prepend        => $vhost_cfg_ssl_prepend,
    vhost_cfg_ssl_append         => $vhost_cfg_ssl_append,
    include_files                => $include_files,
    access_log                   => $access_log,
    error_log                    => $error_log,
    format_log                   => $format_log,
    passenger_cgi_param          => $passenger_cgi_param,
    log_by_lua                   => $log_by_lua,
    log_by_lua_file              => $log_by_lua_file,
    use_default_location         => $use_default_location,
    rewrite_rules                => $rewrite_rules,
    string_mappings              => $string_mappings,
    geo_mappings                 => $geo_mappings,
    gzip_types                   => $gzip_types,
    owner                        => $owner,
    group                        => $group,
    mode                         => $mode,
  }
}
