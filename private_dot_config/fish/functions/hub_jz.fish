function hub_jz
    # SSH port forwarding to apcssh gateway
    # assumes hosts 'apcssh', 'apcssh1', 'apcssh2' and 'apcssh3' are configured in .ssh/config

    # Try the primary gateway first, fall back to alternatives if each fails
    ssh -D localhost:9080 -N -f -o ConnectTimeout=10 apcssh\
    || ssh -D localhost:9080 -N -f -o ConnectTimeout=10 apcssh1\
    || ssh -D localhost:9080 -N -f -o ConnectTimeout=10 apcssh2\
    || ssh -D localhost:9080 -N -f -o ConnectTimeout=10 apcssh3

    # Open browser with jz profile only if the SSH tunnel was successfully established
    if test $status -eq 0
        firefox -p jz &
    else
        echo "SSH tunnel setup failed. Not launching browser."
    end
end
