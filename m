Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B853831BF2B
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 17:28:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A549B86819;
	Mon, 15 Feb 2021 16:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KBokThL8qfFD; Mon, 15 Feb 2021 16:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B78578679D;
	Mon, 15 Feb 2021 16:28:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02A2E1BF4E7
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 16:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EAA2286FD8
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 16:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XunDenttXE89 for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 16:28:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5DF986F58
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 16:28:20 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A8A0964E05;
 Mon, 15 Feb 2021 16:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613406500;
 bh=pjB0z9dPdyGFADu6xqHCctGTotSVuLI03hT8Y/DWCeE=;
 h=Date:From:To:Cc:Subject:From;
 b=OsesAQU4QoY/gs+16mZw8yjfX9PRE6pyJaN0jDfqS62rJaMg46psJ2Rl99pQddxPy
 KMPREazDp33ed2doQoe5bhDNDfbHrwPnP3d5teSBwAbUhLVYXTAxUsapmF2rJ4R+lk
 D9uaIB3NR69ezzsBv+slkr00uOpiuG8oeLrr+uKk=
Date: Mon, 15 Feb 2021 17:28:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver patches for 5.12-rc1
Message-ID: <YCqhISE0U6/UJoLb@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@linuxdriverproject.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 6ee1d745b7c9fd573fba142a2efdad76a9f1cb04:

  Linux 5.11-rc5 (2021-01-24 16:47:14 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.12-rc1

for you to fetch changes up to 4eb839aef182fccf8995ee439fc2b48d43e45918:

  staging: hikey9xx: Fix alignment of function parameters (2021-02-13 22:37=
:51 +0100)

----------------------------------------------------------------
Staging/IIO driver patches for 5.12-rc1

Here is the "big" set of staging and IIO driver patches for 5.12-rc1.

Nothing really huge in here, the number of staging tree patches has gone
down for a bit, maybe there's only so much churn to happen in here at
the moment.

The IIO changes are:
	- new drivers
	- new DT bindings
	- new iio driver features
with full details in the shortlog.

The staging driver patches are just a lot of tiny coding style cleanups,
along with some semi-larger hikey driver cleanups as those are _almost_
good enough to get out of the staging tree, but will probably have to
wait until 5.13 to have happen.

All of these have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Aakash Hemadri (1):
      staging: rtl8712: Remove multiple blank lines

Aditya Srivastava (1):
      staging: rtl8192e: fix bool comparison in expressions

Alexandre Belloni (6):
      dt-bindings: trivial-devices: reorder memsic devices
      iio:pressure:ms5637: introduce hardware differentiation
      iio:pressure:ms5637: limit available sample frequencies
      iio:common:ms_sensors:ms_sensors_i2c: rework CRC calculation helper
      iio:common:ms_sensors:ms_sensors_i2c: add support for alternative PRO=
M layout
      iio:pressure:ms5637: add ms5803 support

Amey Narkhede (2):
      staging: qlge/qlge_main: Use min_t instead of min
      staging: gdm724x: Fix DMA from stack

Anirudh Rayabharam (3):
      staging: wimax/i2400m: fix pointer declaration style
      staging: rtl8192u/ieee80211: fix switch case indentation
      staging: wimax/i2400m: fix some byte order issues found by sparse

Arnd Bergmann (4):
      staging: rtl819x: select CONFIG_CRC32
      staging: vchiq: fix uninitialized variable copy
      staging: rtl8723bs: remove unused structures
      staging: vt665x: fix alignment constraints

Atul Gopinathan (2):
      staging: hikey9xx: change spaces to tabs
      staging: hikey9xx: make phy_ops struct const

Ayush (2):
      staging: rtl8723bs: fix pointer declaration style
      staging: wimax: i2400m: fix some incorrect type warnings

Bartosz Golaszewski (3):
      iio: adc: xilinx: use helper variable for &pdev->dev
      iio: adc: xilinx: use devm_krealloc() instead of kfree() + kcalloc()
      iio: adc: xilinx: use more devres helpers and remove remove()

Bernd Harries (2):
      staging: comedi: adl_pci7x3x: Add interrupt handling for PCI-7230
      staging: comedi: adv_pci_dio: Add interrupt handling for PCI-1730

Borislav Petkov (1):
      staging: media: atomisp: Fix size_t format specifier in hmm_alloc() d=
ebug statemenet

Brother Matthew De Angelis (1):
      Staging: rtl8723bs/core: fix braces coding style issues

Carlis (1):
      staging: fbtft: add tearing signal detect

Chen-Yu Tsai (1):
      staging: rtl8723bs: wifi_regd.c: Fix incorrect number of regulatory r=
ules

Christian Gromm (2):
      staging: most: sound: add sanity check for function argument
      staging: most: sound: use non-safe list iteration

Coiby Xu (8):
      staging: qlge: use qlge_* prefix to avoid namespace clashes with othe=
r qlogic drivers
      staging: qlge: Initialize devlink health dump framework
      staging: qlge: re-write qlge_init_device
      staging: qlge: coredump via devlink health reporter
      staging: qlge: support force_coredump option for devlink health dump
      staging: qlge: remove mpi_core_to_log which sends coredump to the ker=
nel ring buffer
      staging: qlge: clean up debugging code in the QL_ALL_DUMP ifdef land
      staging: qlge: add documentation for debugging qlge

Colin Ian King (2):
      staging: net: wimax: i2400m: fw: remove redundant initialization of v=
ariable result
      staging: qlge: fix read of an uninitialized pointer

Craig Tatlor (1):
      fixp-arith: add a linear interpolation function

Cristian Pop (3):
      dt-bindings: iio: dac: AD5766 yaml documentation
      Documentation/ABI/testing: Add documentation for AD5766 new ABI
      iio: dac: ad5766: add driver support for AD5766

DENG Qingfang (1):
      staging: mt7621-dts: remove obsolete switch node

Dan Carpenter (1):
      staging: vchiq: delete obselete comment

Devajith V S (2):
      dt-bindings: iio: accel: kxcjk1013: Document regulator supplies
      iio: accel: kxcjk1013: Add rudimentary regulator support

Dinghao Liu (2):
      staging: rtl8192u: Add null check in rtl8192_usb_initendpoints
      staging: fwserial: Fix error handling in fwserial_create

Dmitry Baryshkov (9):
      iio: adc: qcom-vadc: move several adc5 functions to common file
      iio: adc: qcom-vadc-common: use fixp_linear_interpolate
      iio: adc: move qcom-vadc-common.h to include dir
      iio: adc: qcom-spmi-adc5: use of_device_get_match_data
      iio: provide of_iio_channel_get_by_name() and devm_ version it
      iio: adc: move vadc_map_pt from header to the source file
      iio: adc: qcom-vadc-common: rewrite vadc7 die temp calculation
      iio: adc: qcom-vadc-common: simplify qcom_vadc_map_voltage_temp
      iio: adc: qcom-vadc-common: scale adcmap_100k_104ef_104fb

Dragos Bogdan (1):
      iio: adc: ad7476: Add LTC2314-14 support

Dylan Van Assche (1):
      staging: vc4_services: bcm2835-audio: Add SNDRV_PCM_INFO_BATCH flag

Fatih Yildirim (1):
      staging: nvec: minor coding style fix

Greg Kroah-Hartman (4):
      Revert "staging: board: Remove macro board_staging"
      Merge 5.11-rc3 into staging-next
      Merge tag 'iio-for-5.12a' of https://git.kernel.org/.../jic23/iio int=
o staging-next
      Merge 5.11-rc5 into staging-next

Gustavo A. R. Silva (1):
      staging: rtl8723bs: Replace one-element array with flexible-array mem=
ber in struct ndis_80211_var_ie

Hans de Goede (1):
      iio: core: Copy iio_info.attrs->is_visible into iio_dev_opaque.chan_a=
ttr_group.is_visible

Hemansh Agnihotri (1):
      staging: wimax: Fix some coding style problem

Ian Abbott (1):
      staging: comedi: adv_pci_dio: Support falling edge triggers

Ilya Lipnitskiy (1):
      staging/mt7621-dma: mtk-hsdma.c->hsdma-mt7621.c

Ivan Safonov (4):
      staging:rtl8712: remove unused enum WIFI_STATUS_CODE
      staging:r8188eu: replace enum WIFI_STATUS_CODE with native kernel def=
initions
      staging:r8188eu: use IEEE80211_FCTL_* kernel definitions
      staging:wlan-ng: use memdup_user instead of kmalloc/copy_from_user

Jonathan Cameron (3):
      dt-bindings:iio:imu:invensense,mpu6050: txt to yaml conversion
      dt-bindings:iio:gyro:invensense,mpu3050: txt to yaml format conversio=
n.
      Merge branch 'ib-iio-thermal-5.11-rc1' into togreg

Juerg Haefliger (1):
      staging: bcm2835-audio: Replace unsafe strcpy() with strscpy()

J=E9r=F4me Pouiller (1):
      staging: wfx: fix possible panic with re-queued frames

Kees Cook (1):
      staging: Replace lkml.org links with lore

Kumar Kartikeya Dwivedi (15):
      staging: qlge/qlge_ethtool.c: Switch from strlcpy to strscpy
      staging: comedi: Switch from strlcpy to strscpy
      staging: greybus: Switch from strlcpy to strscpy
      staging: fsl-dpaa2: Switch from strlcpy to strscpy
      staging: most: Switch from strlcpy to strscpy
      staging: nvec: Switch from strlcpy to strscpy
      staging: octeon: Switch from strlcpy to strscpy
      staging: olpc_dcon: Switch from strlcpy to strscpy
      staging: rtl8188eu: Switch from strlcpy to strscpy
      staging: rtl8192e: Switch from strlcpy to strscpy
      staging: rtl8192u: Switch from strlcpy to strscpy
      staging: rtl8712: Switch from strlcpy to strscpy
      staging: sm750fb: Switch from strlcpy to strscpy
      staging: wimax: Switch from strlcpy to strscpy
      staging: emxx_udc: Make incorrectly defined global static

Lars-Peter Clausen (7):
      dt-bindings:iio:xilinx-xadc: Add Xilinx System Management Wizard bind=
ing docs
      iio: xilinx-xadc: Add basic support for Ultrascale System Monitor
      iio: vl6180: Use DIV_ROUND_CLOSEST() instead of open-coding it
      iio: bme680: Use DIV_ROUND_CLOSEST() instead of open-coding it
      iio: tsl2583: Use DIV_ROUND_CLOSEST() instead of open-coding it
      iio: sc27xx_adc: Use DIV_ROUND_CLOSEST() instead of open-coding it
      iio: Handle enumerated properties with gaps

Linus Walleij (3):
      iio: accel: yamaha-yas530: Add DT bindings
      iio: magnetometer: Add driver for Yamaha YAS530
      iio: adc: ab8500-gpadc: Support non-hw-conversion

Mahak Gupta (1):
      staging: gasket: fix indentation and lines ending with open parenthes=
is

Manikantan Ravichandran (1):
      staging: greybus: minor code style fix

Martin Kaiser (3):
      staging: rtl8188eu: fix rtw_xmit_entry's return value
      staging: rtl8723bs: fix rtw_cfg80211_monitor_if_xmit_entry's return v=
alue
      staging: rtl8188eu: Add Edimax EW-7811UN V2 to device table

Mauro Carvalho Chehab (27):
      staging: hikey9xx: phy-hi3670-usb3: use bitfield macros
      staging: hikey9xx: phy-hi3670-usb3: adjust retry logic
      staging: hikey9xx: phy-hi3670-usb3: hi3670_is_abbclk_seleted() return=
s bool
      staging: hikey9xx: phy-hi3670-usb3.yaml: add a blank line
      staging: hikey9xx: hisilicon, hisi-spmi-controller.yaml fix bindings
      staging: hikey9xx: hisilicon, hi6421-spmi-pmic.yaml: simplify props
      staging: hikey9xx: hi6421v600-regulator: do some cleanups
      staging: hikey9xx: hi6421v600-regulator: move LDO config from DT
      staging: hikey9xx: hi6421v600-regulator: cleanup debug msgs
      staging: hikey9xx: hi6421v600-regulator: get rid of an static data
      staging: hikey9xx: hi6421v600-regulator: do some cleanups
      staging: hikey9xx: hi6421v600-regulator: update copyright
      staging: hikey9xx: hi6421v600-regulator: fix delay logic
      staging: hikey9xx: hi6421v600-regulator: cleanup comments
      staging: hikey9xx: hi6421v600-regulator: fix get_optimum_mode
      staging: hikey9xx: hisilicon, hi6421-spmi-pmic.yaml: cleanup a warning
      staging: hikey9xx: hi6421-spmi-pmic: update copyright
      staging: hikey9xx: hi6421-spmi-pmic: simplify includes
      staging: hikey9xx: spmi driver: convert to regmap
      staging: hikey9xx: hi6421v600-regulator: use some regmap helpers
      staging: hikey9xx: hi6421-spmi-pmic: rename some vars
      staging: hikey9xx: hi6421-spmi-pmic: cleanup probe code
      staging: hikey9xx: hi6421-spmi-pmic: cleanup header file
      staging: hikey9xx: hi6421-spmi-pmic: fix IRQ handler code
      staging: hikey9xx: hi6421-spmi-pmic: cleanup IRQ handling code
      staging: hikey9xx: hi6421-spmi-pmic: document registers
      staging: hikey9xx: hi6421-spmi-pmic: update copyright notes

Max Leiter (1):
      iio:light:apds9960 add detection for MSHW0184 ACPI device in apds9960=
 driver

Muhammad Usama Anjum (2):
      staging: wfx: avoid defining array of flexible struct
      staging: wfx: remove unused included header files

Mukul Mehar (1):
      staging: hikey9xx: Fix alignment of function parameters

Phil Elwell (3):
      staging: vchiq: Fix bulk userdata handling
      staging: vchiq: Fix bulk transfers on 64-bit builds
      staging: vc04_services: Add a note to the TODO

Phillip Potter (8):
      staging: octeon: remove braces from single-line block
      staging: rtl8192e: remove braces from single-line block
      staging: rtl8192e: replace spaces with tab for a closing if brace
      staging: rtl8723bs: fix braces for os_dep/mlme_linux.c
      staging: rtl8723bs: remove braces from two single line if blocks
      staging: rtl8723bs: fix blank lines and comments in rtl8723b_hal.h
      staging: rtl8723bs: remove typedefs from rtl8723b_recv.h
      staging: rtl8723bs: remove blank line from include/autoconf.h

Pritthijit Nath (3):
      staging: vt6656: Fixed issue with alignment in rf.c
      staging: greybus: Fixed alignment issue in hid.c
      staging: greybus: Fixed a misspelling in hid.c

Puranjay Mohan (1):
      Staging: rtl8192u: use %s and __func__

Rikard Falkeborn (1):
      staging: fieldbus: arcx-anybus: constify static structs

Sergio Paracuellos (1):
      staging: mt7621-dts: match pinctrl nodes with its binding documentati=
on

Song Chen (3):
      staging: board: description for CONFIG_STAGING_BOARD
      staging: board: Remove macro board_staging
      staging: unisys: visorhba: enhance visorhba to use channel_interrupt

Stephan Gerhold (6):
      dt-bindings: iio: imu: mpu6050: Document invensense,mpu6880
      iio: imu: inv_mpu6050: Add support for MPU-6880
      dt-bindings: iio: gyroscope: bmg160: Document regulator supplies
      iio: gyro: bmg160: Add rudimentary regulator support
      dt-bindings: iio: magnetometer: bmc150: Document regulator supplies
      iio: magnetometer: bmc150: Add rudimentary regulator support

Tom Seewald (1):
      staging: qlge: Remove duplicate word in comment

Tomas Novotny (1):
      dt-bindings:iio:dac:microchip,mcp4725: fix properties for mcp4726

William Durand (1):
      staging: rtl8192e: remove multiple blank lines

Xu Wang (3):
      iio: frequency: adf4350: Remove redundant null check before clk_disab=
le_unprepare
      iio: adc: stm32-adc: Remove redundant null check before clk_prepare_e=
nable/clk_disable_unprepare
      iio: adc: stm32-dfsdm: Remove redundant null check before clk_disable=
_unprepare

Ye Xiang (9):
      HID: hid-sensor-custom: Add custom sensor iio support
      iio: hid-sensors: Add hinge sensor driver
      iio:Documentation: Add documentation for hinge sensor channels
      iio: hid-sensor-accel-3d: Add timestamp channel for gravity sensor
      iio: hid-sensor-gyro-3d: Add timestamp channel
      iio: hid-sensor-als: Add timestamp channel
      iio: hid-sensor-magn-3d: Add timestamp channel
      iio: hid-sensor-incl-3d: Add timestamp channel
      iio: hid-sensor-rotation: Add timestamp channel

Yujia Qiao (1):
      Staging: vt6655: Replace a camel case variable name

Zhaoyang Huang (1):
      driver: staging: count ashmem_range into SLAB_RECLAIMBLE

Zheng Yongjun (4):
      staging: most: net: use DEFINE_MUTEX() for mutex lock
      staging: vc04_services: use DEFINE_MUTEX() for mutex lock
      staging: greybus: light: Use kzalloc for allocating only one thing
      iio: chemical: pms7003: convert comma to semicolon

karthik alapati (2):
      staging: rtl8723bs: fix function comments to follow kernel-doc
      staging: rtl8723bs: remove obsolete commented out code

 Documentation/ABI/testing/sysfs-bus-iio            |   11 +
 Documentation/ABI/testing/sysfs-bus-iio-dac-ad5766 |   31 +
 .../bindings/iio/accel/kionix,kxcjk1013.yaml       |    3 +
 .../devicetree/bindings/iio/adc/xilinx-xadc.txt    |   49 +-
 .../devicetree/bindings/iio/dac/adi,ad5766.yaml    |   63 +
 .../bindings/iio/dac/microchip,mcp4725.yaml        |   31 +-
 .../bindings/iio/gyroscope/bosch,bmg160.yaml       |    3 +
 .../bindings/iio/gyroscope/invensense,mpu3050.txt  |   45 -
 .../bindings/iio/gyroscope/invensense,mpu3050.yaml |   70 +
 .../devicetree/bindings/iio/imu/inv_mpu6050.txt    |   67 -
 .../bindings/iio/imu/invensense,mpu6050.yaml       |  104 ++
 .../iio/magnetometer/bosch,bmc150_magn.yaml        |    3 +
 .../bindings/iio/magnetometer/yamaha,yas530.yaml   |  112 ++
 .../devicetree/bindings/trivial-devices.yaml       |   10 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 Documentation/networking/device_drivers/index.rst  |    1 +
 .../networking/device_drivers/qlogic/index.rst     |   18 +
 .../networking/device_drivers/qlogic/qlge.rst      |  118 ++
 MAINTAINERS                                        |    6 +
 drivers/hid/hid-sensor-custom.c                    |  143 ++
 drivers/iio/accel/hid-sensor-accel-3d.c            |    6 +-
 drivers/iio/accel/kxcjk-1013.c                     |   32 +
 drivers/iio/adc/Kconfig                            |   11 +-
 drivers/iio/adc/ab8500-gpadc.c                     |   30 +-
 drivers/iio/adc/ad7476.c                           |    6 +
 drivers/iio/adc/qcom-pm8xxx-xoadc.c                |    3 +-
 drivers/iio/adc/qcom-spmi-adc5.c                   |   95 +-
 drivers/iio/adc/qcom-spmi-vadc.c                   |    3 +-
 drivers/iio/adc/qcom-vadc-common.c                 |  229 +--
 drivers/iio/adc/sc27xx_adc.c                       |    2 +-
 drivers/iio/adc/stm32-adc-core.c                   |   29 +-
 drivers/iio/adc/stm32-adc.c                        |   14 +-
 drivers/iio/adc/stm32-dfsdm-core.c                 |    3 +-
 drivers/iio/adc/xilinx-xadc-core.c                 |  364 +++--
 drivers/iio/adc/xilinx-xadc-events.c               |    9 +-
 drivers/iio/adc/xilinx-xadc.h                      |    6 +
 drivers/iio/chemical/bme680_core.c                 |    2 +-
 drivers/iio/chemical/pms7003.c                     |    2 +-
 .../iio/common/hid-sensors/hid-sensor-attributes.c |    2 +
 drivers/iio/common/ms_sensors/ms_sensors_i2c.c     |   76 +-
 drivers/iio/common/ms_sensors/ms_sensors_i2c.h     |   15 +-
 drivers/iio/dac/Kconfig                            |   10 +
 drivers/iio/dac/Makefile                           |    1 +
 drivers/iio/dac/ad5766.c                           |  643 ++++++++
 drivers/iio/frequency/adf4350.c                    |    6 +-
 drivers/iio/gyro/bmg160_core.c                     |   25 +
 drivers/iio/gyro/hid-sensor-gyro-3d.c              |   40 +-
 drivers/iio/imu/inv_mpu6050/Kconfig                |    8 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |    9 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_i2c.c          |    5 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h          |    2 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_spi.c          |    5 +
 drivers/iio/industrialio-core.c                    |   44 +-
 drivers/iio/inkern.c                               |   34 +-
 drivers/iio/light/apds9960.c                       |    8 +
 drivers/iio/light/hid-sensor-als.c                 |   39 +-
 drivers/iio/light/tsl2583.c                        |    8 +-
 drivers/iio/light/vl6180.c                         |    2 +-
 drivers/iio/magnetometer/Kconfig                   |   15 +
 drivers/iio/magnetometer/Makefile                  |    2 +
 drivers/iio/magnetometer/bmc150_magn.c             |   26 +-
 drivers/iio/magnetometer/hid-sensor-magn-3d.c      |   48 +-
 drivers/iio/magnetometer/yamaha-yas530.c           | 1049 +++++++++++++
 drivers/iio/orientation/hid-sensor-incl-3d.c       |   43 +-
 drivers/iio/orientation/hid-sensor-rotation.c      |   46 +-
 drivers/iio/position/Kconfig                       |   16 +
 drivers/iio/position/Makefile                      |    1 +
 .../iio/position/hid-sensor-custom-intel-hinge.c   |  385 +++++
 drivers/iio/pressure/ms5637.c                      |   77 +-
 drivers/staging/android/ashmem.c                   |    2 +-
 drivers/staging/board/Kconfig                      |    9 +-
 drivers/staging/clocking-wizard/TODO               |    3 +-
 drivers/staging/comedi/comedi_fops.c               |    4 +-
 drivers/staging/comedi/drivers/adl_pci7x3x.c       |  284 +++-
 drivers/staging/comedi/drivers/adv_pci_dio.c       |  289 +++-
 drivers/staging/emxx_udc/emxx_udc.c                |    3 +
 drivers/staging/emxx_udc/emxx_udc.h                |    2 -
 drivers/staging/fbtft/fb_st7789v.c                 |  115 ++
 drivers/staging/fieldbus/anybuss/arcx-anybus.c     |    4 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c    |    6 +-
 drivers/staging/fwserial/fwserial.c                |    2 +
 drivers/staging/gasket/gasket_ioctl.c              |   42 +-
 drivers/staging/gdm724x/gdm_usb.c                  |   10 +-
 drivers/staging/greybus/audio_helper.c             |    2 +-
 drivers/staging/greybus/audio_manager_sysfs.c      |    4 +-
 drivers/staging/greybus/audio_module.c             |    2 +-
 drivers/staging/greybus/audio_topology.c           |    6 +-
 drivers/staging/greybus/hid.c                      |    6 +-
 drivers/staging/greybus/light.c                    |    3 +-
 drivers/staging/greybus/power_supply.c             |    2 +-
 drivers/staging/greybus/spilib.c                   |    4 +-
 drivers/staging/hikey9xx/Kconfig                   |    2 +
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c        |  331 ++--
 drivers/staging/hikey9xx/hi6421v600-regulator.c    |  533 +++----
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml       |  108 +-
 .../hikey9xx/hisilicon,hisi-spmi-controller.yaml   |   19 +-
 drivers/staging/hikey9xx/phy-hi3670-usb3.c         |   81 +-
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml      |    1 +
 drivers/staging/media/atomisp/pci/hmm/hmm.c        |    2 +-
 drivers/staging/most/net/net.c                     |    3 +-
 drivers/staging/most/sound/sound.c                 |    8 +-
 drivers/staging/most/video/video.c                 |    6 +-
 drivers/staging/mt7621-dma/Makefile                |    2 +-
 .../mt7621-dma/{mtk-hsdma.c =3D> hsdma-mt7621.c}     |    2 +-
 drivers/staging/mt7621-dts/mt7621.dtsi             |   58 +-
 drivers/staging/nvec/nvec_power.c                  |    2 +-
 drivers/staging/nvec/nvec_ps2.c                    |    4 +-
 drivers/staging/octeon/ethernet-mdio.c             |    9 +-
 drivers/staging/olpc_dcon/olpc_dcon.c              |    2 +-
 drivers/staging/qlge/Kconfig                       |    1 +
 drivers/staging/qlge/Makefile                      |    2 +-
 drivers/staging/qlge/TODO                          |   10 -
 drivers/staging/qlge/qlge.h                        |  244 +--
 drivers/staging/qlge/qlge_dbg.c                    | 1650 ++++++----------=
----
 drivers/staging/qlge/qlge_devlink.c                |  163 ++
 drivers/staging/qlge/qlge_devlink.h                |    9 +
 drivers/staging/qlge/qlge_ethtool.c                |  239 ++-
 drivers/staging/qlge/qlge_main.c                   | 1380 ++++++++--------
 drivers/staging/qlge/qlge_mpi.c                    |  356 +++--
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |   44 +-
 drivers/staging/rtl8188eu/include/wifi.h           |   65 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |    2 +-
 drivers/staging/rtl8188eu/os_dep/usb_intf.c        |    1 +
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c      |    2 +-
 drivers/staging/rtl8192e/Kconfig                   |    1 +
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     |    4 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |    4 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c         |    4 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c    |    6 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_ps.c         |    2 +-
 drivers/staging/rtl8192e/rtllib_rx.c               |    5 +-
 drivers/staging/rtl8192e/rtllib_softmac.c          |    3 +-
 drivers/staging/rtl8192e/rtllib_tx.c               |    8 +-
 drivers/staging/rtl8192e/rtllib_wx.c               |    2 -
 drivers/staging/rtl8192u/Kconfig                   |    1 +
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |    2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c  |   28 +-
 drivers/staging/rtl8192u/r8190_rtl8256.c           |    2 +-
 drivers/staging/rtl8192u/r8192U_core.c             |    2 +
 drivers/staging/rtl8712/rtl871x_debug.h            |    2 -
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |    2 +-
 drivers/staging/rtl8712/wifi.h                     |   14 -
 drivers/staging/rtl8723bs/core/rtw_security.c      |   24 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    |  225 +--
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |    2 +-
 drivers/staging/rtl8723bs/include/autoconf.h       |    1 -
 drivers/staging/rtl8723bs/include/hal_intf.h       |    8 +-
 drivers/staging/rtl8723bs/include/ieee80211.h      |   79 -
 drivers/staging/rtl8723bs/include/rtl8723b_hal.h   |   13 +-
 drivers/staging/rtl8723bs/include/rtl8723b_recv.h  |    8 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h       |    6 +-
 drivers/staging/rtl8723bs/include/wlan_bssdef.h    |    2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  |    2 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c      |    6 +-
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c       |    2 +-
 drivers/staging/sm750fb/sm750.c                    |    2 +-
 drivers/staging/unisys/visorhba/visorhba_main.c    |   90 +-
 drivers/staging/vc04_services/bcm2835-audio/TODO   |    2 +-
 .../vc04_services/bcm2835-audio/bcm2835-ctl.c      |    6 +-
 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      |    6 +-
 .../staging/vc04_services/bcm2835-audio/bcm2835.c  |    6 +-
 drivers/staging/vc04_services/interface/TODO       |    4 +
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |   22 +-
 .../interface/vchiq_arm/vchiq_connected.c          |    3 +-
 drivers/staging/vt6655/baseband.c                  |    4 +-
 drivers/staging/vt6655/rxtx.h                      |    8 +-
 drivers/staging/vt6656/rf.c                        |    2 +-
 drivers/staging/vt6656/rxtx.h                      |    6 +-
 drivers/staging/wfx/bh.c                           |    1 -
 drivers/staging/wfx/bh.h                           |    4 -
 drivers/staging/wfx/bus.h                          |    3 -
 drivers/staging/wfx/bus_sdio.c                     |    6 -
 drivers/staging/wfx/bus_spi.c                      |    7 -
 drivers/staging/wfx/data_rx.c                      |    5 -
 drivers/staging/wfx/data_tx.c                      |   15 +-
 drivers/staging/wfx/data_tx.h                      |    4 +-
 drivers/staging/wfx/debug.c                        |    6 -
 drivers/staging/wfx/fwio.c                         |    2 -
 drivers/staging/wfx/hif_api_cmd.h                  |    6 +-
 drivers/staging/wfx/hif_api_general.h              |    9 -
 drivers/staging/wfx/hif_tx.c                       |    4 -
 drivers/staging/wfx/hif_tx_mib.c                   |    5 -
 drivers/staging/wfx/hwio.c                         |    3 -
 drivers/staging/wfx/hwio.h                         |    2 -
 drivers/staging/wfx/key.c                          |    2 -
 drivers/staging/wfx/key.h                          |    2 -
 drivers/staging/wfx/main.c                         |    7 -
 drivers/staging/wfx/main.h                         |    3 -
 drivers/staging/wfx/queue.c                        |    4 -
 drivers/staging/wfx/queue.h                        |    3 -
 drivers/staging/wfx/scan.h                         |    2 -
 drivers/staging/wfx/sta.c                          |    6 -
 drivers/staging/wfx/sta.h                          |    2 -
 drivers/staging/wfx/traces.h                       |    3 -
 drivers/staging/wfx/wfx.h                          |    3 -
 drivers/staging/wimax/i2400m/fw.c                  |   17 +-
 drivers/staging/wimax/i2400m/netdev.c              |    6 +-
 drivers/staging/wimax/i2400m/rx.c                  |    7 +-
 drivers/staging/wimax/i2400m/tx.c                  |    8 +-
 drivers/staging/wimax/i2400m/usb.c                 |    4 +-
 drivers/staging/wlan-ng/p80211netdev.c             |   28 +-
 include/linux/fixp-arith.h                         |   19 +
 include/linux/hid-sensor-ids.h                     |   14 +
 .../linux}/iio/adc/qcom-vadc-common.h              |   28 +-
 include/linux/iio/consumer.h                       |   36 +
 include/linux/mfd/hi6421-spmi-pmic.h               |   29 +-
 206 files changed, 7079 insertions(+), 4438 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-dac-ad5766
 create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad5766.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/gyroscope/invense=
nse,mpu3050.txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/invense=
nse,mpu3050.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/imu/inv_mpu6050.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,mp=
u6050.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/yama=
ha,yas530.yaml
 create mode 100644 Documentation/networking/device_drivers/qlogic/index.rst
 create mode 100644 Documentation/networking/device_drivers/qlogic/qlge.rst
 create mode 100644 drivers/iio/dac/ad5766.c
 create mode 100644 drivers/iio/magnetometer/yamaha-yas530.c
 create mode 100644 drivers/iio/position/hid-sensor-custom-intel-hinge.c
 rename drivers/staging/mt7621-dma/{mtk-hsdma.c =3D> hsdma-mt7621.c} (99%)
 create mode 100644 drivers/staging/qlge/qlge_devlink.c
 create mode 100644 drivers/staging/qlge/qlge_devlink.h
 rename {drivers =3D> include/linux}/iio/adc/qcom-vadc-common.h (92%)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
