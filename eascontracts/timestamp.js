import { EAS } from "@ethereum-attestation-service/eas-sdk";

const eas = new EAS(EASContractAddress);
eas.connect(provider);

const data = ethers.utils.formatBytes32String('0x1234');

const transaction = await eas.timestamp(data);

// Optional: Wait for transaction to be validated
await transaction.wait();