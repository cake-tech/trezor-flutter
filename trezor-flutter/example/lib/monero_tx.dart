import 'package:trezor_flutter/trezor_flutter.dart';

final tx = {
  "path": "m/44'/128'/0'",
  "networkType": 0,
  "tsx_data": {
    "version": 1,
    "unlock_time": 0,
    "outputs": [
      {
        "amount": 1000000000,
        "addr": {
          "spend_public_key": "6fc98faaec5700c728fbe1aab48ca87019a1677c64e7b0663fee51b6aebee92b",
          "view_public_key": "71a010bede3b6ea2c203a8248e2601011bc30e8f9a1b467ce075f06990abf599",
        },
        "is_subaddress": true,
        "original":
            "86gxJ4gQ6xoaK6wRNSKRHhKkWfwtrY4EBJ6x8NNogVmi8GTfc7oRyZoUDxQJEWuX5J1Bkh7zwEsthMtTm6QWMja4JLEKuKk",
        "is_integrated": false,
      },
      {
        "amount": 11157620000,
        "addr": {
          "spend_public_key": "61158376d659c805ed53a068eabd361db29dd25c9f40e37aeb73ca80166cbf20",
          "view_public_key": "0783c591ab2135d8af22c7e553b512247d8929029d081bb4dc46f12204c11fd7",
        },
        "is_subaddress": false,
        "original": "",
        "is_integrated": false,
      },
      {
        "amount": 1000000000,
        "addr": {
          "spend_public_key": "f2dce5e1cf893770225150d2dbcaa61a84f5df9529077da667b33bc4cc235142",
          "view_public_key": "7bd1da7016584ff2f570080338b5bff7d960565366cd88b44ea2082e0226c471",
        },
        "is_subaddress": true,
        "original":
            "8Bf3sZzBXiNKkqmPayjjRX5SGjEGEXKfzUqLb4KYxVHzC7yYXNkQirAhe1EtJbUREviTSvggvuAUPXACug3VEQfdDqAp1ZE",
        "is_integrated": false,
      },
    ],
    "change_dts": {
      "amount": 11157620000,
      "addr": {
        "spend_public_key": "61158376d659c805ed53a068eabd361db29dd25c9f40e37aeb73ca80166cbf20",
        "view_public_key": "0783c591ab2135d8af22c7e553b512247d8929029d081bb4dc46f12204c11fd7",
      },
      "is_subaddress": false,
      "original": "",
      "is_integrated": false,
    },
    "num_inputs": 2,
    "mixin": 15,
    "fee": 58040000,
    "account": 0,
    "rsig_data": {
      "rsig_type": 3,
      "bp_version": 4,
      "grouping": [3],
    },
    "client_version": 4,
    "hard_fork": 16,
    "monero_version": "0.18.4.6|13ec37bef",
  },
  "inputs": [
    {
      "outputs": [
        {
          "idx": 139393990,
          "key": {
            "dest": "e1721317a5617950189d98bfeb0be05bc08cfc6563214908b3374c2a0d8e18ad",
            "commitment": "14b53ad04a126da33fbf5ba0c617c99fa5d798ebb08f2e2192e962c7db3d04f1",
          },
        },
        {
          "idx": 157668404,
          "key": {
            "dest": "c6ae951f8afda256822a42f92c658e8f34f70ce3f85fd65381f828088dce317c",
            "commitment": "0313c8bbbcfd5b39fae01215b4677a46c99106992b090c79d014d0c602674f7f",
          },
        },
        {
          "idx": 158328771,
          "key": {
            "dest": "13d4ee6a46b9251019f1f72af55723e9eee6cb5d09275f1544c343ba9c97e7e9",
            "commitment": "4ab49e7964ee44041991aa5db512d0ef7707fb0721e31171114a271eb0240f09",
          },
        },
        {
          "idx": 159142589,
          "key": {
            "dest": "1f3ae31151388b4d37846199f9b59c712661b636c8e1d57a28e6b90fd0f5ca84",
            "commitment": "bc4c5d1d54cf0392315e8835d5076bd9a4f0fe30ee37742334f5452f9d8bceb5",
          },
        },
        {
          "idx": 159256856,
          "key": {
            "dest": "d41343ef7dcc0c57d4da723f70e0b1f0d63fea5e19d2c697fad37937f1de890a",
            "commitment": "4a7ae7a1e9c0a8f7d48bd6ccb66ebbf0ded7800285bcc628e7811f826aa9585a",
          },
        },
        {
          "idx": 159831798,
          "key": {
            "dest": "49eab3734014d81833d0d56e5e3deb172e2f1be19806a81246de0daf7d8888b8",
            "commitment": "0ac3360de782dce19e84975322729138f7417673f4a2196c39ae5ebb7795f796",
          },
        },
        {
          "idx": 159906415,
          "key": {
            "dest": "a09a836dbdde4d040cf97620bf5207f529966f00d88d35d5364974047a95081b",
            "commitment": "87ff52f1be93cf94980aa8419f5de271a5a24b00f07acaabef1f70c21e81e47e",
          },
        },
        {
          "idx": 160220511,
          "key": {
            "dest": "61bf4fb38d3a6751962e2c3e657d8c7abd6ae2c15bd2381f7258e5fd1c8a9924",
            "commitment": "fada122ce4f8cddd4acc820801bdc91ff77f3ec12dd90b223c94180285b0e8bc",
          },
        },
        {
          "idx": 160233873,
          "key": {
            "dest": "079e433b1d3e116039e533a09719ee771c24cd42b6a6494975357af1973b11b3",
            "commitment": "2b7d41b4d903b1bf05de23d173024fe25b1f444c83b8bb3dfe8a4062da29c0e7",
          },
        },
        {
          "idx": 160237294,
          "key": {
            "dest": "4c77a7018cef45fb60e1f8cc67287fd02787bdfcd75491d7a471f421125ad90a",
            "commitment": "e4a8dc9e99315b1a8f34a4c217f3655dd936af901bfaf70b8ea002bfa524abb9",
          },
        },
        {
          "idx": 160326599,
          "key": {
            "dest": "0a7cdb43686216ceffa8c65c703278ed5363e39503d890b69774a460f87b1883",
            "commitment": "efdf8445d29291f438cfac40a072367ff0a3e1354132698ff79c14a7933a9cb0",
          },
        },
        {
          "idx": 160332886,
          "key": {
            "dest": "5cb10ddf63dbc8cf832c3a28efa91192eecd8e842142b3780ef43ad0d27ca095",
            "commitment": "1845497ede2d299cc34a95061432dd4c267220cddfe2d481279603b3aa74c0b5",
          },
        },
        {
          "idx": 160336531,
          "key": {
            "dest": "f0a9818076347594e8a184407d0dae7d8d9537b21d077626a29963f067e09d11",
            "commitment": "33c503a3b937d846dfdff6c95b3a1b1fefa417efde8719f50d695acc0eb4abc3",
          },
        },
        {
          "idx": 160338305,
          "key": {
            "dest": "5ee30c93fa6fdc5f49dfc8f956e78a1979d7f7077819c3b572e0496558969a8f",
            "commitment": "41b7dabc126311d35f9800de47f48a1cc5391a5a5902551cef9a7330312f718e",
          },
        },
        {
          "idx": 160344153,
          "key": {
            "dest": "e75f6811ad3c611041009b8f769c2b6ec4c5a0e6f411e58114db8950aef24511",
            "commitment": "35b899788cf1e6f5a9b4f7c4f92ec727b2a24642cf24f28490242d10e413353a",
          },
        },
        {
          "idx": 160350587,
          "key": {
            "dest": "aae3a216d8db8211fe9a74cf799fb7b0bf85f1939a66dde63508c784cca2c51d",
            "commitment": "c5a3f1e263afd37b5454235a7a806fa27b650674eab2003a3e0226ab5e1448e9",
          },
        },
      ],
      "real_output": 8,
      "real_out_tx_key": "ee3426953c68c768dc17cf0501664d8ea1f8e8303917cc32d128af5c8cd1fbf9",
      "real_out_additional_tx_keys": [],
      "real_output_in_tx_index": 1,
      "amount": 12260160000,
      "rct": true,
      "mask": "654bec87ea5c06f36d73487bd81080b2ec542922133c0d10138d5c9d42bd1d02",
      "subaddr_minor": 0,
    },
    {
      "outputs": [
        {
          "idx": 156299184,
          "key": {
            "dest": "d1d3fb0572367af08f91c9e95b8c377eb3df92803e2fa5a0db9ae9b3637657bc",
            "commitment": "b345473400c0e1be00f4750e93b046ea38160bc5faf37d8a74f1cf9eaabfbbce",
          },
        },
        {
          "idx": 156805084,
          "key": {
            "dest": "fbc089636d9b53d3198b80394b976c2641118fb23a2636f48f50f52434d59990",
            "commitment": "97df8ecea4aeaa8664c663f4c00ec5eee844a716bd376adb2e9ff390ac61b874",
          },
        },
        {
          "idx": 158596366,
          "key": {
            "dest": "973a74bc7371202e2ab595cfb19e821d7a9a609dcd0f4bd2ab949bf2c1e1d4d2",
            "commitment": "d3e4adb6af469c864e4781a6fdba5ae77bb29886eeddb7ea44c297c04c569493",
          },
        },
        {
          "idx": 159864519,
          "key": {
            "dest": "f075a12cf4d8af0f39a97d827e9e1bfbd4c0584210f8ef6a058d16a90485267a",
            "commitment": "313bba81b102a3cf84f2f51b794a32178a22b09cfc7feaa1d0615b883e346538",
          },
        },
        {
          "idx": 160246581,
          "key": {
            "dest": "c0534f62e7f92a5929e2dd0895470dc07e369269703c4c7ca09ce57b61150624",
            "commitment": "dc2b098545874f59bdebe56a15ce3faf8e9d7c1b4dbc1395031d1df1e25cf841",
          },
        },
        {
          "idx": 160262732,
          "key": {
            "dest": "a65d816803ba64ad9d0225ffd1ce177f4355f971071c11470dc336a5063b2f36",
            "commitment": "09fca386e65cbb0de9fb082d3453a2039470227919ce5cb689097a403c5e5332",
          },
        },
        {
          "idx": 160276541,
          "key": {
            "dest": "fe11ac8cbaa104fea1a20911396b8f56b944c88b4f986ed894776dac4ec0b3d0",
            "commitment": "00a59ce27be630933b1607348cb10dcf04f5902866f8e691efcf4ff143989566",
          },
        },
        {
          "idx": 160297142,
          "key": {
            "dest": "5a20b17dfa66f4a40d05affbd3331106cec0ff2370e18a91af15547900d89fe5",
            "commitment": "55b8adb479ebcb2d3dd4d47a98a2c1520b97c8e24f986d33725fcb1885071e96",
          },
        },
        {
          "idx": 160312220,
          "key": {
            "dest": "02d52684b548fde71304f39e5c4a58de262496bca272859598e6de38e13debce",
            "commitment": "0ae60c65d5fc4fbbf5fec0f05b93e5df1de139ed29852b1ebdf547b1c0df3a30",
          },
        },
        {
          "idx": 160321133,
          "key": {
            "dest": "15dcff9814c08ae75b4b29656cff864cfd350a9c0c540c54b32e3e5fe2489182",
            "commitment": "14c01dbef370eb2c0b37fc732a21cabf2d902711172153b49d00e34b22b33039",
          },
        },
        {
          "idx": 160329668,
          "key": {
            "dest": "79851940d10e388b64d1193c406725a0f961471f7470fadaf0ca116695a1ee61",
            "commitment": "19a647feb7c019debd44e326694bed6f3c1d1f047a49188e1d2b675b7cb6f900",
          },
        },
        {
          "idx": 160331850,
          "key": {
            "dest": "309cf09dbad00790306d63643e12cadb56ff51b5f7bf54460c9fdd04f5d8c3cc",
            "commitment": "75be8a66f351ad9083796da411ad9d70ea90a2d28d24d6a1d6023b6e0a615cc5",
          },
        },
        {
          "idx": 160339376,
          "key": {
            "dest": "f93977c14308118bb58829ba1becc8d259649b5198247885ddc1f98dbe3c35d9",
            "commitment": "21ad5e366fa856281a00e7cddb7b6fbf2396b93b45be7c507f26ee54ed2c6617",
          },
        },
        {
          "idx": 160342960,
          "key": {
            "dest": "56d382c586d495b6b8c04113b5eda64ef40ec5c9c3c2b6048e2a395ed8d9d240",
            "commitment": "e01e5afd3a487e58b693e3b753c69fbb17d3369093038a216f38d19309c7fb47",
          },
        },
        {
          "idx": 160347124,
          "key": {
            "dest": "dbde431ac345faf8c48abece46b5aff32362ae0041ddc6d2b428f3d57b580489",
            "commitment": "a5b20b23185130bafe8ae56f363d3fb3d7d508c45114671acbf84ecfd68b2513",
          },
        },
        {
          "idx": 160354439,
          "key": {
            "dest": "1221b973398260dec28365731244c26be11ffa70896c88bee3898088fabcb9d0",
            "commitment": "c01f8146678e0bc0346ed43bbbfd2620450a821f5ba6e2989ff73abc33a65003",
          },
        },
      ],
      "real_output": 0,
      "real_out_tx_key": "7db492bc8c51732a0f6a8e30e71d406a8f4ba32e59b0b6582a461b868dfc5f03",
      "real_out_additional_tx_keys": [],
      "real_output_in_tx_index": 1,
      "amount": 955500000,
      "rct": true,
      "mask": "cabede455a9419ff67a3516c326b7a1bd418e48df9360fef994d4dfe4ac8780b",
      "subaddr_minor": 0,
    },
  ],
};

final tdis = [
  MoneroKeyImageTxData(
    outKey: "692ba778e483a95c928ae03993af50fc0913856f23a695763f8bd4a6ef55ba94",
    txPubKey: "8c25ea48addbb1734ad64b77b95e0ce5f09b6993074fc3f0db16d011c3689ca1",
    additionalTxPubKeys: [],
    internalOutputIndex: 0,
    subAddrMajor: 0,
    subAddrMinor: 0,
  ),
];
