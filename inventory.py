#!/usr/bin/env python
import json
import sys

# Load Terraform output
with open('terraform-output.json') as file:
    data = json.load(file)

# Extract the IPs
ips = data['droplet_ip']['value']

# Generate inventory
inventory = {
    'digitalocean': {
        'hosts': ips,
    }
}

print(json.dumps(inventory))
