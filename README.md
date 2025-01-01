# Decentralized Scientific Discovery Lab (Miner) oGPU Service
DeSci Lab: Engage in groundbreaking protein folding research and advance scientific breakthroughs
A distributed protein sequence processing tool that generates Multiple Sequence Alignments (MSAs) and features for AlphaFold structure prediction. Join the Mentis network to contribute your computing power and earn rewards.

## System Requirements

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

## Troubleshooting

### Performance Issues
- Ensure at least 8GB RAM
- Check CPU usage with `htop` or Task Manager
- Consider reducing CPU cores if system becomes unresponsive:

```bash
export CPU_CORES=2  # Use only 2 cores
python miner.py --wallet YOUR_WALLET_ADDRESS
```

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
