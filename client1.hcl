# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/root/nomad_file/client1"

# Enable the client
client {
    enabled = true

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["192.168.102.200:4647","192.168.102.201:4647","192.168.102.202:4647"]
}

# Modify our port to avoid a collision with server1
ports {
    http = 5656
}
