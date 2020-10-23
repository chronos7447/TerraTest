resource "okta_network_zone" "AIG" {
  name     = "AIG"
  type     = "IP"
  gateways = ["167.230.0.0/16", "167.247.0.0/16", "152.193.18.54-152.193.18.54", "208.185.21.155-208.185.21.155", "204.148.14.190-204.148.14.190", "208.185.21.153-208.185.21.153", 
"64.245.202.32/27"]
  proxies  = ["165.225.34.209-165.225.34.209", "165.225.34.230-165.225.34.230", "165.225.39.92-165.225.39.92", "1.234.57.0/24", "49.236.207.160/27", "58.220.95.0/24", "104.129.192.0/23", "104.129.192.0/20", "104.129.194.0/23", "104.129.196.0/23", "104.129.198.0/24", "104.129.200.0/24", "104.129.204.0/23", "124.248.141.0/24", "165.225.0.0/17", "165.225.32.0/23", "165.225.34.0/23", "165.225.36.0/23", "165.225.38.0/23",
"165.225.50.0/23",
"165.225.98.0/24",
"165.225.102.0/24",
"165.225.104.0/24",
"165.225.106.0/23",
"165.225.110.0/23",
"165.225.112.0/23",
"165.225.114.0/23",
"165.225.116.0/23",
"165.225.192.0/18",
"165.225.226.0/23",
"175.45.116.0/24",
"185.46.212.0/22",
"199.168.151.0/24",
"209.51.184.0/26",
"211.144.19.0/24",
"221.122.91.0/24"]
}

resource "okta_network_zone" "AIG Corporate" {
  name     = "AIG Corporate"
  type     = "IP"
  gateways = ["167.230.0.0/16",
"167.247.0.0/16",
"4.16.90.218-4.16.90.218",
"4.16.234.66-4.16.234.66",
"64.124.184.254-64.124.184.254",
"165.225.48.113-165.225.48.113",
"209.66.79.126-209.66.79.126",
"218.232.114.0/24",
"112.171.16.0/24",
"170.105.0.0/16",
"61.213.161.144/30",
"143.90.40.168/30",
"203.121.22.16/30",
"121.123.252.148/30",
"116.0.71.108/30",
"180.87.96.202/31",
"101.231.68.160/29",
"101.231.193.200/29",
"116.228.214.96/28",
"116.228.214.112/28",
"180.167.15.200/29",
"180.168.227.32/27",
"180.169.106.192/25",
"14.23.86.244/28",
"62.60.13.146-62.60.13.146",
"195.50.116.114-195.50.116.114",
"158.43.19.78-158.43.19.78",
"180.168.133.38-180.168.133.38",
"180.166.28.18-180.166.28.18",
"14.23.86.242-14.23.86.242",
  proxies  = ["104.129.204.0/23",
"104.129.196.0/23",
"165.225.34.0/23",
"104.129.200.0/24",
"104.129.198.0/24",
"165.225.32.0/23",
"209.51.184.0/26",
"199.168.151.0/24",
"165.225.38.0/23",
"104.129.192.0/23",
"165.225.50.0/23",
"165.225.36.0/23",
"104.129.194.0/23",
"185.46.212.0/22",
"104.129.192.0/20",
"165.225.0.0/17",
"165.225.192.0/18",
"124.248.141.0/24",
"211.144.19.0/24",
"165.225.104.0/24",
"165.225.116.0/23",
"49.236.207.160/27",
"165.225.98.0/24",
"165.225.226.0/23",
"165.225.106.0/23",
"1.234.57.0/24",
"58.220.95.0/24",
"165.225.112.0/23",
"175.45.116.0/24",
"165.225.114.0/23",
"165.225.102.0/24",
"221.122.91.0/24",
"165.225.110.0/23"]
}




