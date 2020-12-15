Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EF42DAAB0
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 11:17:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38EEF875FA;
	Tue, 15 Dec 2020 10:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypcnu1gI3kDI; Tue, 15 Dec 2020 10:16:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C70AF87058;
	Tue, 15 Dec 2020 10:16:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 925F01BF3FE
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 10:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 82AB686C7A
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 10:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWQtxU1PvJ3G for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 10:16:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3C5F886C15
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 10:16:47 +0000 (UTC)
Date: Tue, 15 Dec 2020 11:17:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608027406;
 bh=0FSTHIxE936yX5dffcMEqhcF61bWy+svMd88ZTH9c7U=;
 h=From:To:Cc:Subject:From;
 b=Cnac4VV24FznjqdGGQqtvN/cjnosPf4jtSWIm/ngZM/sL/9MglJ4rQdyqki0vOXJn
 ZTge2i62Pfzk7AZjwzuKX2pxcpLkO2QlHJiNwbGCbK4MyVsdgyP9yoQl+0HstKXPnK
 TKGzQ0CGEm/auhT33X1luLkpdx7Sz0rYHkieGeOY=
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver changes for 5.11-rc1
Message-ID: <X9iNTajXvwiLa1bV@kroah.com>
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

The following changes since commit 418baf2c28f3473039f2f7377760bd8f6897ae18:

  Linux 5.10-rc5 (2020-11-22 15:36:08 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.11-rc1

for you to fetch changes up to 4996b4610767064807d022dd731584f7ff78c309:

  staging: olpc_dcon: Do not call platform_device_unregister() in dcon_prob=
e() (2020-12-09 19:45:13 +0100)

----------------------------------------------------------------
Staging / IIO driver patches for 5.11-rc1

Here is the big staging and IIO driver pull request for 5.11-rc1

Lots of different things in here:
  - loads of driver updates
  - so many coding style cleanups
  - new IIO drivers
  - Android ION code is finally removed from the tree
  - wimax drivers are moved to staging on their way out of the kernel

Nothing really exciting, just the constant grind of kernel development :)

All have been in linux-next for a while with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alexandre Belloni (6):
      iio: adc: at91_adc: remove at91_adc_ids
      iio: adc: at91_adc: rework resolution selection
      dt-bindings:iio:adc:remove atmel, adc-res and atmel, adc-res-names
      iio: adc: at91_adc: rework trigger definition
      dt-bindings:iio:adc:remove triggers
      iio: adc: at91_adc: merge at91_adc_probe_dt back in at91_adc_probe

Alexandru Ardelean (25):
      iio: adc: at91_adc: use of_device_get_match_data() helper
      iio: adc: at91_adc: const-ify some driver data
      iio: adc: at91_adc: add Kconfig dep on the OF symbol and remove of_ma=
tch_ptr()
      iio: adc: at91_adc: remove platform data and move defs in driver file
      iio: adc: ad7887: invert/rework external ref logic
      iio: adc: ad7298: rework external ref setup & remove platform data
      iio: dac: ad7303: remove platform data header
      iio: core: centralize ioctl() calls to the main chardev
      iio: adc: ad7887: convert probe to device-managed functions
      iio: buffer: dmaengine: unwrap the use of iio_buffer_set_attrs()
      iio: adc: at91-sama5d2_adc: merge buffer & trigger init into a functi=
on
      iio: triggered-buffer: add {devm_}iio_triggered_buffer_setup_ext vari=
ants
      iio: accel: adxl372: use devm_iio_triggered_buffer_setup_ext()
      iio: accel: bmc150: use iio_triggered_buffer_setup_ext()
      iio: adc: at91-sama5d2_adc: use devm_iio_triggered_buffer_setup_ext()
      iio: cros_ec: use devm_iio_triggered_buffer_setup_ext()
      iio: hid-sensors: use iio_triggered_buffer_setup_ext()
      iio: buffer: remove iio_buffer_set_attrs() helper
      iio: adc: ad7292: remove unneeded spi_set_drvdata()
      iio: accel: adis16201: remove unneeded spi_set_drvdata()
      iio: accel: adis16209: remove unneeded spi_set_drvdata()
      iio: core: organize buffer file-ops in the order defined in the struct
      iio: core: return -EINVAL when no ioctl handler has been run
      iio: adc: ad7298: convert probe to device-managed functions
      iio: adc: ad7298: check regulator for null in ad7298_get_ref_voltage()

Amarjargal Gundjalam (3):
      staging: rtl8723bs: cleanup NULL check before vfree
      staging: vc04_services: fix block comment style
      staging: vc04_services: fix quoted string split across lines

Anand Ashok Dumbre (1):
      iio: core: Fix IIO_VAL_FRACTIONAL calculation for negative values

Andy Shevchenko (1):
      staging: fieldbus: Use %pM format specifier for MAC addresses

Arnd Bergmann (3):
      wimax: fix duplicate initializer warning
      wimax: move out to staging
      staging: bcm2835: fix vchiq_mmal dependencies

Bhaskar Chowdhury (1):
      drivers: staging: rtl8188eu: Fix spelling in two comments i.e defalut=
 to default

Brother Matthew De Angelis (4):
      Staging: rtl8723bs/core fix brace coding style issues in rtw_ioctl_se=
t.c
      Staging: rtl8723bs/core: delete empty if statement
      Staging: rtl8723bs/core: fix brace coding style issue
      Staging: rtl8723bs/core: add blank line after declarations

Christian Gromm (1):
      drivers: staging: most: use swabXX functions of kernel

Colin Ian King (2):
      staging: wfx: make a const array static, makes object smaller
      staging: most: Fix spelling mistake "tranceiver" -> "transceiver"

Cristian Pop (5):
      iio: core: Add optional symbolic label to a device channel
      iio:Documentation: Add documentation for label channel attribute
      iio: adc: ad7768-1: Add channel labels.
      dt-bindings:iio:adc:adi,ad7768-1: Add documentation for channel label
      dt-bindings:iio:adc:adc.txt: Add documentation for channel label attr=
ibute

David Gow (1):
      staging: hikey9xx: Specify HAS_IOMEM dependency for MFD_HI6421_SPMI

Deepak R Varma (12):
      staging: iio: adis16240: add blank line before struct definition
      staging: iio: adis16240: add blank line before struct definition
      staging: qlge: remove extra blank lines
      staging: comedi: tests: Simplify conditional evaluation
      staging: rtl8188eu: rearrange lines exceeding 100 columns
      staging: vt6655: rearrange lines exceeding 100 columns
      staging: kpc2000: rearrange lines exceeding 100 columns
      staging: kpc2000: re-indent code for better readability
      staging: kpc2000: Use BIT macro instead of bit masking
      staging: greybus: audio: code indentation and formatting changes
      staging: kpc2000: kpc_dma: rearrange lines exceeding 100 columns
      staging: kpc2000: kpc_dma: rename show function per convention

Ding Xiang (1):
      staging: fieldbus: use kobj_to_dev() to get device

Eduard Vintila (1):
      staging: rtl8192e: Braces should be used on all arms of statement

Elena Afanasova (5):
      staging/rtl8192u/ieee80211: use __func__ macro
      staging/rtl8192u/ieee80211: remove debugging line
      staging/qlge: add blank line after declaration
      staging/qlge: fix typo
      staging/rtl8723bs: replace "foo * bar" with "foo *bar"

Fabien Parent (1):
      dt-bindings: iio: adc: auxadc: add doc for MT8516 SoC

Fabrice Gasnier (1):
      iio: adc: stm32-adc: adapt clock duty cycle for proper operation

Gene Chen (3):
      dt-bindings: iio: adc: add bindings doc for MT6360 ADC
      Documentation: ABI: testing: mt6360: Add ADC sysfs guideline
      iio: adc: mt6360: Add ADC driver for MT6360

Greg Kroah-Hartman (6):
      staging: ion: remove from the tree
      Merge tag 'wimax-staging' of git://git.kernel.org:/.../arnd/playgroun=
d into staging-next
      Merge 5.10-rc2 into staging-next
      Merge 5.10-rc5 into staging-testing
      Merge tag 'iio-for-5.11a' of https://git.kernel.org/.../jic23/iio int=
o staging-next
      Merge tag 'iio-for-5.11b-take2' of https://git.kernel.org/.../jic23/i=
io into staging-next

Gustavo A. R. Silva (5):
      iio: adc: cpcap: Fix fall-through warnings for Clang
      staging: rtl8723bs: core: Fix fall-through warnings for Clang
      staging: vt6655: Fix fall-through warnings for Clang
      staging: qlge: Fix fall-through warnings for Clang
      staging: vt6656: Fix fall-through warnings for Clang

Hans de Goede (2):
      iio: accel: bmc150: Removed unused bmc150_accel_dat irq member
      iio: accel: bmc150: Get mount-matrix from ACPI

Ian Abbott (1):
      staging: comedi: mf6x4: Fix AI end-of-conversion detection

Ioana Ciornei (2):
      staging: dpaa2-switch: make sure that the VLAN is not already configu=
red
      staging: dpaa2-switch: pack the firmware command structures

Ionut-robert Aron (1):
      staging: dpaa2-switch: export the 'no buffer' counter in ethtool

Ivan Safonov (3):
      staging: rtl8723bs: remove unnecessary type cast of rtw_netdev_priv()=
 result
      staging: r8188eu: use native wireless IE codes from linux/ieee80211.h
      staging: r8188eu: inline rtw_init_netdev_name()

Izabela Bakollari (2):
      staging: rtl8723bs: Rewrite comparison to NULL
      staging/wlan-ng: Fix line alignment

Jeremy Cline (1):
      iio: accel: bmc150: Check for a second ACPI device for BOSC0200

Jing Xiangfeng (2):
      staging: gasket: interrupt: fix the missed eventfd_ctx_put() in gaske=
t_interrupt.c
      staging: olpc_dcon: Do not call platform_device_unregister() in dcon_=
probe()

Jonathan Cameron (108):
      dt-bindings: iio: adc: ti,adc084s021 yaml conversion
      dt-bindings:iio:humidity:hdc100x Drop separate doc + add to trivial-d=
evices
      dt-bindings:iio:humidity:htu21 Drop separate doc + add to trivial-dev=
ices
      dt-bindings:iio:humidity:st,hts221 yaml conversion.
      dt-bindings:iio:humidity:dht11 yaml conversion
      dt-bindings:iio:pressure:ms5637 Drop separate doc + add to trivial-de=
vices
      dt-bindings:iio:pressure:murata,zpa2326 yaml conversion
      dt-bindings:iio:pressure:meas,ms5611 yaml conversion.
      dt-bindings:iio:pressure:hoperf,hp03 yaml conversion
      dt-bindings:iio:proximity:semtech,sx9500 yaml conversion.
      dt-bindings:iio:proximity:st,vl53l0x yaml conversion
      dt-bindings:iio:proximity:ams,as3935 yaml conversion
      dt-bindings:iio:dac:ti,dac5571 yaml conversion.
      dt-bindings:iio:dac:ti,dac7311 yaml conversion
      dt-bindings:iio:dac:ti,dac7512 yaml conversion
      dt-bindings:iio:dac:ti,dac7612 yaml conversion
      dt-bindings:iio:dac:adi,ad7303 yaml conversion
      dt-bindings:iio:dac:maxim,ds4424 yaml conversion
      dt-bindings:iio:dac:fsl,vf610-dac yaml conversion
      dt-bindings:iio:dac:microchip,mcp4725 yaml conversion
      dt-bindings:iio:dac:maxim,max5821 yaml conversion
      dt-bindings:iio:dac:nxp,lpc1850-dac yaml conversion.
      dt-bindings:iio:dac:adi,ad5758 yaml conversion
      dt-bindings:iio:temperature:melexis,mlx90614 yaml conversion
      dt-bindings:iio:temperature:melexis,mlx90632 conversion to yaml
      dt-bindings:iio:temperature:meas,tsys01 move to trivial-devices.yaml
      dt-bindings:iio:temperature:maxim,max31856 yaml conversion.
      dt-bindings:iio:temperature:maxim_thermocouple.txt to maxim,max31855k=
.yaml
      dt-bindings:iio:temperature:ti,tmp07 yaml conversion
      dt-bindings:iio:chemical:sensirion,sgp30: Move to trivial-bindings.ya=
ml
      dt-bindings:iio:chemical:bosch,bme680: Move to trivial devices
      dt-bindings:iio:potentiometer:maxim,ds1803 move to trivial devices.
      dt-bindings:iio:potentiometer:maxim,max5481 move to trivial devices
      dt-bindings:iio:light:renesas,isl29501: Move to trivial devices.
      dt-bindings:iio:magnetometer:memsic,mmc35240: move to trivial-devices=
.yaml
      dt-bindings:iio:accel:domintech,dmard06: Move to trivial-devices.yaml
      dt-bindings:iio:resolver:adi,ad2s90: Conversion of binding to yaml.
      dt-bindings:iio:potentiometer:microchip,mcp4131 txt to yaml conversion
      dt-bindings:iio:potentiometer:adi,ad5272 yaml conversion
      dt-bindings:iio:potentiometer:microchip,mcp41010 txt to yaml conversi=
on
      dt-bindings:iio:impedance-analyzer:adi,ad5933 yaml conversion.
      dt-bindings:iio:samsung,sensorhub-rinato: yaml conversion
      dt-bindings:iio:health:maxim,max30100: txt to yaml conversion
      dt-bindings:iio:health:maxim,max30102: txt to yaml conversion
      dt-bindings:iio:imu:adi,adis16480: txt to yaml conversion
      dt-bindings:iio:imu:st,lsm6dsx: txt to yaml conversion
      dt-bindings:iio:light:avago,apds9300: txt to yaml conversion.
      dt-bindings:iio:light:avago,apds9960: txt to yaml conversion
      dt-bindings:iio:light:capella,cm36651: txt to yaml conversion.
      dt-bindings:iio:light:sharp,gp2ap020a00f: txt to yaml conversion.
      dt-bindings:iio:light:maxim,max44009: txt to yaml conversion.
      dt-bindings:iio:light:ti,opt3001: txt to yaml conversion
      dt-bindings:iio:light:upisemi,us51882: txt to yaml conversion.
      dt-bindings:iio:light:st,uvis25: txt to yaml conversion for this UV s=
ensor
      dt-bindings:iio:light:vishay,vcnl4035: txt to yaml conversion
      dt-bindings:iio:light:st,vl6180: txt to yaml format conversion.
      dt-bindings:iio:magnetometer:fsl,mag3110: txt to yaml conversion
      dt-bindings:iio:magnetometer:asahi-kasei,ak8974: txt to yaml format c=
onversion
      dt-bindings:iio:magnetometer:bosch,bmc150_magn: txt to yaml conversio=
n.
      dt-bindings:iio:magnetometer:honeywell,hmc5843: txt to yaml format co=
nversion
      dt-bindings:iio:magnetometer:pni,rm3100: txt to yaml conversion.
      dt-bindings:iio:adc:atmel,sama5d2-adc: txt to yaml conversion
      dt-bindings:iio:adc:renesas,rcar-gyroadc: txt to yaml conversion.
      dt-bindings:iio:adc:x-powers,axp209-adc: txt to yaml conversion
      dt-bindings:iio:adc:brcm,iproc-static-adc: txt to yaml conversion
      dt-bindings:iio:adc:mediatek,mt2701-auxadc: rename and yaml conversio=
n.
      dt-bindings:iio:adc:ti,palmas-gpadc: txt to yaml format conversion.
      dt-bindings:iio:adc:qcom,pm8018-adc: yaml conversion and rename.
      dt-bindings:iio:adc:qcom,spmi-iadc: txt to yaml format conversion.
      dt-binding:iio:adc:ti,ads124s08: txt to yaml format conversion.
      dt-bindings:iio:dac:ad5592r: txt to yaml format conversion.
      dt-bindings:iio:accel:bosch,bma180: txt to yaml format conversion.
      dt-bindings:iio:accel:kionix,kxcjk1013: txt to yaml format conversion.
      dt-bindings:iio:accel:fsl,mma8452: txt to yaml conversion.
      dt-bindings:iio:gyro:bosch,bmg180: txt to yaml format conversion.
      dt-bindings:iio:st,st-sensors: txt to yaml conversion.
      dt-bindings:iio:frequency:adi,adf4350: txt to yaml format conversion.
      dt-bindings:iio:temperature: Drop generic binding file.
      dt-bindings:iio:qcom-spmi-vadc drop incorrect io-channel-ranges from =
example
      dt-bindings:iio:samsung, exynos-adc: drop missuse of io-channel-ranges
      dt-bindings:iio:health:ti,afe4403: txt to yaml binding
      dt-bindings:iio:health:ti,afe4404: txt to yaml conversion
      dt-bindings:iio:adc: convert adc.txt to yaml
      dt-bindings:iio:adc:adi,ad7124: Use the new adc.yaml channel binding
      dt-bindings:iio:adc:adi,ad7292: Use new adc.yaml binding for channels.
      dt-bindings:iio:iio-binding.txt Drop file as content now in dt-schema
      dt-bindings:iio:dac:dpot-dac: yaml conversion.
      dt-bindings:iio:potentiometer: give microchip,mcp4531 its own binding
      dt-bindings:iio:adc:envelope-detector: txt to yaml conversion.
      dt-bindings:iio:afe:current-sense-amplifier: txt to yaml conversion.
      dt-bindings:iio:afe:current-sense-shunt: txt to yaml conversion.
      dt-bindings:iio:adc:maxim,max1027: Pull out to separate binding doc.
      dt-bindings:iio:afe:voltage-divider: txt to yaml conversion
      dt-bindings:iio:light:capella,cm3605: txt to yaml conversion.
      dt-bindings:iio:potentiostat:ti,lmp91000: txt to yaml conversion.
      dt-bindings:iio:adc:atmel, sama9260-adc: conversion to yaml from at91=
_adc.txt
      iio: Fix: Do not poll the driver again if try_reenable() callback ret=
urns non 0.
      iio:trigger: rename try_reenable() to reenable() plus return void
      iio:adc:ti-adc084s021 Tidy up endian types
      iio:light:rpr0521: Fix timestamp alignment and prevent data leak.
      iio:light:st_uvis25: Fix timestamp alignment and prevent data leak.
      iio:magnetometer:mag3110: Fix alignment and data leak issues.
      iio:imu:bmi160: Fix too large a buffer.
      iio:imu:bmi160: Fix alignment and data leak issues
      iio:pressure:mpl3115: Force alignment of buffer
      iio:adc:ti-ads124s08: Fix buffer being too long.
      iio:adc:ti-ads124s08: Fix alignment and data leak issues.
      iio:gyro:mpu3050 Treat otp value as a __le64 and use FIELD_GET() to b=
reak up

Jonathan Neusch=E4fer (1):
      MAINTAINERS: Fix 'W:' prefix in Invensense IMU entry

Juan Antonio Aldea-Armenteros (1):
      staging: trivial: hikey9xx: fix be32<->u32 casting warnings

Kaixu Xia (2):
      staging: rtl8188eu: clean up the useless code
      staging: rtl8723bs: remove redundant statements

Lars-Peter Clausen (5):
      iio: ad_sigma_delta: Don't put SPI transfer buffer on the stack
      iio: core: Consolidate iio_format_avail_{list,range}()
      iio: core: Simplify iio_format_list()
      iio: hrtimer-trigger: Mark hrtimer to expire in hard interrupt context
      iio: sysfs-trigger: Mark irq_work to expire in hardirq context

Lee Jones (6):
      staging: net: wimax: i2400m: control: Fix some misspellings in i2400m=
_set_init_config()'s docs
      staging: net: wimax: i2400m: driver: Demote some non-conformant kerne=
l-docs, fix others
      staging: net: wimax: i2400m: fw: Fix some function header misdemeanou=
rs
      staging: net: wimax: i2400m: netdev: Demote non-conformant function h=
eader
      staging: net: wimax: i2400m: tx: Fix a few kernel-doc misdemeanours
      staging: net: wimax: i2400m: fw: Fix incorrectly spelt function param=
eter in documentation

Lino Sanfilippo (2):
      iio:core: Introduce unlocked version of iio_map_array_unregister()
      io:core: In iio_map_array_register() cleanup in case of error

Linus Walleij (3):
      iio: accel: bmc150-accel: Add DT bindings
      iio: accel: bmc150-accel: Add support for BMA222
      iio: accel: bmc150-accel: Add rudimentary regulator support

Lorenzo Bianconi (10):
      iio: imu: st_lsm6dsx: add support to LSM6DST
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6dst device bindings
      iio: imu: st_lsm6dsx: add vdd-vddio voltage regulator
      dt-bindings: iio: imu: st_lsm6dsx: introduce vdd-vddio regulators bin=
dings
      iio: humidity: hts221: add vdd voltage regulator
      dt-bindings: iio: humidity: hts221: introduce vdd regulator bindings
      iio: imu: st_lsmdsx: compact st_lsm6dsx_sensor_settings table
      iio: imu: st_lsm6dsx: add support to LSM6DSOP
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6dsop device bindings
      iio: imu: st_lsm6dsx: fix edge-trigger interrupts

Manuel Palenzuela (2):
      Staging: rtl8723bs: core: rtw_cmd: Fixed multiple brace coding style =
issues
      Staging: rtl8723bs: core: rtw_cmd: Fixed four if-statement coding sty=
le issues

Marcos Antonio de Jesus Filho (2):
      staging: vt6655: Fix typo
      staging: vt6655: Remove useless else

Mauro Carvalho Chehab (1):
      iio: fix a kernel-doc markup

Michael Auchter (3):
      iio: dac: ad5686: add support for AD5338R
      iio: dac: ad5686: add of_match_table
      dt-bindings: iio: dac: ad5686: add binding

Michael Straube (1):
      staging: rtl8188eu: remove commented defines

Misha Gusarov (1):
      staging: gdm724x: Clarify naming of packet_type<->tty index symbols

Nicholas Warfield (1):
      staging: qlge: remove duplicate word in comment

Nuno S=E1 (2):
      iio: buffer: Return error if no callback is given
      iio: buffer: Fix demux update

Olivier Moysan (2):
      iio: adc: stm32-adc: dma transfers cleanup
      ASoC: stm32: dfsdm: add stm32_adfsdm_dummy_cb() callback

Phil Reid (1):
      iio: potentiometer: ad5272: Correct polarity of reset

Qinglang Miao (2):
      staging: ks7010: fix missing destroy_workqueue() on error in ks7010_s=
dio_probe
      iio: adc: rockchip_saradc: fix missing clk_disable_unprepare() on err=
or in rockchip_saradc_resume

Randy Dunlap (1):
      staging: wimax: depends on NET

Rikard Falkeborn (1):
      iio: accel: mma8452: Constify static struct attribute_group

Roman Kiryanov (1):
      drivers: staging: retire drivers/staging/goldfish

Ross Schmidt (49):
      staging: rtl8723bs: remove MAC_FMT macro
      staging: rtl8723bs: use %pM format for MAC addresses
      staging: rtl8723bs: remove IP_FMT macro
      staging: rtl8723bs: remove NDEV_FMT macro
      staging: rtl8723bs: remove ADPT_FMT macro
      staging: rtl8723bs: replace rtw_ieee80211_ht_cap
      staging: rtl8723bs: replace rtw_ieee80211_spectrum_mgmt_actioncode
      staging: rtl8723bs: replace rtw_ieee80211_ht_actioncode
      staging: rtl8723bs: replace ieee80211_back_actioncode
      staging: rtl8723bs: clean up line spacing
      staging: rtl8723bs: clean up braces
      staging: rtl8723bs: clean up space before tabs
      staging: rtl8723bs: clean up open ended lines
      staging: rtl8723bs: clean up open braces
      staging: rtl8723bs: clean up switch case indentation
      staging: rtl8723bs: clean up trailing statements
      staging: rtl8723bs: clean up logical continuations
      staging: rtl8723bs: clean up pointer locations
      staging: rtl8723bs: clean up leading space
      staging: rtl8723bs: replace unique macros and WIFI_STATUS_CODE
      staging: rtl8723bs: replace WIFI_REASON_CODE
      staging: rtl8723bs: replace cap_* macros
      staging: rtl8723bs: replace HT_CAP_AMPDU_FACTOR
      staging: rtl8723bs: replace OP_MODE_* and HT_INFO_OPERATION_MODE_* ma=
cros
      staging: rtl8723bs: remove WLAN_HT_CAP_SM_PS_* macros
      staging: rtl8723bs: replace RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK
      staging: rtl8723bs: remove unused macros
      staging: rtl8723bs: remove LIST_CONTAINOR
      staging: rtl8723bs: use WLAN_EID_HT_CAPABILITY
      staging: rtl8723bs: use WLAN_EID_VENDOR_SPECIFIC
      staging: rtl8723bs: use WLAN_EID_RSN
      staging: rtl8723bs: use WLAN_EID_HT_OPERATION
      staging: rtl8723bs: replace WLAN_EID_VHT_OP_MODE_NOTIFY
      staging: rtl8723bs: replace _SSID_IE_
      staging: rtl8723bs: replace _SUPPORTEDRATES_IE_
      staging: rtl8723bs: replace _DSSET_IE_
      staging: rtl8723bs: replace _TIM_IE_
      staging: rtl8723bs: replace _IBSS_PARA_IE_
      staging: rtl8723bs: replace _COUNTRY_IE_
      staging: rtl8723bs: replace _CHLGETXT_IE_
      staging: rtl8723bs: replace _ERPINFO_IE_
      staging: rtl8723bs: replace _EXT_SUPPORTEDRATES_IE_
      staging: rtl8723bs: replace _WAPI_IE_
      staging: rtl8723bs: replace _MME_IE_
      staging: rtl8723bs: replace EID_BSSCoexistence
      staging: rtl8723bs: replace EID_BSSIntolerantChlReport
      staging: rtl8723bs: replace EID_EXTCapability
      staging: rtl8723bs: remove unused macros
      staging: rtl8723bs: remove ELEMENT_ID enum

Rui Miguel Silva (1):
      dt-bindings: fxas21002c: convert bindings to yaml

Sergio Paracuellos (10):
      staging: mt7621-pci: remove bus ranges related code
      staging: mt7621-pci: remove 'offset' with mem and io resource sizes
      staging: mt7621-pci: add comment to clarify IO resource in this driver
      staging: mt7621-pci: review 'pci_host_bridge' assigned variables
      staging: mt7621-pci: parse and prepare resources in 'mt7621_pci_parse=
_request_of_pci_ranges'
      staging: mt7621-pci: convert to use 'devm_platform_ioremap_resource'
      staging: mt7621-pci: remove 'RALINK_PCI_IMBASEBAR0_ADDR' register
      staging: mt7621-pinctrl: stop using the deprecated 'pinctrl_add_gpio_=
range'
      dt-bindings: pinctrl: rt2880: add binding document
      pinctrl: ralink: add a pinctrl driver for the rt2880 family

Siddhant Gupta (2):
      Staging: mt7621-pci: Fix alignment warnings
      staging: mt7621-dma: fix alignment warnings

Stephen Boyd (6):
      iio: sx9310: Support hardware gain factor
      iio: sx9310: Support setting proximity thresholds
      iio: sx9310: Support setting hysteresis values
      iio: sx9310: Support setting debounce values
      dt-bindings: iio: sx9310: Add various settings as DT properties
      iio: sx9310: Set various settings from DT

Tabot Kevin (1):
      staging: greybus: Fixed issues with alignment to open parenthesis.

Tom Rix (6):
      iio: light: apds9960: remove unneeded semicolon
      iio/adc: ingenic: remove unneeded semicolon
      iio: adc: at91-sama5d2_adc: remove unneeded semicolon
      iio: pressure: bmp280: remove unneeded semicolon
      iio: magnetometer: bmc150: remove unneeded semicolon
      iio: remove unneeded break

Uwe Kleine-K=F6nig (1):
      staging: greybus: Add TODO item about modernizing the pwm code

Vaishnav M A (3):
      iio: proximity: vl53l0x-i2c add i2c_device_id
      iio: light: vcnl4035 add i2c_device_id
      iio:light:tsl2563 use generic fw accessors

Vasily Utkin (1):
      staging: comedi: ni_mio_common: Fix newline after dereference operator

Wang Hai (2):
      staging: mfd: hi6421-spmi-pmic: fix error return code in hi6421_spmi_=
pmic_probe()
      staging: greybus: audio: Fix possible leak free widgets in gbaudio_da=
pm_free_controls

William Breathitt Gray (2):
      MAINTAINERS: Add Kamel Bouhara as TCB counter driver maintainer
      counter: microchip-tcb-capture: Fix CMR value check

Zhang Qilong (2):
      staging: rtl8192u: fix wrong judgement in rtl8192_rx_isr
      staging: greybus: codecs: Fix reference counter leak in error handling

dmitry.torokhov@gmail.com (1):
      iio: adc: exynos: do not rely on 'users' counter in ISR

 Documentation/ABI/testing/sysfs-bus-iio            |  10 +
 Documentation/ABI/testing/sysfs-bus-iio-adc-mt6360 |  78 +++
 Documentation/admin-guide/index.rst                |   1 -
 .../devicetree/bindings/iio/accel/bma180.txt       |  35 --
 .../bindings/iio/accel/bosch,bma180.yaml           |  62 ++
 .../bindings/iio/accel/bosch,bma255.yaml           |  73 +++
 .../devicetree/bindings/iio/accel/dmard06.txt      |  19 -
 .../devicetree/bindings/iio/accel/fsl,mma8452.yaml |  65 +++
 .../bindings/iio/accel/kionix,kxcjk1013.txt        |  24 -
 .../bindings/iio/accel/kionix,kxcjk1013.yaml       |  46 ++
 .../devicetree/bindings/iio/accel/mma8452.txt      |  35 --
 Documentation/devicetree/bindings/iio/adc/adc.txt  |  23 -
 Documentation/devicetree/bindings/iio/adc/adc.yaml |  42 ++
 .../devicetree/bindings/iio/adc/adi,ad7124.yaml    |  14 +-
 .../devicetree/bindings/iio/adc/adi,ad7292.yaml    |   8 +-
 .../devicetree/bindings/iio/adc/adi,ad7768-1.yaml  |  32 +
 .../bindings/iio/adc/at91-sama5d2_adc.txt          |  50 --
 .../devicetree/bindings/iio/adc/at91_adc.txt       |  83 ---
 .../bindings/iio/adc/atmel,sama5d2-adc.yaml        | 101 ++++
 .../bindings/iio/adc/atmel,sama9260-adc.yaml       | 121 ++++
 .../devicetree/bindings/iio/adc/axp20x_adc.txt     |  48 --
 .../bindings/iio/adc/brcm,iproc-static-adc.txt     |  40 --
 .../bindings/iio/adc/brcm,iproc-static-adc.yaml    |  70 +++
 .../bindings/iio/adc/envelope-detector.txt         |  54 --
 .../bindings/iio/adc/envelope-detector.yaml        |  86 +++
 .../devicetree/bindings/iio/adc/maxim,max1027.yaml |  65 +++
 .../bindings/iio/adc/mediatek,mt2701-auxadc.yaml   |  77 +++
 .../bindings/iio/adc/mediatek,mt6360-adc.yaml      |  31 +
 .../devicetree/bindings/iio/adc/mt6577_auxadc.txt  |  33 --
 .../devicetree/bindings/iio/adc/palmas-gpadc.txt   |  48 --
 .../bindings/iio/adc/qcom,pm8018-adc.yaml          | 166 ++++++
 .../bindings/iio/adc/qcom,pm8xxx-xoadc.txt         | 157 -----
 .../devicetree/bindings/iio/adc/qcom,spmi-iadc.txt |  46 --
 .../bindings/iio/adc/qcom,spmi-iadc.yaml           |  60 ++
 .../bindings/iio/adc/qcom,spmi-vadc.yaml           |   3 -
 .../bindings/iio/adc/renesas,gyroadc.txt           |  98 ----
 .../bindings/iio/adc/renesas,rcar-gyroadc.yaml     | 143 +++++
 .../bindings/iio/adc/samsung,exynos-adc.yaml       |   4 -
 .../devicetree/bindings/iio/adc/ti,adc084s021.yaml |  58 ++
 .../devicetree/bindings/iio/adc/ti,ads124s08.yaml  |  52 ++
 .../bindings/iio/adc/ti,palmas-gpadc.yaml          |  87 +++
 .../devicetree/bindings/iio/adc/ti-adc084s021.txt  |  19 -
 .../devicetree/bindings/iio/adc/ti-ads124s08.txt   |  25 -
 .../bindings/iio/adc/x-powers,axp209-adc.yaml      |  67 +++
 .../bindings/iio/afe/current-sense-amplifier.txt   |  26 -
 .../bindings/iio/afe/current-sense-amplifier.yaml  |  54 ++
 .../bindings/iio/afe/current-sense-shunt.txt       |  41 --
 .../bindings/iio/afe/current-sense-shunt.yaml      |  64 ++
 .../bindings/iio/afe/voltage-divider.txt           |  53 --
 .../bindings/iio/afe/voltage-divider.yaml          |  86 +++
 .../devicetree/bindings/iio/chemical/bme680.txt    |  11 -
 .../bindings/iio/chemical/sensirion,sgp30.txt      |  15 -
 .../devicetree/bindings/iio/dac/ad5592r.txt        | 155 -----
 .../devicetree/bindings/iio/dac/ad5758.txt         |  83 ---
 .../devicetree/bindings/iio/dac/ad7303.txt         |  23 -
 .../devicetree/bindings/iio/dac/adi,ad5592r.yaml   | 204 +++++++
 .../devicetree/bindings/iio/dac/adi,ad5686.yaml    |  57 ++
 .../devicetree/bindings/iio/dac/adi,ad5758.yaml    | 129 ++++
 .../devicetree/bindings/iio/dac/adi,ad7303.yaml    |  50 ++
 .../devicetree/bindings/iio/dac/dpot-dac.txt       |  41 --
 .../devicetree/bindings/iio/dac/dpot-dac.yaml      |  64 ++
 .../devicetree/bindings/iio/dac/ds4424.txt         |  20 -
 .../devicetree/bindings/iio/dac/fsl,vf610-dac.yaml |  55 ++
 .../devicetree/bindings/iio/dac/lpc1850-dac.txt    |  19 -
 .../devicetree/bindings/iio/dac/max5821.txt        |  14 -
 .../devicetree/bindings/iio/dac/maxim,ds4424.yaml  |  45 ++
 .../devicetree/bindings/iio/dac/maxim,max5821.yaml |  44 ++
 .../devicetree/bindings/iio/dac/mcp4725.txt        |  35 --
 .../bindings/iio/dac/microchip,mcp4725.yaml        |  71 +++
 .../bindings/iio/dac/nxp,lpc1850-dac.yaml          |  58 ++
 .../devicetree/bindings/iio/dac/ti,dac5571.txt     |  24 -
 .../devicetree/bindings/iio/dac/ti,dac5571.yaml    |  52 ++
 .../devicetree/bindings/iio/dac/ti,dac7311.txt     |  23 -
 .../devicetree/bindings/iio/dac/ti,dac7311.yaml    |  49 ++
 .../devicetree/bindings/iio/dac/ti,dac7512.txt     |  20 -
 .../devicetree/bindings/iio/dac/ti,dac7512.yaml    |  42 ++
 .../devicetree/bindings/iio/dac/ti,dac7612.txt     |  28 -
 .../devicetree/bindings/iio/dac/ti,dac7612.yaml    |  53 ++
 .../devicetree/bindings/iio/dac/vf610-dac.txt      |  20 -
 .../devicetree/bindings/iio/frequency/adf4350.txt  |  86 ---
 .../bindings/iio/frequency/adi,adf4350.yaml        | 190 ++++++
 .../devicetree/bindings/iio/gyroscope/bmg160.txt   |  20 -
 .../bindings/iio/gyroscope/bosch,bmg160.yaml       |  46 ++
 .../bindings/iio/gyroscope/nxp,fxas21002c.txt      |  31 -
 .../bindings/iio/gyroscope/nxp,fxas21002c.yaml     |  95 +++
 .../devicetree/bindings/iio/health/afe4403.txt     |  33 --
 .../devicetree/bindings/iio/health/afe4404.txt     |  29 -
 .../devicetree/bindings/iio/health/max30100.txt    |  28 -
 .../devicetree/bindings/iio/health/max30102.txt    |  33 --
 .../bindings/iio/health/maxim,max30100.yaml        |  52 ++
 .../bindings/iio/health/maxim,max30102.yaml        |  72 +++
 .../devicetree/bindings/iio/health/ti,afe4403.yaml |  54 ++
 .../devicetree/bindings/iio/health/ti,afe4404.yaml |  51 ++
 .../devicetree/bindings/iio/humidity/dht11.txt     |  14 -
 .../devicetree/bindings/iio/humidity/dht11.yaml    |  41 ++
 .../devicetree/bindings/iio/humidity/hdc100x.txt   |  17 -
 .../devicetree/bindings/iio/humidity/hts221.txt    |  30 -
 .../devicetree/bindings/iio/humidity/htu21.txt     |  13 -
 .../bindings/iio/humidity/st,hts221.yaml           |  54 ++
 .../devicetree/bindings/iio/iio-bindings.txt       | 102 ----
 .../bindings/iio/impedance-analyzer/ad5933.txt     |  26 -
 .../iio/impedance-analyzer/adi,ad5933.yaml         |  59 ++
 .../devicetree/bindings/iio/imu/adi,adis16480.txt  |  86 ---
 .../devicetree/bindings/iio/imu/adi,adis16480.yaml | 130 +++++
 .../devicetree/bindings/iio/imu/st,lsm6dsx.yaml    |  93 +++
 .../devicetree/bindings/iio/imu/st_lsm6dsx.txt     |  48 --
 .../devicetree/bindings/iio/light/apds9300.txt     |  21 -
 .../devicetree/bindings/iio/light/apds9960.txt     |  21 -
 .../bindings/iio/light/avago,apds9300.yaml         |  44 ++
 .../bindings/iio/light/avago,apds9960.yaml         |  44 ++
 .../bindings/iio/light/capella,cm3605.yaml         |  79 +++
 .../bindings/iio/light/capella,cm36651.yaml        |  48 ++
 .../devicetree/bindings/iio/light/cm3605.txt       |  41 --
 .../devicetree/bindings/iio/light/cm36651.txt      |  26 -
 .../devicetree/bindings/iio/light/gp2ap020a00f.txt |  21 -
 .../devicetree/bindings/iio/light/max44009.txt     |  24 -
 .../bindings/iio/light/maxim,max44009.yaml         |  45 ++
 .../devicetree/bindings/iio/light/opt3001.txt      |  25 -
 .../bindings/iio/light/renesas,isl29501.txt        |  13 -
 .../bindings/iio/light/sharp,gp2ap020a00f.yaml     |  48 ++
 .../devicetree/bindings/iio/light/st,uvis25.yaml   |  42 ++
 .../devicetree/bindings/iio/light/st,vl6180.yaml   |  45 ++
 .../devicetree/bindings/iio/light/ti,opt3001.yaml  |  47 ++
 .../bindings/iio/light/upisemi,us5182.yaml         |  78 +++
 .../devicetree/bindings/iio/light/us5182d.txt      |  45 --
 .../devicetree/bindings/iio/light/uvis25.txt       |  22 -
 .../devicetree/bindings/iio/light/vcnl4035.txt     |  18 -
 .../bindings/iio/light/vishay,vcnl4035.yaml        |  45 ++
 .../devicetree/bindings/iio/light/vl6180.txt       |  15 -
 .../bindings/iio/magnetometer/ak8974.txt           |  31 -
 .../iio/magnetometer/asahi-kasei,ak8974.yaml       |  57 ++
 .../bindings/iio/magnetometer/bmc150_magn.txt      |  25 -
 .../iio/magnetometer/bosch,bmc150_magn.yaml        |  55 ++
 .../bindings/iio/magnetometer/fsl,mag3110.yaml     |  48 ++
 .../bindings/iio/magnetometer/hmc5843.txt          |  21 -
 .../iio/magnetometer/honeywell,hmc5843.yaml        |  43 ++
 .../bindings/iio/magnetometer/mag3110.txt          |  27 -
 .../bindings/iio/magnetometer/mmc35240.txt         |  13 -
 .../bindings/iio/magnetometer/pni,rm3100.txt       |  20 -
 .../bindings/iio/magnetometer/pni,rm3100.yaml      |  42 ++
 .../bindings/iio/potentiometer/ad5272.txt          |  27 -
 .../bindings/iio/potentiometer/adi,ad5272.yaml     |  50 ++
 .../bindings/iio/potentiometer/ds1803.txt          |  21 -
 .../bindings/iio/potentiometer/max5481.txt         |  23 -
 .../bindings/iio/potentiometer/mcp41010.txt        |  28 -
 .../bindings/iio/potentiometer/mcp4131.txt         |  84 ---
 .../iio/potentiometer/microchip,mcp41010.yaml      |  48 ++
 .../iio/potentiometer/microchip,mcp4131.yaml       | 103 ++++
 .../iio/potentiometer/microchip,mcp4531.yaml       | 116 ++++
 .../bindings/iio/potentiostat/lmp91000.txt         |  33 --
 .../bindings/iio/potentiostat/ti,lmp91000.yaml     |  68 +++
 .../bindings/iio/pressure/hoperf,hp03.yaml         |  47 ++
 .../devicetree/bindings/iio/pressure/hp03.txt      |  17 -
 .../bindings/iio/pressure/meas,ms5611.yaml         |  57 ++
 .../devicetree/bindings/iio/pressure/ms5611.txt    |  19 -
 .../devicetree/bindings/iio/pressure/ms5637.txt    |  17 -
 .../bindings/iio/pressure/murata,zpa2326.yaml      |  62 ++
 .../devicetree/bindings/iio/pressure/zpa2326.txt   |  29 -
 .../bindings/iio/proximity/ams,as3935.yaml         |  71 +++
 .../devicetree/bindings/iio/proximity/as3935.txt   |  34 --
 .../bindings/iio/proximity/semtech,sx9310.yaml     |  63 ++
 .../bindings/iio/proximity/semtech,sx9500.yaml     |  50 ++
 .../bindings/iio/proximity/st,vl53l0x.yaml         |  42 ++
 .../devicetree/bindings/iio/proximity/sx9500.txt   |  23 -
 .../devicetree/bindings/iio/proximity/vl53l0x.txt  |  18 -
 .../devicetree/bindings/iio/resolver/ad2s90.txt    |  31 -
 .../bindings/iio/resolver/adi,ad2s90.yaml          |  60 ++
 .../bindings/iio/samsung,sensorhub-rinato.yaml     |  72 +++
 .../devicetree/bindings/iio/sensorhub.txt          |  24 -
 .../devicetree/bindings/iio/st,st-sensors.yaml     | 123 ++++
 .../devicetree/bindings/iio/st-sensors.txt         |  82 ---
 .../bindings/iio/temperature/max31856.txt          |  24 -
 .../bindings/iio/temperature/maxim,max31855k.yaml  |  76 +++
 .../bindings/iio/temperature/maxim,max31856.yaml   |  54 ++
 .../iio/temperature/maxim_thermocouple.txt         |  24 -
 .../bindings/iio/temperature/melexis,mlx90614.yaml |  50 ++
 .../bindings/iio/temperature/melexis,mlx90632.yaml |  55 ++
 .../bindings/iio/temperature/mlx90614.txt          |  24 -
 .../bindings/iio/temperature/mlx90632.txt          |  28 -
 .../iio/temperature/temperature-bindings.txt       |   7 -
 .../bindings/iio/temperature/ti,tmp007.yaml        |  57 ++
 .../devicetree/bindings/iio/temperature/tmp007.txt |  33 --
 .../devicetree/bindings/iio/temperature/tsys01.txt |  19 -
 .../bindings/pinctrl/ralink,rt2880-pinmux.yaml     |  70 +++
 .../devicetree/bindings/trivial-devices.yaml       | 194 ++----
 Documentation/networking/kapi.rst                  |  21 -
 .../translations/zh_CN/admin-guide/index.rst       |   1 -
 MAINTAINERS                                        |  43 +-
 arch/mips/configs/generic/board-ranchu.config      |   1 -
 drivers/counter/microchip-tcb-capture.c            |  16 +-
 drivers/iio/accel/adis16201.c                      |   1 -
 drivers/iio/accel/adis16209.c                      |   1 -
 drivers/iio/accel/adxl372.c                        |  11 +-
 drivers/iio/accel/bma180.c                         |   9 +-
 drivers/iio/accel/bmc150-accel-core.c              | 219 ++++++-
 drivers/iio/accel/bmc150-accel-i2c.c               |  45 +-
 drivers/iio/accel/bmc150-accel-spi.c               |   2 +
 drivers/iio/accel/bmc150-accel.h                   |   3 +
 drivers/iio/accel/kxcjk-1013.c                     |  10 +-
 drivers/iio/accel/mma8452.c                        |   2 +-
 drivers/iio/accel/mxc4005.c                        |  16 +-
 drivers/iio/adc/Kconfig                            |  13 +-
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad7292.c                           |   2 -
 drivers/iio/adc/ad7298.c                           |  65 +--
 drivers/iio/adc/ad7768-1.c                         |  41 ++
 drivers/iio/adc/ad7887.c                           |  55 +-
 drivers/iio/adc/ad_sigma_delta.c                   |  18 +-
 drivers/iio/adc/at91-sama5d2_adc.c                 |  92 ++-
 drivers/iio/adc/at91_adc.c                         | 353 +++++------
 drivers/iio/adc/cpcap-adc.c                        |   1 +
 drivers/iio/adc/exynos_adc.c                       |   7 +-
 drivers/iio/adc/ingenic-adc.c                      |   2 +-
 drivers/iio/adc/meson_saradc.c                     |   2 -
 drivers/iio/adc/mt6360-adc.c                       | 372 ++++++++++++
 drivers/iio/adc/rockchip_saradc.c                  |   2 +-
 drivers/iio/adc/stm32-adc-core.c                   |  21 +-
 drivers/iio/adc/stm32-adc.c                        |  29 +-
 drivers/iio/adc/ti-adc084s021.c                    |  10 +-
 drivers/iio/adc/ti-ads124s08.c                     |  13 +-
 drivers/iio/buffer/industrialio-buffer-cb.c        |   5 +
 drivers/iio/buffer/industrialio-buffer-dmaengine.c |   3 +-
 drivers/iio/buffer/industrialio-triggered-buffer.c |  31 +-
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  |  15 +-
 .../iio/common/hid-sensors/hid-sensor-trigger.c    |  22 +-
 drivers/iio/dac/Kconfig                            |   7 +-
 drivers/iio/dac/ad5686.c                           |  13 +
 drivers/iio/dac/ad5686.h                           |   1 +
 drivers/iio/dac/ad5696-i2c.c                       |  20 +
 drivers/iio/dac/ad7303.c                           |   2 -
 drivers/iio/gyro/adxrs290.c                        |   6 +-
 drivers/iio/gyro/bmg160_core.c                     |  12 +-
 drivers/iio/gyro/mpu3050-core.c                    |  28 +-
 drivers/iio/humidity/hts221.h                      |   2 +
 drivers/iio/humidity/hts221_core.c                 |  37 ++
 drivers/iio/iio_core.h                             |  15 +-
 drivers/iio/imu/bmi160/bmi160.h                    |   7 +
 drivers/iio/imu/bmi160/bmi160_core.c               |   7 +-
 drivers/iio/imu/kmx61.c                            |  10 +-
 drivers/iio/imu/st_lsm6dsx/Kconfig                 |   4 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |  10 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |   2 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       | 318 +++-------
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c        |  10 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c        |  10 +
 drivers/iio/industrialio-buffer.c                  |  18 +-
 drivers/iio/industrialio-core.c                    | 212 ++++---
 drivers/iio/industrialio-event.c                   |  28 +-
 drivers/iio/industrialio-trigger.c                 |   6 +-
 drivers/iio/inkern.c                               |  29 +-
 drivers/iio/light/apds9960.c                       |   2 +-
 drivers/iio/light/rpr0521.c                        |  17 +-
 drivers/iio/light/st_uvis25.h                      |   5 +
 drivers/iio/light/st_uvis25_core.c                 |   8 +-
 drivers/iio/light/tsl2563.c                        |  16 +-
 drivers/iio/light/vcnl4035.c                       |   7 +
 drivers/iio/magnetometer/bmc150_magn.c             |  12 +-
 drivers/iio/magnetometer/mag3110.c                 |  13 +-
 drivers/iio/potentiometer/ad5272.c                 |   4 +-
 drivers/iio/pressure/bmp280-regmap.c               |   4 +-
 drivers/iio/pressure/mpl3115.c                     |   9 +-
 drivers/iio/proximity/sx9310.c                     | 508 +++++++++++++++-
 drivers/iio/proximity/vl53l0x-i2c.c                |   7 +
 drivers/iio/trigger/iio-trig-hrtimer.c             |   4 +-
 drivers/iio/trigger/iio-trig-sysfs.c               |   1 +
 drivers/net/Kconfig                                |   2 -
 drivers/net/Makefile                               |   1 -
 drivers/net/wimax/Kconfig                          |  18 -
 drivers/net/wimax/Makefile                         |   2 -
 drivers/pinctrl/Kconfig                            |   1 +
 drivers/pinctrl/Makefile                           |   1 +
 drivers/pinctrl/ralink/Kconfig                     |  14 +
 .../mt7621-pinctrl =3D> pinctrl/ralink}/Makefile     |   2 -
 .../ralink}/pinctrl-rt2880.c                       |  33 +-
 drivers/staging/Kconfig                            |   6 +-
 drivers/staging/Makefile                           |   3 +-
 drivers/staging/android/Kconfig                    |   2 -
 drivers/staging/android/Makefile                   |   2 -
 drivers/staging/android/TODO                       |   5 -
 drivers/staging/android/ion/Kconfig                |  27 -
 drivers/staging/android/ion/Makefile               |   4 -
 drivers/staging/android/ion/ion.c                  | 649 -----------------=
----
 drivers/staging/android/ion/ion.h                  | 302 ----------
 drivers/staging/android/ion/ion_cma_heap.c         | 138 -----
 drivers/staging/android/ion/ion_heap.c             | 286 ---------
 drivers/staging/android/ion/ion_page_pool.c        | 155 -----
 drivers/staging/android/ion/ion_system_heap.c      | 377 ------------
 drivers/staging/android/uapi/ion.h                 | 127 ----
 drivers/staging/comedi/drivers/mf6x4.c             |   3 +-
 drivers/staging/comedi/drivers/ni_mio_common.c     |   3 +-
 .../staging/comedi/drivers/tests/ni_routes_test.c  |   8 +-
 drivers/staging/fieldbus/anybuss/hms-profinet.c    |   5 +-
 drivers/staging/fieldbus/dev_core.c                |   2 +-
 drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h         |  10 +-
 drivers/staging/fsl-dpaa2/ethsw/dpsw.h             |   6 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c    |   2 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |   9 +-
 drivers/staging/gasket/gasket_interrupt.c          |  15 +-
 drivers/staging/gdm724x/gdm_mux.c                  |  10 +-
 drivers/staging/goldfish/Kconfig                   |   7 -
 drivers/staging/goldfish/Makefile                  |   6 -
 drivers/staging/goldfish/README                    |   5 -
 drivers/staging/goldfish/goldfish_audio.c          | 383 ------------
 drivers/staging/greybus/TODO                       |   2 +
 drivers/staging/greybus/audio_codec.c              | 111 ++--
 drivers/staging/greybus/audio_helper.c             |   3 +-
 drivers/staging/greybus/audio_manager_module.c     |   3 +-
 drivers/staging/greybus/audio_module.c             |   8 +-
 drivers/staging/hikey9xx/Kconfig                   |   1 +
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c        |   4 +-
 drivers/staging/hikey9xx/hisi-spmi-controller.c    |   4 +-
 drivers/staging/iio/accel/adis16240.c              |   1 +
 drivers/staging/kpc2000/kpc2000/cell_probe.c       |  71 ++-
 drivers/staging/kpc2000/kpc2000/core.c             |   3 +-
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h  |  17 +-
 drivers/staging/kpc2000/kpc_dma/dma.c              |  21 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c          |  28 +-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c   |  13 +-
 drivers/staging/ks7010/ks7010_sdio.c               |   4 +-
 drivers/staging/most/i2c/Kconfig                   |   2 +-
 drivers/staging/most/sound/sound.c                 |  14 +-
 drivers/staging/mt7621-dma/mtk-hsdma.c             |  44 +-
 drivers/staging/mt7621-dts/mt7621.dtsi             |   1 +
 drivers/staging/mt7621-pci/pci-mt7621.c            | 101 +---
 drivers/staging/mt7621-pinctrl/Kconfig             |   6 -
 drivers/staging/mt7621-pinctrl/TODO                |   6 -
 drivers/staging/olpc_dcon/olpc_dcon.c              |   3 +-
 drivers/staging/qlge/qlge.h                        |   2 +-
 drivers/staging/qlge/qlge_ethtool.c                |   1 +
 drivers/staging/qlge/qlge_main.c                   |  10 +-
 drivers/staging/qlge/qlge_mpi.c                    |   2 +-
 drivers/staging/rtl8188eu/core/rtw_ap.c            |  54 +-
 drivers/staging/rtl8188eu/core/rtw_cmd.c           |   2 +-
 drivers/staging/rtl8188eu/core/rtw_debug.c         |  18 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |  36 +-
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c     |   2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |  18 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      | 122 ++--
 drivers/staging/rtl8188eu/core/rtw_recv.c          |   4 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |  24 +-
 drivers/staging/rtl8188eu/core/rtw_xmit.c          |  10 +-
 drivers/staging/rtl8188eu/hal/phy.c                |   7 -
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c       |  10 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c        |   4 +-
 drivers/staging/rtl8188eu/include/osdep_intf.h     |   1 -
 drivers/staging/rtl8188eu/include/rtw_security.h   |   3 -
 drivers/staging/rtl8188eu/include/wifi.h           |  34 --
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |  21 +-
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c      |   2 +-
 drivers/staging/rtl8188eu/os_dep/os_intfs.c        |   9 -
 drivers/staging/rtl8188eu/os_dep/usb_intf.c        |   6 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c          |  27 +-
 drivers/staging/rtl8192u/ieee80211/dot11d.c        |  12 +-
 drivers/staging/rtl8192u/r8192U_core.c             |   2 +-
 drivers/staging/rtl8723bs/core/rtw_ap.c            | 161 +++--
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |  52 +-
 drivers/staging/rtl8723bs/core/rtw_efuse.c         |  44 +-
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c     |  65 +--
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c     |  52 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c          | 108 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      | 368 ++++++------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c       |  70 +--
 drivers/staging/rtl8723bs/core/rtw_recv.c          | 158 +++--
 drivers/staging/rtl8723bs/core/rtw_security.c      | 382 +++++-------
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c       |  75 +--
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     | 124 ++--
 drivers/staging/rtl8723bs/core/rtw_xmit.c          | 127 ++--
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c     |   7 +-
 drivers/staging/rtl8723bs/hal/hal_com.c            |   2 +-
 drivers/staging/rtl8723bs/hal/hal_intf.c           |   4 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c       |  40 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c  |   2 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c     |   8 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c       |  17 +-
 drivers/staging/rtl8723bs/include/ieee80211.h      |  50 +-
 drivers/staging/rtl8723bs/include/osdep_service.h  |   3 -
 .../rtl8723bs/include/osdep_service_linux.h        |   6 -
 drivers/staging/rtl8723bs/include/rtw_ht.h         |   2 +-
 drivers/staging/rtl8723bs/include/rtw_io.h         |   2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h       |  16 +-
 drivers/staging/rtl8723bs/include/rtw_mp.h         |  10 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h    |   6 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h       |   4 +-
 drivers/staging/rtl8723bs/include/rtw_security.h   |  15 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h       |   8 +-
 drivers/staging/rtl8723bs/include/sta_info.h       |   2 +-
 drivers/staging/rtl8723bs/include/wifi.h           | 300 +---------
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  | 264 ++++-----
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c     | 486 +++++++--------
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c      |   2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |  38 +-
 drivers/staging/rtl8723bs/os_dep/osdep_service.c   |   2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c      |  14 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c      |   4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 189 +++---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |  27 +-
 .../vc04_services/interface/vchiq_arm/vchiq_cfg.h  |   6 +-
 .../interface/vchiq_arm/vchiq_connected.c          |   3 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 277 +++++----
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |  55 +-
 .../interface/vchiq_arm/vchiq_debugfs.c            |   8 +-
 drivers/staging/vc04_services/vchiq-mmal/Kconfig   |   2 +-
 drivers/staging/vt6655/card.c                      |   2 +-
 drivers/staging/vt6655/device_main.c               |  12 +-
 drivers/staging/vt6655/rxtx.c                      | 101 ++--
 drivers/staging/vt6656/main_usb.c                  |   1 +
 drivers/staging/wfx/sta.c                          |   2 +-
 .../staging/wimax/Documentation}/i2400m.rst        |   0
 .../staging/wimax/Documentation}/index.rst         |   0
 .../staging/wimax/Documentation}/wimax.rst         |   0
 {net =3D> drivers/staging}/wimax/Kconfig             |   7 +
 {net =3D> drivers/staging}/wimax/Makefile            |   2 +
 drivers/staging/wimax/TODO                         |  18 +
 {net =3D> drivers/staging}/wimax/debug-levels.h      |   2 +-
 {net =3D> drivers/staging}/wimax/debugfs.c           |   2 +-
 drivers/{net =3D> staging}/wimax/i2400m/Kconfig      |   0
 drivers/{net =3D> staging}/wimax/i2400m/Makefile     |   0
 drivers/{net =3D> staging}/wimax/i2400m/control.c    |   6 +-
 .../{net =3D> staging}/wimax/i2400m/debug-levels.h   |   2 +-
 drivers/{net =3D> staging}/wimax/i2400m/debugfs.c    |   0
 drivers/{net =3D> staging}/wimax/i2400m/driver.c     |  11 +-
 drivers/{net =3D> staging}/wimax/i2400m/fw.c         |  14 +-
 drivers/{net =3D> staging}/wimax/i2400m/i2400m-usb.h |   0
 drivers/{net =3D> staging}/wimax/i2400m/i2400m.h     |   4 +-
 .../staging/wimax/i2400m/linux-wimax-i2400m.h      |   0
 drivers/{net =3D> staging}/wimax/i2400m/netdev.c     |   2 +-
 drivers/{net =3D> staging}/wimax/i2400m/op-rfkill.c  |   2 +-
 drivers/{net =3D> staging}/wimax/i2400m/rx.c         |   0
 drivers/{net =3D> staging}/wimax/i2400m/sysfs.c      |   0
 drivers/{net =3D> staging}/wimax/i2400m/tx.c         |   6 +-
 .../wimax/i2400m/usb-debug-levels.h                |   2 +-
 drivers/{net =3D> staging}/wimax/i2400m/usb-fw.c     |   0
 drivers/{net =3D> staging}/wimax/i2400m/usb-notif.c  |   0
 drivers/{net =3D> staging}/wimax/i2400m/usb-rx.c     |   0
 drivers/{net =3D> staging}/wimax/i2400m/usb-tx.c     |   0
 drivers/{net =3D> staging}/wimax/i2400m/usb.c        |   2 +-
 {net =3D> drivers/staging}/wimax/id-table.c          |   2 +-
 .../staging/wimax/linux-wimax-debug.h              |   2 +-
 .../wimax.h =3D> drivers/staging/wimax/linux-wimax.h |   0
 .../wimax.h =3D> drivers/staging/wimax/net-wimax.h   |   2 +-
 {net =3D> drivers/staging}/wimax/op-msg.c            |   2 +-
 {net =3D> drivers/staging}/wimax/op-reset.c          |   4 +-
 {net =3D> drivers/staging}/wimax/op-rfkill.c         |   4 +-
 {net =3D> drivers/staging}/wimax/op-state-get.c      |   4 +-
 {net =3D> drivers/staging}/wimax/stack.c             |  29 +-
 {net =3D> drivers/staging}/wimax/wimax-internal.h    |   2 +-
 drivers/staging/wlan-ng/prism2mgmt.c               |   4 +-
 include/linux/iio/adc/ad_sigma_delta.h             |   6 +-
 include/linux/iio/buffer.h                         |   3 -
 include/linux/iio/iio-opaque.h                     |   2 +
 include/linux/iio/iio.h                            |   6 +
 include/linux/iio/trigger.h                        |   6 +-
 include/linux/iio/triggered_buffer.h               |  23 +-
 include/linux/platform_data/ad7298.h               |  19 -
 include/linux/platform_data/ad7303.h               |  20 -
 include/linux/platform_data/ad7887.h               |   4 -
 include/linux/platform_data/at91_adc.h             |  49 --
 net/Kconfig                                        |   2 -
 net/Makefile                                       |   1 -
 sound/soc/stm/stm32_adfsdm.c                       |  12 +-
 tools/testing/selftests/Makefile                   |   3 +-
 tools/testing/selftests/android/Makefile           |  39 --
 tools/testing/selftests/android/config             |   5 -
 tools/testing/selftests/android/ion/.gitignore     |   4 -
 tools/testing/selftests/android/ion/Makefile       |  20 -
 tools/testing/selftests/android/ion/README         | 101 ----
 tools/testing/selftests/android/ion/ion.h          | 134 -----
 tools/testing/selftests/android/ion/ion_test.sh    |  58 --
 .../testing/selftests/android/ion/ionapp_export.c  | 127 ----
 .../testing/selftests/android/ion/ionapp_import.c  |  79 ---
 tools/testing/selftests/android/ion/ionmap_test.c  | 136 -----
 tools/testing/selftests/android/ion/ionutils.c     | 253 --------
 tools/testing/selftests/android/ion/ionutils.h     |  55 --
 tools/testing/selftests/android/ion/ipcsocket.c    | 227 -------
 tools/testing/selftests/android/ion/ipcsocket.h    |  35 --
 tools/testing/selftests/android/run.sh             |   3 -
 476 files changed, 10245 insertions(+), 10977 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-adc-mt6360
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/bma180.txt
 create mode 100644 Documentation/devicetree/bindings/iio/accel/bosch,bma18=
0.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/accel/bosch,bma25=
5.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/dmard06.txt
 create mode 100644 Documentation/devicetree/bindings/iio/accel/fsl,mma8452=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/kionix,kxcj=
k1013.txt
 create mode 100644 Documentation/devicetree/bindings/iio/accel/kionix,kxcj=
k1013.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/mma8452.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/at91-sama5d2_=
adc.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/at91_adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/atmel,sama5d2=
-adc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/atmel,sama926=
0-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/axp20x_adc.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/brcm,iproc-st=
atic-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/brcm,iproc-st=
atic-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/envelope-dete=
ctor.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/envelope-dete=
ctor.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max1027=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/mediatek,mt27=
01-auxadc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/mediatek,mt63=
60-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/mt6577_auxadc=
.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/palmas-gpadc.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,pm8018-a=
dc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,pm8xxx-x=
oadc.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-iad=
c.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-iad=
c.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/renesas,gyroa=
dc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/renesas,rcar-=
gyroadc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,adc084s021=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads124s08.=
yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,palmas-gpa=
dc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-adc084s021=
.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-ads124s08.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/x-powers,axp2=
09-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/afe/current-sense=
-amplifier.txt
 create mode 100644 Documentation/devicetree/bindings/iio/afe/current-sense=
-amplifier.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/afe/current-sense=
-shunt.txt
 create mode 100644 Documentation/devicetree/bindings/iio/afe/current-sense=
-shunt.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/afe/voltage-divid=
er.txt
 create mode 100644 Documentation/devicetree/bindings/iio/afe/voltage-divid=
er.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/chemical/bme680.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/chemical/sensirio=
n,sgp30.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ad5592r.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ad5758.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ad7303.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad5592r.y=
aml
 create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad5686.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad5758.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/dac/adi,ad7303.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/dpot-dac.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/dpot-dac.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ds4424.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/fsl,vf610-dac=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/lpc1850-dac.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/max5821.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/maxim,ds4424.=
yaml
 create mode 100644 Documentation/devicetree/bindings/iio/dac/maxim,max5821=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/mcp4725.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/microchip,mcp=
4725.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/dac/nxp,lpc1850-d=
ac.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac5571.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac5571.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac7311.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac7311.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac7512.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac7512.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac7612.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/ti,dac7612.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/vf610-dac.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/frequency/adf4350=
.txt
 create mode 100644 Documentation/devicetree/bindings/iio/frequency/adi,adf=
4350.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/gyroscope/bmg160.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/bosch,b=
mg160.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxa=
s21002c.txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxa=
s21002c.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/health/afe4403.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/health/afe4404.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/health/max30100.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/health/max30102.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/health/maxim,max3=
0100.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/health/maxim,max3=
0102.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/health/ti,afe4403=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/health/ti,afe4404=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/humidity/dht11.txt
 create mode 100644 Documentation/devicetree/bindings/iio/humidity/dht11.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/humidity/hdc100x.=
txt
 delete mode 100644 Documentation/devicetree/bindings/iio/humidity/hts221.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/humidity/htu21.txt
 create mode 100644 Documentation/devicetree/bindings/iio/humidity/st,hts22=
1.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/iio-bindings.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/impedance-analyze=
r/ad5933.txt
 create mode 100644 Documentation/devicetree/bindings/iio/impedance-analyze=
r/adi,ad5933.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/imu/adi,adis16480=
.txt
 create mode 100644 Documentation/devicetree/bindings/iio/imu/adi,adis16480=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/imu/st,lsm6dsx.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/imu/st_lsm6dsx.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/apds9300.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/apds9960.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9=
300.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/avago,apds9=
960.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/capella,cm3=
605.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/capella,cm3=
6651.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/cm3605.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/cm36651.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/gp2ap020a00=
f.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/max44009.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/maxim,max44=
009.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/opt3001.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/renesas,isl=
29501.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/sharp,gp2ap=
020a00f.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/st,uvis25.y=
aml
 create mode 100644 Documentation/devicetree/bindings/iio/light/st,vl6180.y=
aml
 create mode 100644 Documentation/devicetree/bindings/iio/light/ti,opt3001.=
yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/upisemi,us5=
182.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/us5182d.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/uvis25.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/vcnl4035.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/vishay,vcnl=
4035.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/vl6180.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/ak89=
74.txt
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/asah=
i-kasei,ak8974.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/bmc1=
50_magn.txt
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/bosc=
h,bmc150_magn.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/fsl,=
mag3110.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/hmc5=
843.txt
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/hone=
ywell,hmc5843.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/mag3=
110.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/mmc3=
5240.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/pni,=
rm3100.txt
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/pni,=
rm3100.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/potentiometer/ad5=
272.txt
 create mode 100644 Documentation/devicetree/bindings/iio/potentiometer/adi=
,ad5272.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/potentiometer/ds1=
803.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/potentiometer/max=
5481.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/potentiometer/mcp=
41010.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/potentiometer/mcp=
4131.txt
 create mode 100644 Documentation/devicetree/bindings/iio/potentiometer/mic=
rochip,mcp41010.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/potentiometer/mic=
rochip,mcp4131.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/potentiometer/mic=
rochip,mcp4531.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/potentiostat/lmp9=
1000.txt
 create mode 100644 Documentation/devicetree/bindings/iio/potentiostat/ti,l=
mp91000.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/hoperf,h=
p03.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/pressure/hp03.txt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/meas,ms5=
611.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/pressure/ms5611.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/pressure/ms5637.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/murata,z=
pa2326.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/pressure/zpa2326.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/ams,as3=
935.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/proximity/as3935.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/semtech=
,sx9500.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/st,vl53=
l0x.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/proximity/sx9500.=
txt
 delete mode 100644 Documentation/devicetree/bindings/iio/proximity/vl53l0x=
.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/resolver/ad2s90.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/resolver/adi,ad2s=
90.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/samsung,sensorhub=
-rinato.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/sensorhub.txt
 create mode 100644 Documentation/devicetree/bindings/iio/st,st-sensors.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/st-sensors.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/max31=
856.txt
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/maxim=
,max31855k.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/maxim=
,max31856.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/maxim=
_thermocouple.txt
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/melex=
is,mlx90614.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/melex=
is,mlx90632.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/mlx90=
614.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/mlx90=
632.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/tempe=
rature-bindings.txt
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/ti,tm=
p007.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/tmp00=
7.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/temperature/tsys0=
1.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880=
-pinmux.yaml
 create mode 100644 drivers/iio/adc/mt6360-adc.c
 delete mode 100644 drivers/net/wimax/Kconfig
 delete mode 100644 drivers/net/wimax/Makefile
 create mode 100644 drivers/pinctrl/ralink/Kconfig
 rename drivers/{staging/mt7621-pinctrl =3D> pinctrl/ralink}/Makefile (66%)
 rename drivers/{staging/mt7621-pinctrl =3D> pinctrl/ralink}/pinctrl-rt2880=
.c (91%)
 delete mode 100644 drivers/staging/android/ion/Kconfig
 delete mode 100644 drivers/staging/android/ion/Makefile
 delete mode 100644 drivers/staging/android/ion/ion.c
 delete mode 100644 drivers/staging/android/ion/ion.h
 delete mode 100644 drivers/staging/android/ion/ion_cma_heap.c
 delete mode 100644 drivers/staging/android/ion/ion_heap.c
 delete mode 100644 drivers/staging/android/ion/ion_page_pool.c
 delete mode 100644 drivers/staging/android/ion/ion_system_heap.c
 delete mode 100644 drivers/staging/android/uapi/ion.h
 delete mode 100644 drivers/staging/goldfish/Kconfig
 delete mode 100644 drivers/staging/goldfish/Makefile
 delete mode 100644 drivers/staging/goldfish/README
 delete mode 100644 drivers/staging/goldfish/goldfish_audio.c
 delete mode 100644 drivers/staging/mt7621-pinctrl/Kconfig
 delete mode 100644 drivers/staging/mt7621-pinctrl/TODO
 rename {Documentation/admin-guide/wimax =3D> drivers/staging/wimax/Documen=
tation}/i2400m.rst (100%)
 rename {Documentation/admin-guide/wimax =3D> drivers/staging/wimax/Documen=
tation}/index.rst (100%)
 rename {Documentation/admin-guide/wimax =3D> drivers/staging/wimax/Documen=
tation}/wimax.rst (100%)
 rename {net =3D> drivers/staging}/wimax/Kconfig (92%)
 rename {net =3D> drivers/staging}/wimax/Makefile (83%)
 create mode 100644 drivers/staging/wimax/TODO
 rename {net =3D> drivers/staging}/wimax/debug-levels.h (96%)
 rename {net =3D> drivers/staging}/wimax/debugfs.c (97%)
 rename drivers/{net =3D> staging}/wimax/i2400m/Kconfig (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/Makefile (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/control.c (99%)
 rename drivers/{net =3D> staging}/wimax/i2400m/debug-levels.h (96%)
 rename drivers/{net =3D> staging}/wimax/i2400m/debugfs.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/driver.c (99%)
 rename drivers/{net =3D> staging}/wimax/i2400m/fw.c (99%)
 rename drivers/{net =3D> staging}/wimax/i2400m/i2400m-usb.h (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/i2400m.h (99%)
 rename include/uapi/linux/wimax/i2400m.h =3D> drivers/staging/wimax/i2400m=
/linux-wimax-i2400m.h (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/netdev.c (99%)
 rename drivers/{net =3D> staging}/wimax/i2400m/op-rfkill.c (99%)
 rename drivers/{net =3D> staging}/wimax/i2400m/rx.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/sysfs.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/tx.c (99%)
 rename drivers/{net =3D> staging}/wimax/i2400m/usb-debug-levels.h (95%)
 rename drivers/{net =3D> staging}/wimax/i2400m/usb-fw.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/usb-notif.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/usb-rx.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/usb-tx.c (100%)
 rename drivers/{net =3D> staging}/wimax/i2400m/usb.c (99%)
 rename {net =3D> drivers/staging}/wimax/id-table.c (99%)
 rename include/linux/wimax/debug.h =3D> drivers/staging/wimax/linux-wimax-=
debug.h (99%)
 rename include/uapi/linux/wimax.h =3D> drivers/staging/wimax/linux-wimax.h=
 (100%)
 rename include/net/wimax.h =3D> drivers/staging/wimax/net-wimax.h (99%)
 rename {net =3D> drivers/staging}/wimax/op-msg.c (99%)
 rename {net =3D> drivers/staging}/wimax/op-reset.c (98%)
 rename {net =3D> drivers/staging}/wimax/op-rfkill.c (99%)
 rename {net =3D> drivers/staging}/wimax/op-state-get.c (96%)
 rename {net =3D> drivers/staging}/wimax/stack.c (97%)
 rename {net =3D> drivers/staging}/wimax/wimax-internal.h (99%)
 delete mode 100644 include/linux/platform_data/ad7298.h
 delete mode 100644 include/linux/platform_data/ad7303.h
 delete mode 100644 include/linux/platform_data/at91_adc.h
 delete mode 100644 tools/testing/selftests/android/Makefile
 delete mode 100644 tools/testing/selftests/android/config
 delete mode 100644 tools/testing/selftests/android/ion/.gitignore
 delete mode 100644 tools/testing/selftests/android/ion/Makefile
 delete mode 100644 tools/testing/selftests/android/ion/README
 delete mode 100644 tools/testing/selftests/android/ion/ion.h
 delete mode 100755 tools/testing/selftests/android/ion/ion_test.sh
 delete mode 100644 tools/testing/selftests/android/ion/ionapp_export.c
 delete mode 100644 tools/testing/selftests/android/ion/ionapp_import.c
 delete mode 100644 tools/testing/selftests/android/ion/ionmap_test.c
 delete mode 100644 tools/testing/selftests/android/ion/ionutils.c
 delete mode 100644 tools/testing/selftests/android/ion/ionutils.h
 delete mode 100644 tools/testing/selftests/android/ion/ipcsocket.c
 delete mode 100644 tools/testing/selftests/android/ion/ipcsocket.h
 delete mode 100755 tools/testing/selftests/android/run.sh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
