function hub_jz
    # SSH port forwarding to apcssh gateway
    # assumes host 'apcssh' is configured in .ssh/config
    ssh -D localhost:9080 -N -f apcssh

    # Open firefox with jz profile
    firefox -p jz &
end
