import { Keypair, LAMPORTS_PER_SOL, Connection } from "@solana/web3.js"
import * as fs from 'fs';

const endpoint = 'https://api.devnet.solana.com' //gasfee
const solanaConnection = new Connection(endpoint);

const keypair = Keypair.generate();
console.log(`Wallet Keypair: ${keypair.publicKey.toString()}`);

const secret_array = keypair.secretKey.toString().split(',').map(value=>Number(value));

const secret = JSON.stringify(secret_array);

fs.writeFile('wallet.json', secret, 'utf8', function(err) {
    if (err) throw err;
    console.log('Wrote secret key to wallet.json')
});

(async()=> {
    const airdropSignature = solanaConnection.requestAirdrop(keypair.publicKey, LAMPORTS_PER_SOL);

    try {
        const txId = await airdropSignature;
    }catch(err){
        console.log(err);
    }

})