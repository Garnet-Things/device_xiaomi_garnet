#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.main import ExtractUtils, ExtractUtilsModule

# Minimal namespace imports; you can expand later if needed
namespace_imports = [
    'device/xiaomi/garnet',
]

# No custom blob or lib fixups for bare minimum
blob_fixups = {}
lib_fixups = {}

# Define device module
module = ExtractUtilsModule(
    'garnet',          # device codename
    'xiaomi',          # manufacturer
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
    add_firmware_proprietary_file=True,
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()