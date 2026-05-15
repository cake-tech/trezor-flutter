import 'dart:math';
import 'dart:typed_data';

import '../api/api.dart';

class TrezorPacker extends BlePacker {
  @override
  List<Uint8List> pack(Uint8List payload, int mtu) => _createChunks(payload, mtu);
}

/// Create chunks from data BLE transfer.
///
/// Supports only Protocol v2/THP (3-byte header)
List<Uint8List> _createChunks(Uint8List data, int chunkSize) {
  final dataSize = data.length;

  // Single chunk case - just pad to chunkSize
  if (dataSize <= chunkSize) {
    return [
      Uint8List.fromList([...data, ...List.filled(chunkSize - data.length, 0)])
    ];
  }

  // Multi-chunk case - detect protocol and build chunks
  final channel = data.sublist(1, 3);
  final chunkHeader = Uint8List.fromList([0x80, ...channel]);
  final chunkHeaderSize = chunkHeader.length;
  final chunkDataSize = chunkSize - chunkHeaderSize;

  final chunks = <Uint8List>[];
  var dataOffset = 0;

  // First chunk
  final firstChunk = data.sublist(0, chunkSize);
  chunks.add(firstChunk);
  dataOffset = chunkSize;

  // Subsequent chunks: header + data
  while (dataOffset < dataSize) {
    final chunk = <int>[];
    chunk.addAll(chunkHeader);
    final bytesToCopy = min(chunkDataSize, dataSize - dataOffset);
    chunk.addAll(data.sublist(dataOffset, dataOffset + bytesToCopy));
    
    chunk.addAll(List.filled(chunkSize - chunk.length, 0));
    
    chunks.add(Uint8List.fromList(chunk));
    dataOffset += bytesToCopy;
  }

  return chunks;
}
