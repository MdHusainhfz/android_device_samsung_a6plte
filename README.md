# TWRP Device Tree for Samsung Galaxy A6 Plus 2018

The Galaxy A6 Plus 2018 (codenamed _"a6plte"_) is an mid-range smartphone from Samsung.

It was announced in May 2018 and released in May 2018.

There are also two different variants for Taiwan (a52sxqzt) and Korea (a52sxqks).

## Device specifications

| Feature                        | Specification                                                                             |
| -----------------------------: | :---------------------------------------------------------------------------------------- |
| Chipset                        | Qualcomm SDM450 Snapdragon 450 (14 nm)                                                    |
| CPU                            | Octa-core 1.8 GHz Cortex-A53                                                              |
| GPU                            | Qualcomm Adreno 506                                                                       |
| Memory                         | 3GB / 4GB RAM (LPDDR3)                                                                    |
| Shipped OS                     | Android 8.0 (Samsung Experience 9.0)                                                      |
| Storage                        | 32GB / 64GB (eMMC 5.1)                                                                    |
| SIM                            | Hybrid Dual SIM (Nano-SIM, dual stand-by)                                                 |
| MicroSD                        | Up to 1TB                                                                                 |
| Battery                        | 3500mAh Li-Ion (non-removable)                                                            |
| Dimensions                     | 160.2 x 75.7 x 7.9 mm (6.31 x 2.98 x 0.31 in)                                             |
| Display                        | 6.0", 1080 x 2220 pixels, 18.5:9 ratio, Super AMOLED, (~411 ppi density)                  |
| Rear Camera                    | Dual, 16 MP, f/1.7, 26mm (wide), PDAF, 5 MP, f/1.9, (depth)                               |
| Front Camera                   | 24 MP, f/1.9, 27mm (wide), 1/2.8", 0.9µm                                                  |
| Sensors                        | Fingerprint, Accelerometer, Gyro, Proximity, Compass                                      |
| Extras                         | ANT+, Samsung Pay, NFC                                                                    |

## Device picture

<img src="https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-a6-plus-2018-1.jpg" width="45%"/>

## Kernel source 

Available at [https://github.com/MdHusainHfz/android_kernel_samsung_a6plte/](https://github.com/MdHusainHfz/android_kernel_samsung_a6plte/)

## How to build

This device tree was tested and is fully compatible with [minimal-manifest-twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/MdHusainHfz/android_device_samsung_a6plte.git -b android-12.1 device/samsung/a6plte
```

3. To build:

```bash
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_a6plte-eng
mka recoveryimage
```

## Copyright

```
#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
```
