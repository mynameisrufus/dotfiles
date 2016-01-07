run_proxy_configure()
{
  echo "${$(tput setaf 6)}=> $@" >&1
  $@
}

set_proxy()
{
  proxy=${1:-http://localhost:3128}
  run_proxy_configure npm config set proxy $proxy
  run_proxy_configure npm config set https-proxy $proxy
  run_proxy_configure export {all_proxy,http_proxy,https_proxy}=$proxy
}

unset_proxy()
{
  run_proxy_configure npm config delete proxy
  run_proxy_configure npm config delete https-proxy
  run_proxy_configure unset {all_proxy,http_proxy,https_proxy}
}
