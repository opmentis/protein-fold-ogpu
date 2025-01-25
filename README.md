# Decentralized Scientific Discovery Lab (Miner) oGPU Service
DeSci Lab: Engage in groundbreaking protein folding research and advance scientific breakthroughs
A distributed protein sequence processing tool that generates Multiple Sequence Alignments (MSAs) and features for AlphaFold structure prediction. Join the Mentis network to contribute your computing power and earn rewards.

## System Requirements
- **OPM**: 10,000 $OPM
- **CPU**: 4+ cores recommended
- **RAM**: 8GB+ recommended
- **Storage**: 1GB free space for work files
- **Internet**: High-speed connection recommended for database streaming
- **Operating System**: Linux or macOS
- **Python**: 3.8 or higher

## Database Access

The miner uses AlphaFold's streaming approach:
- Databases are streamed in chunks as needed
- No local storage of full databases required
- Chunks are processed and discarded to save space

## Docker Process

1. Build the Docker image:
```bash
docker build -t miner .
```

2. Run the Docker container in the background (as a daemon):

```bash
docker run -d \
  --env WALLET_ADDRESS=wallet_address \
  --env CPU_CORES=2 \
  miner
```
### Optional: Run the Docker container in foreground:

```bash
docker run \
  --env WALLET_ADDRESS=wallet_address \
  --env CPU_CORES=2 \
  miner
```

### Withdraw $OPM tokens

```python
from opmentis import request_reward_payment, check_user_balance

wallet_address = "wallet_address"
labid = "dbc00e29-721f-40e6-b073-ec627db90115"


# Request payment
request_amount = 0
print(request_reward_payment(labid, wallet_address, request_amount))

# Check balance
print(check_user_balance(labid, wallet_address))
```
## To withdraw your $OPM tokens, follow these steps:
- ⁠Open the rewards.py file in the desci-lab folder, ensuring you have the OpMentis Python package installed.
- ⁠Enter your wallet address registered to DeSci Lab in the wallet_address variable.
- Input your desired withdrawal amount in the request_amount variable (cannot exceed your current balance).
- ⁠Run the command python rewards.py
- **Payment will be processed within 24 hours.
- **Automated payment method coming in few weeks and mining on Web UI coming soon


## Troubleshooting

### Performance Issues
- Ensure at least 8GB RAM
- Check CPU usage with `htop` or Task Manager
- Consider reducing CPU cores if system becomes unresponsive:

### Common Errors
- "Database not found": Re-run installation script
- "Out of memory": Increase available RAM or reduce CPU cores
- "Permission denied": Run install script with sudo
- "Database corrupted": Clean and redownload databases

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Support

- Join our [Telegram](https://t.me/opmentisai) for community support
- Visit [DeSci Platform](https://desci.opmentis.xyz) for documentation
- Support: [Technical Support Group](https://t.me/Opmentissupport)
