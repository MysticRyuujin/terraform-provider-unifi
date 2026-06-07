resource "unifi_vpn_server" "wg" {
  name   = "wireguard"
  subnet = "10.254.0.1/24"

  wireguard = {
    port = 51820
  }
}

resource "unifi_wireguard_peer" "example" {
  network_id   = unifi_vpn_server.wg.id
  name         = "laptop"
  interface_ip = "10.254.0.10"
  public_key   = "2EpyMx4kvM7hkPAfJvbpDIhFi8MdfkHpd5kFKqy81FI="
}
