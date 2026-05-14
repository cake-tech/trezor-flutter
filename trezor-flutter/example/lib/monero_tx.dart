import 'package:trezor_flutter/src/connect/coins/monero/extensions.dart';
import 'package:trezor_flutter/src/trezor/protobuf/coins/messages-monero.pb.dart';

final tx = {
  "path": "m/44'/128'/0'",
  "networkType": 0,
  "tsx_data": {
    "version": 1,
    "payment_id": "0000000000000000",
    "unlock_time": 0,
    "outputs": [
      {
        "amount": 10000000,
        "addr": {
          "spend_public_key": "967c811306ba70a882ab0cc7cbde171f3c52bc7647b3df2f18b6e7f94e8ecc68",
          "view_public_key": "2da3434f54bef88ba7b509bc63001a008c20fadc7066d2cda34151bca96a5795",
        },
        "is_subaddress": false,
        "original":
            "47KsL3sBW8PVBmCz5H6Ncn6E2STreVqkJ8stwGaaW8uHJRfGNXXKkb9QMq7LM6czJu16JzhPGqaoKbPwihvDZpBQHrtAPF2",
        "is_integrated": false,
      },
      {
        "amount": 13867280000,
        "addr": {
          "spend_public_key": "61158376d659c805ed53a068eabd361db29dd25c9f40e37aeb73ca80166cbf20",
          "view_public_key": "0783c591ab2135d8af22c7e553b512247d8929029d081bb4dc46f12204c11fd7",
        },
        "is_subaddress": false,
        "original": "",
        "is_integrated": false,
      },
    ],
    "change_dts": {
      "amount": 13867280000,
      "addr": {
        "spend_public_key": "61158376d659c805ed53a068eabd361db29dd25c9f40e37aeb73ca80166cbf20",
        "view_public_key": "0783c591ab2135d8af22c7e553b512247d8929029d081bb4dc46f12204c11fd7",
      },
      "is_subaddress": false,
      "original": "",
      "is_integrated": false,
    },
    "num_inputs": 1,
    "mixin": 15,
    "fee": 122720000,
    "account": 0,
    "rsig_data": {
      "rsig_type": 3,
      "bp_version": 4,
      "grouping": [2],
    },
    "client_version": 4,
    "hard_fork": 16,
    "monero_version": "0.18.4.6|2498651bc",
  },
  "inputs": [
    {
      "outputs": [
        {
          "idx": 149684834,
          "key": {
            "dest": "d3146233f4d0dd108d45c7b017d48b5845885921670a7f859828ff5d55f1193d",
            "commitment": "1408682fefaad6da5e25cb8dc6fcdeca0ef1e1e7db438d7a1631a7b470af6000",
          },
        },
        {
          "idx": 150544621,
          "key": {
            "dest": "a76ee98ca189f7b1ae67992249f69ab866145d2800d8ac715e8b9a03434efc54",
            "commitment": "6f9401d3c81c53eeca76fd608f1ccf67646f03cc5ca938bb5a413e6110d45adb",
          },
        },
        {
          "idx": 150735415,
          "key": {
            "dest": "47692d179804a897a50360281df1beb63a10fe29fc70d1fd40a3c0fe85f43c97",
            "commitment": "64da0ee78849764ca44cd5bca662dd0f01c03151e010ea95247a3fb2c92f32fd",
          },
        },
        {
          "idx": 153175051,
          "key": {
            "dest": "3f927222764c7f9f91e33cd51959e2cd9d3bccf0590e4a3e6264c945ccb19ba5",
            "commitment": "9c658f43cc2b6228b56ac222a744eb4ed5ad2de0e535c72b768ff4f8d4b7ed3e",
          },
        },
        {
          "idx": 154499560,
          "key": {
            "dest": "c5e093c8c2df1e1447bb80e07cc72a8f73320ad162bb6a5553cbebc9d50b20f3",
            "commitment": "c2175e0f120e8c7b39d119ba7efaf0ed1cd7532b8b2a1cd04dd416276e9f2702",
          },
        },
        {
          "idx": 154847123,
          "key": {
            "dest": "cc90ed1790fee477dc327c7b8e0032c2f86a72a7148119873e33fa9719dc7f38",
            "commitment": "4ac10857df8e2454ac61d487812f6df544d5b7ba3983e5cfc969717e7f38b15a",
          },
        },
        {
          "idx": 154851612,
          "key": {
            "dest": "9d9237a2ea5c461a15d7a97e9cd806aa441d422808f4a52ed807e1d7e23d7bee",
            "commitment": "b528ffaee81f86b56f67e6ed9fb8a145b33482247e07d27fce79d41fa05f9706",
          },
        },
        {
          "idx": 154957385,
          "key": {
            "dest": "9843ceddcaded5afbd63646f79aea161f37bcc4de97953aa598453df5391a922",
            "commitment": "0065d3923823123e55cfb103f46da3a23b17693f0f700f6132e11a2047cb0cb9",
          },
        },
        {
          "idx": 155004866,
          "key": {
            "dest": "692ba778e483a95c928ae03993af50fc0913856f23a695763f8bd4a6ef55ba94",
            "commitment": "a8e6548ea6c6294069ac029c83afd40c6d733576904f46189b1528718387b206",
          },
        },
        {
          "idx": 155006700,
          "key": {
            "dest": "75201f7bafb349c1719844f40a67e1f3461c7e1de33d26ee0e3020dbf77f14c0",
            "commitment": "3c604a8ee9414918f81588a4260144d4d964855dc44bd49730535079db85f4f4",
          },
        },
        {
          "idx": 155027849,
          "key": {
            "dest": "9a18ca7209d03ec38963b1a8628536f0e95827239f892276a874aa717006d523",
            "commitment": "3c19e7380c702301d372e7a69ed9ce36572287d739ce9fd555ea8108abf1dbe9",
          },
        },
        {
          "idx": 155042942,
          "key": {
            "dest": "7ab5501fa6b78c9177b28e975d0269ca5bcce8f534aac5a1f718c0f177d899c2",
            "commitment": "42f1d0a663f882305c5a913072942d12bd86c4701d06bffff134679055d8cfcf",
          },
        },
        {
          "idx": 155054789,
          "key": {
            "dest": "8d8f2da73489567571e8006043a14ffe9e68f48e727faa5efe64cf312155715d",
            "commitment": "e85d119845901436758600cf353e55131fadafdf1eb4dd0ddecea9719393e17a",
          },
        },
        {
          "idx": 155074041,
          "key": {
            "dest": "587ab6570061311fdf5387932dc2ca61a5c5f9921560b8258e47779305709e1b",
            "commitment": "5d7ea32da3d6e09c0e20f302540e313e47fcedcae50417016d648f12ba778448",
          },
        },
        {
          "idx": 155082514,
          "key": {
            "dest": "30773c5e5d2aceb829dfff6f6097c5173894a0278df0f78377b746905b06aa13",
            "commitment": "fd1d1e021a34dab16d086402cfd70ef3c065a1c5f60d1e72bb7c9c1e88970dac",
          },
        },
        {
          "idx": 155085432,
          "key": {
            "dest": "722cbd13c8d2b12dcec408a7a5d3eb4db7b3cd4f736bc896f3e3c27f79bbcabe",
            "commitment": "0f50c9600e08632582d1499d026c64954f3a0820e0edeec79a5fa1bc1780303a",
          },
        },
      ],
      "real_output": 8,
      "real_out_tx_key": "8c25ea48addbb1734ad64b77b95e0ce5f09b6993074fc3f0db16d011c3689ca1",
      "real_out_additional_tx_keys": [],
      "real_output_in_tx_index": 0,
      "amount": 14000000000,
      "rct": true,
      "mask": "4a10682282b9f1cd4bef00f842fc3be4f21c5e8f9c5635b2fbd673ff828ff80b",
      "subaddr_minor": 0,
    },
  ],
};

MoneroTransactionInitRequest_MoneroTransactionData dummyTsxData() => moneroTransactionDataFromMap(tx["tsx_data"] as Map<String, dynamic>);
List<MoneroTransactionSourceEntry> dummyInputs() => (tx["inputs"] as List).map((e) => moneroTransactionSourceEntryFromMap(e)).toList();
