Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A49CB6271
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 13:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BD26F21505;
	Wed, 18 Sep 2019 11:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aFf5ivBWEaSc; Wed, 18 Sep 2019 11:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0E6E21513;
	Wed, 18 Sep 2019 11:48:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4EB31BF345
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 11:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3CCF82462
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 11:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kqwzrL5Y89LW for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 11:47:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A2330822AE
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 11:47:57 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9584521907;
 Wed, 18 Sep 2019 11:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568807277;
 bh=1r3ovIkLkt2bCjmc4Ip3aCSD3tjZxvgI2EQfz8bh1X0=;
 h=Date:From:To:Cc:Subject:From;
 b=AdmUa7vj2GXCurHqieFLbcAhHw0KaEPsOIC2wGw+28XH/CwGE+OYWTKKcFQERDhYc
 bCE4n5f+uWPwM03sTBdqr8sjqFPJ6udo8jSmJc5kcIHvxXfbldQUGJo2pCga1MTp3H
 tT4uOR0fAi+1ya5OmfTX3RdiLUqPsfGkL4d893RM=
Date: Wed, 18 Sep 2019 13:47:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
Message-ID: <20190918114754.GA1899504@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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

The following changes since commit d1abaeb3be7b5fa6d7a1fbbd2e14e3310005c4c1:

  Linux 5.3-rc5 (2019-08-18 14:31:08 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.4-rc1

for you to fetch changes up to 3fb73eddba106ad2a265a5c5c29d14b0ed6aaee1:

  Staging: gasket: Use temporaries to reduce line length. (2019-09-12 10:38=
:45 +0100)

----------------------------------------------------------------
Staging/IIO driver patches for 5.4-rc1

Here is the big staging/iio driver update for 5.4-rc1.

Lots of churn here, with a few driver/filesystems moving out of staging
finally:
	- erofs moved out of staging
	- greybus core code moved out of staging

Along with that, a new filesytem has been added:
	- extfat
to provide support for those devices requiring that filesystem (i.e.
transfer devices to/from windows systems or printers.)

Other than that, there a number of new IIO drivers, and lots and lots
and lots of staging driver cleanups and minor fixes as people continue
to dig into those for easy changes.

All of these have been in linux-next for a while with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Abhinav Jain (1):
      Staging: rtl8192e: fixed a function prototype definition issue

Adham Abozaeid (10):
      staging: wilc1000: remove inetaddr notifier
      staging: wilc1000: remove ip timeout timer
      staging: wilc1000: remove unused members
      staging: wilc1000: avoid overriding powersave state
      staging: wilc1000: apply power management regardless of open interfac=
es
      staging: wilc1000: remove manual sleep mode
      staging: wilc1000: merge drv_handle and operation_mode wids
      staging: wilc1000: remove unused function
      staging: wilc1000: Don't reset WILC CPU disgracefully
      staging: wilc1000: return kernel error codes from wilc_wlan_stop

Ajay Singh (3):
      staging: wilc1000: use helper API to pack data for firmware
      staging: wilc1000: remove unused interrupt status handling code
      staging: wilc1000: avoid twice IRQ handler execution for each single =
interrupt

Alexandru Ardelean (4):
      iio: imu: adis: Add support for SPI transfer cs_change_delay
      iio: imu: Add support for the ADIS16460 IMU
      dt-bindings: iio: imu: add bindings for ADIS16460
      iio: imu: adis16460: fix variable signedness

Andrey Smirnov (2):
      iio: hi8435: Use gpiod_set_value_cansleep()
      iio: hi8435: Drop hi8435_remove() by using devres for remaining eleme=
nts

Andy Shevchenko (2):
      iio: hid-sensor-attributes: Convert to use int_pow()
      iio: hid-sensor-attributes: Fix divisions for 32-bit platforms

Arnd Bergmann (2):
      staging: exfat: stopusing CONFIG_FAT_DEFAULT_IOCHARSET
      staging: exfat: stop using 32-bit time_t

Bartosz Golaszewski (1):
      tools: iio: add .gitignore

Beatriz Martins de Carvalho (1):
      staging: rtl8192e: remove unnecessary blank line

Beniamin Bia (8):
      iio: adc: ad7606: Move common channel definition to header
      iio: adc: ad7606: Move spi dependent features to spi file
      iio: adc: ad7606: Allow reconfigration after reset
      iio: adc: ad7606: Add support for software mode for ad7616
      iio: adc: ad7606: Add debug mode for ad7616
      MAINTAINERS: Add Beniamin Bia for AD7606 driver
      dt-bindings: iio: adc: Migrate AD7606 documentation to yaml
      dt-bindings: iio: adc: Add AD7606B ADC documentation

Benjamin Gaignard (1):
      IIO: stm32: Remove quadrature related functions from trigger driver

Benjamin Sherman (1):
      staging: vt6656: change alignment to match parenthesis

Bharath Vedartham (1):
      staging: kpc2000: Convert put_page() to put_user_page*()

B=E1rbara Fernandes (1):
      staging: iio: ad7192: create of_device_id array

Chao Yu (2):
      staging: erofs: avoid opened loop codes
      staging: erofs: support bmap

Chris Chiu (1):
      staging: rtl8723bs: indicate disconnection when disconnecting

Christian L Moreno (1):
      staging: rtl8712: recv_linux.c: Align * on block comment

Christina Quast (2):
      staging: rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Use crypto API =
ccm(aes)
      staging: rtl8192e: rtllib_crypt_ccmp.c: Use crypto API ccm(aes)

Christophe JAILLET (6):
      iio: sca3000: Fix a typo
      iio: light: apds9960: Fix a typo
      iio: magnetometer: mmc35240: Fix a typo in the name of a constant
      Staging: fbtft: Fix some typo. pdc8544 --> pcd8544
      staging: rtl8712: Improve naming of include hearder guards
      Kconfig: Fix the reference to the RFD77402 ToF sensor in the 'help' s=
ection

Chuhong Yuan (14):
      staging: wilc1000: Merge memcpy + le32_to_cpus to get_unaligned_le32
      staging: rtl8712: Merge memcpy + be16_to_cpus to get_unaligned_be16
      iio: maxim_thermocouple: Use device-managed APIs
      staging: iio: ad2s1210: Use device-managed API
      iio: humidity: Use device-managed APIs
      iio: mxc4005: Use device-managed APIs
      counter/ftm-quaddec: Use device-managed registration API
      iio: light: cm3323: Use device-managed APIs
      iio: light: si1145: Use device-managed APIs
      iio: tsl2772: Use devm_add_action_or_reset
      iio: tsl2772: Use devm_add_action_or_reset for tsl2772_chip_off
      iio: tsl2772: Use devm_iio_device_register
      iio: tsl2772: Use regulator_bulk_() APIs
      iio: adc: max1027: Use device-managed APIs

Colin Ian King (19):
      staging: greybus: remove redundant assignment to variable is_empty
      staging: rtl8712: remove redundant assignment to variable res
      staging: rtl8723bs: hal: remove redundant assignment to variable n
      drivers/staging/rtl8192u: fix indentation issue, remove extra tab
      staging: rtl8188eu: remove redundant assignment to rtstatus
      staging: rtl8188eu: remove redundant assignment to variable rtstatus
      staging: rtl8723bs: remove redundant assignment to ret
      staging: rtl8192u: fix up indentation of a statement
      staging: comedi: usbduxsigma: remove redundant assignment to variable=
 fx2delay
      staging: rts5208: remove redundant assignment to retval
      staging: rtl8192u: remove redundant assignment to pointer crypt
      staging: exfat: fix uninitialized variable ret
      staging: exfat: remove return and error return via a goto
      staging: rts5208: remove redundant sd30_mode checks
      staging: exfat: check for null return from call to FAT_getblk
      iio: dac: ad5380: fix incorrect assignment to val
      staging: rtl8723bs: hal: remove redundant variable n
      staging: rtl8188eu: make two arrays static const, makes object smaller
      staging: fbtft: make several arrays static const, makes object smaller

Dan Carpenter (2):
      staging: greybus: light: fix a couple double frees
      staging: exfat: Fix two missing unlocks on error paths

Denis Ciocca (17):
      iio:common:st_sensors: add st_sensors_get_settings_index() helper fun=
ction
      iio:accel: introduce st_accel_get_settings() function
      iio:gyro: introduce st_gyro_get_settings() function
      iio:magn: introduce st_magn_get_settings() function
      iio:pressure: introduce st_press_get_settings() function
      iio:accel: device settings are set immediately during probe
      iio:gyro: device settings are set immediately during probe
      iio:magn: device settings are set immediately during probe
      iio:pressure: device settings are set immediately during probe
      iio: move 3-wire spi initialization to st_sensors_spi
      iio: make st_sensors drivers use regmap
      iio:accel: preenable/postenable/predisable fixup for ST accel buffer
      iio:gyro: preenable/postenable/predisable fixup for ST gyro buffer
      iio:magn: preenable/postenable/predisable fixup for ST magn buffer
      iio:pressure: preenable/postenable/predisable fixup for ST press buff=
er
      iio: remove get_irq_data_ready() function pointer and use IRQ number =
directly
      iio:st_sensors: remove buffer allocation at each buffer enable

Denis Efremov (1):
      MAINTAINERS: ftm-quaddec: Fix typo in a filepath

Donald Yandt (1):
      staging: android: Remove ion device tree bindings from the TODO

Eduardo Barretto (1):
      staging: kpc2000: kpc2000_i2c: Fix different address spaces warnings

Eugen Hristev (2):
      staging: dt-bindings: wilc1000: add optional rtc_clk property
      staging: wilc1000: look for rtc_clk clock

Fabien Lahoudere (2):
      iio: common: cros_ec_sensors: determine protocol version
      iio: common: cros_ec_sensors: Expose cros_ec_sensors frequency range =
via iio sysfs

Fabrice Gasnier (2):
      dt-bindings: iio: adc: stm32: add analog switches supply control
      iio: adc: stm32-adc: add analog switches supply control

Freeman Liu (1):
      iio: adc: sc27xx: Change to polling mode to read data

Fuqian Huang (3):
      iio: adc: sc27xx: Introduce local variable 'struct device *dev'
      iio: adc: sc27xx: Replace devm_add_action() followed by failure actio=
n with devm_add_action_or_reset()
      iio: imu: mpu6050: Replace devm_add_action() followed by failure acti=
on with devm_add_action_or_reset()

Gao Xiang (66):
      staging: erofs: update source file headers
      staging: erofs: rename source files for better understanding
      staging: erofs: fix dummy functions erofs_{get, list}xattr
      staging: erofs: keep up erofs_fs.h with erofs-outofstaging patchset
      staging: erofs: sunset erofs_workstn_{lock,unlock}
      staging: erofs: clean up internal.h
      staging: erofs: remove redundant #include "internal.h"
      staging: erofs: kill CONFIG_EROFS_FS_IO_MAX_RETRIES
      staging: erofs: clean up shrinker stuffs
      staging: erofs: kill sbi->dev_name
      staging: erofs: kill all failure handling in fill_super()
      staging: erofs: drop __GFP_NOFAIL for managed inode
      staging: erofs: refine erofs_allocpage()
      staging: erofs: kill CONFIG_EROFS_FS_USE_VM_MAP_RAM
      staging: erofs: tidy up zpvec.h
      staging: erofs: remove redundant braces in inode.c
      staging: erofs: tidy up decompression frontend
      staging: erofs: remove clusterbits in sbi
      staging: erofs: turn cache strategies into mount options
      staging: erofs: tidy up utils.c
      staging: erofs: update super.c
      staging: erofs: update Kconfig
      staging: erofs: inline erofs_inode_is_data_compressed()
      staging: erofs: remove incomplete cleancache
      staging: erofs: xattr.c: avoid BUG_ON
      staging: erofs: introduce EFSCORRUPTED and more logs
      staging: erofs: differentiate unsupported on-disk format
      staging: erofs: correct all misused ENOTSUPP
      staging: erofs: use common file type conversion
      staging: erofs: refuse to mount images with malformed volume name
      staging: erofs: fix an error handling in erofs_readdir()
      staging: erofs: some compressed cluster should be submitted for corru=
pted images
      staging: erofs: cannot set EROFS_V_Z_INITED_BIT if fill_inode_lazy fa=
ils
      staging: erofs: add two missing erofs_workgroup_put for corrupted ima=
ges
      staging: erofs: avoid endless loop of invalid lookback distance 0
      staging: erofs: avoid loop in submit chains
      staging: erofs: detect potential multiref due to corrupted images
      erofs: move erofs out of staging
      erofs: fix compile warnings when moving out include/trace/events/erof=
s.h
      erofs: remove all likely/unlikely annotations
      erofs: reduntant assignment in __erofs_get_meta_page()
      erofs: remove all the byte offset comments
      erofs: on-disk format should have explicitly assigned numbers
      erofs: some macros are much more readable as a function
      erofs: kill __packed for on-disk structures
      erofs: update erofs_inode_is_data_compressed helper
      erofs: use feature_incompat rather than requirements
      erofs: better naming for erofs inode related stuffs
      erofs: kill erofs_{init,exit}_inode_cache
      erofs: use erofs_inode naming
      erofs: update erofs_fs.h comments
      erofs: update comments in inode.c
      erofs: better erofs symlink stuffs
      erofs: use dsb instead of layout for ondisk super_block
      erofs: kill verbose debug info in erofs_fill_super
      erofs: localize erofs_grab_bio()
      erofs: kill prio and nofail of erofs_get_meta_page()
      erofs: kill __submit_bio()
      erofs: add "erofs_" prefix for common and short functions
      erofs: kill all erofs specific fault injection
      erofs: kill use_vmap module parameter
      erofs: save one level of indentation
      erofs: rename errln/infoln/debugln to erofs_{err, info, dbg}
      erofs: use read_mapping_page instead of sb_bread
      erofs: always use iget5_locked
      erofs: use read_cache_page_gfp for erofs_get_meta_page

Geert Uytterhoeven (2):
      Documentation: ABI: iio: Add missing newline at end of file
      staging: bcm2835-camera: Spelling s/conencted/connected/

Giridhar Prasath R (1):
      staging: isdn: hysdn_procconf_init() remove parantheses from return v=
alue

Greg Kroah-Hartman (17):
      Revert "staging: kpc2000: Convert put_page() to put_user_page*()"
      Merge 5.3-rc4 into staging-next
      Merge tag 'iio-for-5.4a' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      staging: sm750fb: fix odd license text
      Merge 5.3-rc5 into staging-next
      staging: greybus: fix up SPDX comment in .h files
      staging: greybus: remove license "boilerplate"
      staging: greybus: hd: Fix up some alignment checkpatch issues
      staging: greybus: manifest: Fix up some alignment checkpatch issues
      staging: greybus: log: Fix up some alignment checkpatch issues
      staging: greybus: loopback: Fix up some alignment checkpatch issues
      staging: greybus: move core include files to include/linux/greybus/
      staging: greybus: move the greybus core to drivers/greybus
      staging: greybus: move es2 to drivers/greybus/
      MAINTAINERS: fix up exfat directory location
      staging: exfat: make exfat depend on BLOCK
      Merge tag 'iio-for-5.4b-take3' of git://git.kernel.org/.../jic23/iio =
into staging-next

Gwendal Grignou (7):
      iio: cros_ec: Add calibscale for 3d MEMS
      iio: cros_ec: Remove replacing error code with -EIO
      iio: cros_ec: Add sign vector in core for backward compatibility
      iio: cros_ec_accel_legacy: Fix incorrect channel setting
      iio: cros_ec_accel_legacy: Use cros_ec_sensors_core
      iio: cros_ec_accel_legacy: Add support for veyron-minnie
      iio: cros_ec: set calibscale for 3d MEMS to unit vector

Hans de Goede (1):
      iio: accel: kxcjk1013: Improve comments on KIOX010A and KIOX020A ACPI=
 ids

Hariprasad Kelam (12):
      staging: rtl8723bs: hal: Remove code valid only for 5GHz
      staging: rtl8723bs: core: Remove code valid only for 5GHz
      staging: rtl8723bs: os_dep: Remove code valid only for 5GHz
      staging: rtl8723bs: core: Change return type of init_mlme_ext_priv
      staging: rtl8723bs: os_dep: change return type of rtw_suspend_ap_wow
      staging: rtl8723bs: core: Remove Unneeded variable ret
      staging: rtl8723bs: hal: Remove unneeded variable pU1Tmp
      staging: rtl8192e: Make use kmemdup
      staging: rtl8723bs: core: Remove unneeded declaration WFD_OUI
      staging: rtl8723bs: os_dep: Remove unused declarations
      staging: nvec: make use of devm_platform_ioremap_resource
      staging: rtl8723bs: core: Remove Macro "IS_MAC_ADDRESS_BROADCAST"

Harsh Jain (1):
      staging: kpc2000: Fix long constant sparse warning

Ioana Ciornei (15):
      staging: fsl-dpaa2/ethsw: remove unused structure
      staging: fsl-dpaa2/ethsw: notify switchdev of offloaded entry
      staging: fsl-dpaa2/ethsw: add .ndo_fdb_dump callback
      staging: fsl-dpaa2/ethsw: check added_by_user flag
      staging: fsl-dpaa2/ethsw: add .ndo_fdb[add|del] callbacks
      staging: fsl-dpaa2/ethsw: remove IGMP default address
      staging: fsl-dpaa2/ethsw: enable switch ports only on dev_open
      staging: fsl-dpaa2/ethsw: add line terminator to all formats
      staging: fsl-dpaa2/ethsw: remove debug message
      staging: fsl-dpaa2/ethsw: use bool when encoding learning/flooding st=
ate
      staging: fsl-dpaa2/ethsw: remove unnecessary memset
      staging: fsl-dpaa2/ethsw: remove redundant VLAN check
      staging: fsl-dpaa2/ethsw: reword error message
      staging: fsl-dpaa2/ethsw: register_netdev only when ready
      staging: fsl-dpaa2/ethsw: do not force user to bring interface down

Ivan Safonov (1):
      staging: r8188eu: use skb_put_data instead of skb_put/memcpy pair

J. Bruce Fields (2):
      staging: wlan-ng: use "%*pE" for serial number
      staging: rtl8192*: display ESSIDs using %pE

Jean-Baptiste Maneyrol (1):
      iio: imu: inv_mpu6050: be more explicit on supported chips

Jerry Lin (1):
      staging: olpc_dcon: Remove TODO item

Jonathan Cameron (2):
      Merge tag 'tags/i3c/export-i3c_device_match_id' into HEAD
      iio:light:noa1305: Fix missing break statement.

Jose Carlos Cazarin Filho (1):
      staging: rtl8723bs: fix brace position in enum declaration

Kai-Heng Feng (1):
      staging: rtl8723bs: Remove debugging information exposed via procfs

Keyur Patel (1):
      staging: most: Delete an error message for a failed memory allocation

Leandro Ribeiro (1):
      staging: rtl8723bs: Remove return statement from void function

Lecopzer Chen (1):
      staging: android: ion: Remove unused rbtree for ion_buffer

Linus Walleij (1):
      iio: document bindings for mounting matrices

Lorenzo Bianconi (11):
      iio: imu: st_lsm6dsx: add support to LSM6DS3TR-C
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6ds3tr-c device bindings
      iio: imu: st_lsm6dsx: move odr_table in st_lsm6dsx_sensor_settings
      iio: imu: st_lsm6dsx: move fs_table in st_lsm6dsx_sensor_settings
      iio: imu: st_lsm6dsx: inline output acc/gyro output regs
      iio: imu: st_lsm6dsx: move iio chan definitions in st_lsm6dsx_sensor_=
settings
      iio: imu: st_lsm6dsx: add support to ISM330DHCX
      dt-bindings: iio: imu: st_lsm6dsx: add ism330dhcx device bindings
      iio: imu: st_lsm6dsx: introduce update_fifo function pointer
      iio: imu: st_lsm6dsx: remove invalid gain value for LSM9DS1
      iio: imu: st_lsm6dsx: rely on IIO_G_TO_M_S_2 for gain definition for =
LSM9DS1

Luca Weiss (3):
      dt-bindings: Add vendor prefix for sensortek
      dt-bindings: iio: light: add stk33xx
      iio: light: stk3310: Add device tree support

Marco Villegas (1):
      staging: rtl8712: Add spaces around <<

Martin Kaiser (2):
      iio: potentiometer: add a driver for Maxim 5432-5435
      dt-bindings: iio: potentiometer: add max5432.yaml binding

Martin Kepplinger (4):
      iio: imu: st_lsm6dsx: make IIO_CHAN_INFO_SCALE shared by type
      iio: imu: st_lsm6dsx: move register definitions to sensor_settings st=
ruct
      iio: imu: st_lsm6dsx: add support for accel/gyro unit of lsm9ds1
      dt-bindings: iio: imu: st_lsm6dsx: add lsm9ds1 device bindings

Martyn Welch (2):
      dt-bindings: Add binding document for NOA1305
      iio: light: noa1305: Add support for NOA1305

Masanari Iida (1):
      staging: comedi: ni_mio_common: Fix a typo in ni_mio_common.c

Merwin Trever Ferrao (2):
      Staging: rtl8188eu: core: rtw_security: tidy up crc32_init()
      Staging: rtl8712: rtl8712_recv: fixed 80 character length warning

Michael Straube (9):
      staging: rtl8188eu: remove unused definitions from hal8188e_phy_reg.h
      staging: rtl8723bs: remove unused file hal_phy.c
      staging: rtl8188eu: replace hal_EfusePgCheckAvailableAddr()
      staging: rtl8188eu: add spaces around '+' in usb_halinit.c
      staging: rtl8188eu: add spaces around '&' in usb_halinit.c
      staging: rtl8188eu: add spaces around '|' in usb_halinit.c
      staging: rtl8188eu: add spaces around '<<' and '>>' in usb_halinit.c
      staging: rtl8188eu: add spaces around '-' and '*' in usb_halinit.c
      staging: rtl8188eu: cleanup comparsion to NULL in usb_halinit.c

Mircea Caprioru (3):
      staging: iio: adc: ad7192: Remove platform data
      staging: iio: adc: ad7192: Add low_pass_3db_filter_frequency
      dt-bindings: iio: adc: ad7192: Add binding documentation for AD7192

Navid Emamdoost (1):
      staging: rtl8192u: null check the kzalloc

Nishka Dasgupta (80):
      staging: greybus: Replace function gb_i2c_device_setup()
      staging: erofs: Remove function erofs_kill_sb()
      staging: most: dim2: Replace function dim_norm_ctrl_async_buffer_size=
()
      staging: most: dim2: Remove function dimcb_io_read()
      staging: most: dim2: Remove function dimcb_io_write()
      staging: wlan-ng: Remove function hfa384x_dorrid_wait()
      staging: wlan-ng: Remove function hfa384x_dowrid_wait()
      staging: wlan-ng: Remove function hfa384x_dowrid_async()
      staging: wlan-ng: Remove unused function hfa384x_dorrid_async()
      staging: wlan-ng: Remove unused function hfa384x_dormem_async()
      staging: wlan-ng: Remove function hfa384x_dowmem_async()
      staging: wlan-ng: Remove unused function hfa384x_docmd_async()
      staging: wlan-ng: Remove function hfa384x_docmd_wait()
      staging: wlan-ng: Replace function hfa384x_dormem()
      staging: wlan-ng: Replace function hfa384x_dowmem()
      staging: wilc1000: Replace function wilc_wlan_cfg_get_val()
      staging: rtl8188eu: core: Replace function Set_MSR()
      staging: rtl8188eu: core: Remove function enable_rate_adaptive()
      staging: rtl8188eu: Replace function beacon_timing_control()
      staging: rtl8188eu: Remove function rtw_os_indicate_scan_done()
      staging: rtl8188eu: Remove function rtw_modular64()
      staging: rtl8188eu: Replace function rtw_alloc_network()
      staging: rtl8188eu: Replace function rtl88e_phy_rf6052_config()
      staging: rtl8188eu: Replace function rtl88eu_phy_rf_config()
      staging: mt7621-pci: Add of_node_put() before return
      staging: mt7621-pinctrl: Add of_node_put() before return
      staging: comedi: daqboard2000: Remove function db2k_initialize_dac()
      staging: rtl8712: r8712_init_mlme_priv(): Change return values
      staging: rtl8712: r8712_set_auth(): Change return values
      staging: rtl8712: r8712_set_key(): Change return values
      staging: rtl8712: r8712_register_cmd_alive(): Change return values
      staging: rtl8712: init_mp_priv(): Change return values
      staging: rtl8712: r8712_set_802_11_add_wep(): Change return values
      staging: rtl8712: r8712_init_recvbuf(): Change return type
      staging: rtl8712: r8712_free_recvframe(): Change return type
      staging: rtl8723bs: rtw_pwrctrl: Change true/false checks
      staging: rtl8723bs: hal: Replace function PHY_SetTxPowerIndex()
      staging: rtl8723bs: hal: Replace function PHY_GetTxPowerIndex()
      staging: rtl8723bs: hal: Replace function rtl8723b_set_wowlan_cmd()
      staging: rtl8723bs: hal: Replace function rtl8723b_set_ap_wowlan_cmd()
      staging: rtl8723bs: Replace function beacon_timing_control()
      staging: rtl8723bs: Replace function odm_TXPowerTrackingInit()
      staging: rtl8723bs: Replace function ODM_TXPowerTrackingCheck()
      staging: rtl8723bs: Remove unused function prototype ODM_SetAntenna()
      staging: wlan-ng: Remove function prism2mib_excludeunencrypted()
      staging: rtl8723bs: Change return type of hal_btcoex_IsBtExist()
      staging: rtl8723bs: Change return type of hal_btcoex_IsBtControlLps()
      staging: rtl8723bs: Change return type of hal_btcoex_IsLpsOn()
      staging: rtl8723bs: Replace hal_btcoex_Initialize()
      staging: rtl8712: r8712_os_recv_resource_alloc(): Change return type
      staging: rtl8712: _r8712_init_recv_priv(): Change return type
      staging: rtl8712: r8712_init_recv_priv(): Change return type
      staging: rtl8712: r8712_os_recvbuf_resource_alloc(): Change return va=
lues
      staging: rtl8712: r8712_os_recvbuf_resource_free(): Change return type
      staging: rtl8712: r8712_tkip_decrypt(): Change return type
      staging: rtl8712: aes_cipher(): Change return type
      staging: rtl8712: aes_decipher(): Change return type
      staging: rtl8712: r8712_aes_decrypt(): Change return type
      staging: rtl8712: amsdu_to_msdu(): Change return type
      staging: rtl8712: recv_indicatepkt_reorder(): Change return values
      staging: rtl8712: r8712_wlanhdr_to_ethhdr(): Change return values
      staging: rtl8712: r8712_recv_entry(): Change return type
      staging: rtl8712: recvbuf2recvframe(): Change return type
      staging: rtl8712: init_default_value(): Change return type
      staging: rtl8712: init_drv_sw(): Change return values
      staging: rtl8712: r8712_free_drv_sw(): Change return type
      staging: rtl8712: Remove while loop and check_cmd_fifo()
      staging: rtl8712: r8712_xmit_classifier(): Change return values and t=
ype
      staging: rtl8712: _r8712_init_xmit_priv(): Change return values and t=
ype
      staging: rtl8712: r8712_update_attrib(): Change return values and type
      staging: rtl8712: make_wlanhdr(): Change return values and type
      staging: rtl8712: r8712_free_xmitbuf(): Change return type
      staging: rtl8712: r8712_xmit_direct(): Change return type
      staging: rtl8712: r8712_construct_txaggr_cmd_desc(): Change return ty=
pe
      staging: rtl8712: r8712_construct_txaggr_cmd_hdr(): Change return type
      staging: rtl8712: xmitframe_addmic(): Change return values and type
      staging: rtl8712: r8712_append_mpdu_unit(): Change return type
      staging: rtl8712: r8712_xmitframe_aggr_1st(): Change return type to v=
oid
      staging: rtl8712: r8712_dump_aggr_xframe(): Change type to void
      staging: gasket: apex: Make structure apex_desc constant

P SAI PRASANTH (1):
      staging: rts5208: Fix checkpath warning

Peikan Tsai (1):
      staging: most-core: Fix checkpatch warnings

Prakhar Sinha (1):
      staging: rts5208: Fixed checkpath warning.

Pratik Shinde (3):
      staging: erofs:converting all 'unsigned' to 'unsigned int'
      staging: erofs: removing an extra call to iloc() in fill_inode()
      erofs: using switch-case while checking the inode type.

Rasmus Villemoes (1):
      staging: rtl8723bs: replace __inline by inline

Razvan Stefanescu (5):
      staging: fsl-dpaa2/ethsw: Fix setting port learning/flooding flags
      staging: fsl-dpaa2/ethsw: Add network interface statistics
      staging: fsl-dpaa2/ethsw: Remove netdevice on port probing error
      staging: fsl-dpaa2/ethsw: Add ndo_get_phys_port_name
      staging: fsl-dpaa2/ethsw: Add comments to ETHSW_VLAN flags

Rodrigo Ribeiro (1):
      staging: iio: accel: adis16240: Improve readability on write_raw func=
tion

Rohit Sarkar (2):
      staging: pi433: Fix typo in documentation
      staging: vhciq_core: replace snprintf with scnprintf

Rui Miguel Silva (2):
      staging: greybus: add missing includes
      staging: greybus: fix more header declarations

Saiyam Doshi (1):
      staging: emxx_udc: remove local TRUE/FALSE definition

Sandro Volery (3):
      Staging: exfat: Avoid use of strcpy
      Staging: octeon: Avoid several usecases of strcpy
      Staging: gasket: Use temporaries to reduce line length.

Saurav Girepunje (7):
      staging: rtl8188eu: core: rtw_recv.c: Remove Unnecessary parentheses
      staging: rtl8188eu: core: add spaces around '-', '+', '>>','<<' and '=
*' in rtw_efuse.c
      staging: rtl8723bs: core: correct spelling mistake in rtw_ap.c
      staging: rtl8723bs: core: Remove Unnecessary parentheses
      staging: rtl8723bs: core: add spaces around '-', '+', '&','|' and '?'
      staging: rtl8723bs: hal: Drop condition with no effect
      staging: rtl8723bs: os_dep: Drop condition with no effect

Sean Nyekjaer (1):
      iio: imu: st_lsm6dsx: flip irq return logic

Sebastian Andrzej Siewior (1):
      staging: most: Use DEFINE_SPINLOCK() instead of struct spinlock

Sergio Paracuellos (1):
      staging: mt7621-pci: avoid use 'err' local variable

Simon Horman (1):
      dt-bindings: iio: light: isl29501: Rename bindings documentation file

Stefan Popa (1):
      iio: adc: ad7606: Add support for AD7606B ADC

Stephen Boyd (2):
      staging: Remove dev_err() usage after platform_get_irq()
      iio: Remove dev_err() usage after platform_get_irq()

Stephen Brennan (6):
      staging: rtl8192u: fix spacing errors
      staging: rtl8192u: fix OPEN_BRACE errors in ieee80211
      staging: rtl8192u: fix macro alignment in ieee80211
      staging: rtl8192u: fix spacing in ieee80211
      staging: rtl8192u: remove code under TO_DO_LIST
      staging: rtl8192u: Fix indentation

Sumera Priyadarsini (5):
      staging: gasket: Remove unnecessary line-breaks in function signatures
      staging: rtl8192u: Remove unnecessary blank lines
      staging: rtl8192u: Add space around binary operators
      staging: rtl8192u: Add or remove spaces to fix style issues
      staging: rtl8192u: Add or remove blank lines as required

Sven Van Asbroeck (1):
      dt-bindings: anybus-controller: move to staging/ tree

Taihsiang Ho (tai271828) (1):
      staging: rtl8712: wifi: checkpatch style fix

Thiago Bonotto (1):
      staging: isdn: remove unnecessary parentheses

Tomasz Duszynski (2):
      dt-bindings: iio: chemical: pms7003: convert bindings to yaml
      MAINTAINERS: add entry for plantower pms7003 driver

Valdis Kletnieks (2):
      staging: exfat: add exfat filesystem code to staging
      drivers/staging/exfat - by default, prohibit mount of fat/vfat

Valentin Vidic (10):
      staging: exfat: cleanup blank line warnings
      staging: exfat: use BIT macro for defining sizes
      staging: exfat: cleanup braces for if/else statements
      staging: exfat: fix spelling errors in comments
      staging: exfat: drop local TRUE/FALSE defines
      staging: exfat: cleanup explicit comparisons to NULL
      staging: exfat: cleanup spacing for operators
      staging: exfat: cleanup spacing for casts
      staging: exfat: use integer constants
      staging: exfat: drop unused function parameter

Vitor Soares (2):
      i3c: move i3c_device_match_id to device.c and export it
      iio: imu: st_lsm6dsx: add i3c basic support for LSM6DSO and LSM6DSR

Wei Yongjun (1):
      staging: fsl-dpaa2/ethsw: Remove useless set memory to zero use memse=
t()

Wolfram Sang (3):
      iio: light: cm36651: convert to i2c_new_dummy_device
      iio: light: veml6070: convert to i2c_new_dummy_device
      iio: pressure: hp03: convert to i2c_new_dummy_device

YueHaibing (18):
      staging: kpc2000: kpc_spi: Remove unnecessary null check before kfree
      staging: rtl8723bs: remove set but not used variable 'cck_highpwr'
      staging: rtl8192e: remove set but not used variable 'payload '
      staging: rtl8723bs: remove set but not used variable 'bWifiBusy'
      staging: rtl8723bs: remove set but not used variable 'pszBBRegMpFile'
      staging: rtl8723bs: os_dep: remove two set but not used variables
      staging: vc04_services: fix unused-but-set-variable warning
      staging: rtl8723bs: remove set but not used variable 'bEEPROMCheck'
      staging: rtl8723bs: remove set but not used variables 'prspbuf' and '=
auth'
      staging: rtl8723bs: remove set but not used variable 'FirstConnect'
      staging: rtl8192u: ieee80211: remove set but not used variable 'data_=
len'
      staging: rtl8192e: remove two set but not used variables
      staging: rtl8192e: remove set but not used variable 'data_len'
      iio: st_sensors: Fix build error
      staging: most: sound: Fix error path of audio_init
      staging: exfat: remove duplicated include from exfat_super.c
      staging: exfat: remove unused including <linux/version.h>
      staging: exfat: Use kmemdup in exfat_symlink()

mario tesi (1):
      iio: imu: st_lsm6dsx: Fix FIFO diff mask for tagged fifo

zhong jiang (2):
      Staging: rtl8723bs: Use kzfree rather than its implementation
      staging: exfat: remove the redundant check when kfree an object in ex=
fat_destroy_inode

 .../ABI/testing/sysfs-bus-iio-dfsdm-adc-stm32      |    2 +-
 .../ABI/testing/sysfs-bus-iio-timer-stm32          |   23 -
 .../devicetree/bindings/iio/adc/adi,ad7192.yaml    |  121 +
 .../devicetree/bindings/iio/adc/adi,ad7606.txt     |   66 -
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    |  138 +
 .../devicetree/bindings/iio/adc/st,stm32-adc.txt   |    6 +
 .../bindings/iio/chemical/plantower,pms7003.txt    |   26 -
 .../bindings/iio/chemical/plantower,pms7003.yaml   |   51 +
 .../devicetree/bindings/iio/imu/adi,adis16460.yaml |   53 +
 .../devicetree/bindings/iio/imu/st_lsm6dsx.txt     |    3 +
 .../devicetree/bindings/iio/light/noa1305.yaml     |   44 +
 .../light/{isl29501.txt =3D> renesas,isl29501.txt}   |    0
 .../devicetree/bindings/iio/light/stk33xx.yaml     |   49 +
 .../devicetree/bindings/iio/mount-matrix.txt       |  203 +
 .../bindings/iio/potentiometer/max5432.yaml        |   44 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 .../filesystems/erofs.txt                          |   19 +-
 MAINTAINERS                                        |   41 +-
 drivers/Kconfig                                    |    2 +
 drivers/Makefile                                   |    1 +
 drivers/counter/ftm-quaddec.c                      |   30 +-
 drivers/greybus/Kconfig                            |   32 +
 drivers/greybus/Makefile                           |   26 +
 drivers/greybus/arpc.h                             |   63 +
 drivers/{staging =3D> }/greybus/bundle.c             |    2 +-
 drivers/{staging =3D> }/greybus/connection.c         |    2 +-
 drivers/{staging =3D> }/greybus/control.c            |    2 +-
 drivers/{staging =3D> }/greybus/core.c               |    2 +-
 drivers/{staging =3D> }/greybus/debugfs.c            |    3 +-
 drivers/{staging =3D> }/greybus/es2.c                |    3 +-
 drivers/{staging =3D> }/greybus/greybus_trace.h      |    2 +-
 drivers/{staging =3D> }/greybus/hd.c                 |   12 +-
 drivers/{staging =3D> }/greybus/interface.c          |    2 +-
 drivers/{staging =3D> }/greybus/manifest.c           |   41 +-
 drivers/{staging =3D> }/greybus/module.c             |    2 +-
 drivers/{staging =3D> }/greybus/operation.c          |    2 +-
 drivers/{staging =3D> }/greybus/svc.c                |    3 +-
 drivers/{staging =3D> }/greybus/svc_watchdog.c       |    2 +-
 drivers/i3c/device.c                               |   53 +
 drivers/i3c/master.c                               |   45 -
 drivers/iio/accel/Kconfig                          |    4 +-
 drivers/iio/accel/cros_ec_accel_legacy.c           |  352 +-
 drivers/iio/accel/kxcjk-1013.c                     |    4 +-
 drivers/iio/accel/mxc4005.c                        |   40 +-
 drivers/iio/accel/sca3000.c                        |    2 +-
 drivers/iio/accel/st_accel.h                       |    1 +
 drivers/iio/accel/st_accel_buffer.c                |   44 +-
 drivers/iio/accel/st_accel_core.c                  |   32 +-
 drivers/iio/accel/st_accel_i2c.c                   |   23 +-
 drivers/iio/accel/st_accel_spi.c                   |   20 +-
 drivers/iio/adc/ad7606.c                           |  100 +-
 drivers/iio/adc/ad7606.h                           |   61 +-
 drivers/iio/adc/ad7606_par.c                       |    4 +-
 drivers/iio/adc/ad7606_spi.c                       |  282 +-
 drivers/iio/adc/at91_adc.c                         |    4 +-
 drivers/iio/adc/axp288_adc.c                       |    4 +-
 drivers/iio/adc/bcm_iproc_adc.c                    |    7 +-
 drivers/iio/adc/da9150-gpadc.c                     |    4 +-
 drivers/iio/adc/envelope-detector.c                |    5 +-
 drivers/iio/adc/exynos_adc.c                       |    4 +-
 drivers/iio/adc/fsl-imx25-gcq.c                    |    1 -
 drivers/iio/adc/hi8435.c                           |   34 +-
 drivers/iio/adc/imx7d_adc.c                        |    4 +-
 drivers/iio/adc/lpc32xx_adc.c                      |    4 +-
 drivers/iio/adc/max1027.c                          |   38 +-
 drivers/iio/adc/npcm_adc.c                         |    1 -
 drivers/iio/adc/rockchip_saradc.c                  |    4 +-
 drivers/iio/adc/sc27xx_adc.c                       |  122 +-
 drivers/iio/adc/spear_adc.c                        |    1 -
 drivers/iio/adc/stm32-adc-core.c                   |  194 +-
 drivers/iio/adc/stm32-adc.c                        |    4 +-
 drivers/iio/adc/stm32-dfsdm-adc.c                  |    5 +-
 drivers/iio/adc/sun4i-gpadc-iio.c                  |    4 +-
 drivers/iio/adc/twl6030-gpadc.c                    |    4 +-
 drivers/iio/adc/vf610_adc.c                        |    4 +-
 .../iio/common/cros_ec_sensors/cros_ec_sensors.c   |   54 +-
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  |  153 +-
 .../iio/common/hid-sensors/hid-sensor-attributes.c |   69 +-
 drivers/iio/common/st_sensors/Kconfig              |    2 +
 drivers/iio/common/st_sensors/st_sensors_buffer.c  |   10 +-
 drivers/iio/common/st_sensors/st_sensors_core.c    |  118 +-
 drivers/iio/common/st_sensors/st_sensors_i2c.c     |   82 +-
 drivers/iio/common/st_sensors/st_sensors_spi.c     |  148 +-
 drivers/iio/common/st_sensors/st_sensors_trigger.c |   31 +-
 drivers/iio/dac/ad5380.c                           |    2 +-
 drivers/iio/gyro/st_gyro.h                         |    1 +
 drivers/iio/gyro/st_gyro_buffer.c                  |   48 +-
 drivers/iio/gyro/st_gyro_core.c                    |   32 +-
 drivers/iio/gyro/st_gyro_i2c.c                     |   22 +-
 drivers/iio/gyro/st_gyro_spi.c                     |   20 +-
 drivers/iio/humidity/am2315.c                      |   24 +-
 drivers/iio/humidity/hdc100x.c                     |   19 +-
 drivers/iio/imu/Kconfig                            |   12 +
 drivers/iio/imu/Makefile                           |    1 +
 drivers/iio/imu/adis.c                             |   12 +
 drivers/iio/imu/adis16460.c                        |  489 +++
 drivers/iio/imu/inv_mpu6050/Kconfig                |   10 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |    3 +-
 drivers/iio/imu/st_lsm6dsx/Kconfig                 |   11 +-
 drivers/iio/imu/st_lsm6dsx/Makefile                |    1 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |   29 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |   36 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |  622 ++-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c        |   15 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c        |   57 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c        |   15 +
 drivers/iio/light/Kconfig                          |   11 +
 drivers/iio/light/Makefile                         |    1 +
 drivers/iio/light/apds9960.c                       |    2 +-
 drivers/iio/light/cm3323.c                         |   33 +-
 drivers/iio/light/cm36651.c                        |   12 +-
 drivers/iio/light/cros_ec_light_prox.c             |   51 +-
 drivers/iio/light/noa1305.c                        |  313 ++
 drivers/iio/light/si1145.c                         |   42 +-
 drivers/iio/light/stk3310.c                        |    9 +
 drivers/iio/light/tsl2772.c                        |  124 +-
 drivers/iio/light/veml6070.c                       |    6 +-
 drivers/iio/magnetometer/mmc35240.c                |    4 +-
 drivers/iio/magnetometer/st_magn.h                 |    1 +
 drivers/iio/magnetometer/st_magn_buffer.c          |   31 +-
 drivers/iio/magnetometer/st_magn_core.c            |   32 +-
 drivers/iio/magnetometer/st_magn_i2c.c             |   22 +-
 drivers/iio/magnetometer/st_magn_spi.c             |   20 +-
 drivers/iio/potentiometer/Kconfig                  |   11 +
 drivers/iio/potentiometer/Makefile                 |    1 +
 drivers/iio/potentiometer/max5432.c                |  135 +
 drivers/iio/pressure/cros_ec_baro.c                |   19 +-
 drivers/iio/pressure/hp03.c                        |    6 +-
 drivers/iio/pressure/st_pressure.h                 |    1 +
 drivers/iio/pressure/st_pressure_buffer.c          |   39 +-
 drivers/iio/pressure/st_pressure_core.c            |   32 +-
 drivers/iio/pressure/st_pressure_i2c.c             |   31 +-
 drivers/iio/pressure/st_pressure_spi.c             |   22 +-
 drivers/iio/proximity/Kconfig                      |    2 +-
 drivers/iio/temperature/maxim_thermocouple.c       |   25 +-
 drivers/iio/trigger/stm32-timer-trigger.c          |   84 -
 drivers/staging/Kconfig                            |    4 +-
 drivers/staging/Makefile                           |    2 +-
 drivers/staging/android/TODO                       |    2 -
 drivers/staging/android/ion/ion.c                  |   36 -
 drivers/staging/android/ion/ion.h                  |   10 +-
 drivers/staging/comedi/drivers/daqboard2000.c      |    7 +-
 drivers/staging/comedi/drivers/ni_mio_common.c     |    2 +-
 drivers/staging/comedi/drivers/usbduxsigma.c       |    2 +-
 drivers/staging/emxx_udc/emxx_udc.c                |   80 +-
 drivers/staging/emxx_udc/emxx_udc.h                |    5 -
 drivers/staging/erofs/Kconfig                      |  151 -
 drivers/staging/erofs/Makefile                     |   13 -
 drivers/staging/erofs/TODO                         |   46 -
 drivers/staging/erofs/inode.c                      |  332 --
 drivers/staging/erofs/super.c                      |  701 ----
 drivers/staging/erofs/unzip_vle.c                  | 1591 --------
 drivers/staging/exfat/Kconfig                      |   49 +
 drivers/staging/exfat/Makefile                     |   10 +
 drivers/staging/exfat/TODO                         |   12 +
 drivers/staging/exfat/exfat.h                      |  971 +++++
 drivers/staging/exfat/exfat_blkdev.c               |  136 +
 drivers/staging/exfat/exfat_cache.c                |  724 ++++
 drivers/staging/exfat/exfat_core.c                 | 3701 ++++++++++++++++=
++
 drivers/staging/exfat/exfat_nls.c                  |  404 ++
 drivers/staging/exfat/exfat_super.c                | 4049 ++++++++++++++++=
++++
 drivers/staging/exfat/exfat_upcase.c               |  740 ++++
 drivers/staging/fbtft/fb_hx8340bn.c                |    2 +-
 drivers/staging/fbtft/fb_hx8347d.c                 |    2 +-
 drivers/staging/fbtft/fb_ili9163.c                 |    2 +-
 drivers/staging/fbtft/fb_ili9320.c                 |    2 +-
 drivers/staging/fbtft/fb_ili9325.c                 |    2 +-
 drivers/staging/fbtft/fb_pcd8544.c                 |    4 +-
 drivers/staging/fbtft/fb_s6d1121.c                 |    2 +-
 drivers/staging/fbtft/fb_ssd1289.c                 |    2 +-
 .../bindings/fieldbus/arcx,anybus-controller.txt   |    0
 drivers/staging/fsl-dpaa2/ethsw/TODO               |    1 -
 drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h         |   15 +-
 drivers/staging/fsl-dpaa2/ethsw/dpsw.c             |   51 +
 drivers/staging/fsl-dpaa2/ethsw/dpsw.h             |   56 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c    |   44 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |  309 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h            |    4 +
 drivers/staging/gasket/apex_driver.c               |   22 +-
 drivers/staging/gasket/gasket_ioctl.c              |   12 +-
 drivers/staging/goldfish/goldfish_audio.c          |    4 +-
 .../greybus/Documentation/firmware/authenticate.c  |   46 -
 .../greybus/Documentation/firmware/firmware.c      |   46 -
 drivers/staging/greybus/Kconfig                    |   27 -
 drivers/staging/greybus/Makefile                   |   22 -
 drivers/staging/greybus/arche-platform.c           |    2 +-
 drivers/staging/greybus/arpc.h                     |  109 -
 drivers/staging/greybus/audio_apbridgea.c          |    3 +-
 drivers/staging/greybus/audio_apbridgea.h          |   26 +-
 drivers/staging/greybus/audio_codec.h              |    4 +-
 drivers/staging/greybus/audio_gb.c                 |    4 +-
 drivers/staging/greybus/audio_manager.c            |    2 +-
 drivers/staging/greybus/authentication.c           |    3 +-
 drivers/staging/greybus/bootrom.c                  |    2 +-
 drivers/staging/greybus/camera.c                   |    2 +-
 drivers/staging/greybus/firmware.h                 |    4 +-
 drivers/staging/greybus/fw-core.c                  |    2 +-
 drivers/staging/greybus/fw-download.c              |    2 +-
 drivers/staging/greybus/fw-management.c            |    2 +-
 drivers/staging/greybus/gb-camera.h                |    2 +-
 drivers/staging/greybus/gbphy.c                    |    2 +-
 drivers/staging/greybus/gbphy.h                    |    2 +-
 drivers/staging/greybus/gpio.c                     |    2 +-
 drivers/staging/greybus/greybus_authentication.h   |   48 +-
 drivers/staging/greybus/greybus_firmware.h         |   48 +-
 drivers/staging/greybus/hid.c                      |    3 +-
 drivers/staging/greybus/i2c.c                      |   24 +-
 drivers/staging/greybus/light.c                    |   16 +-
 drivers/staging/greybus/log.c                      |    9 +-
 drivers/staging/greybus/loopback.c                 |    9 +-
 drivers/staging/greybus/power_supply.c             |    3 +-
 drivers/staging/greybus/pwm.c                      |    2 +-
 drivers/staging/greybus/raw.c                      |    3 +-
 drivers/staging/greybus/sdio.c                     |    2 +-
 drivers/staging/greybus/spi.c                      |    2 +-
 drivers/staging/greybus/spilib.c                   |    2 +-
 drivers/staging/greybus/spilib.h                   |    2 +-
 drivers/staging/greybus/tools/loopback_test.c      |    2 -
 drivers/staging/greybus/uart.c                     |    2 +-
 drivers/staging/greybus/usb.c                      |    2 +-
 drivers/staging/greybus/vibrator.c                 |    3 +-
 drivers/staging/iio/accel/adis16240.c              |    5 +-
 drivers/staging/iio/adc/ad7192.c                   |  175 +-
 drivers/staging/iio/adc/ad7192.h                   |   37 -
 drivers/staging/iio/resolver/ad2s1210.c            |   12 +-
 drivers/staging/isdn/hysdn/hysdn_net.c             |    2 +-
 drivers/staging/isdn/hysdn/hysdn_procconf.c        |    2 +-
 drivers/staging/kpc2000/kpc2000/cell_probe.c       |   18 +-
 drivers/staging/kpc2000/kpc2000/core.c             |   18 +-
 drivers/staging/kpc2000/kpc2000_i2c.c              |    4 +-
 drivers/staging/kpc2000/kpc2000_spi.c              |    3 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c          |    8 +-
 drivers/staging/media/allegro-dvt/allegro-core.c   |    4 +-
 drivers/staging/media/hantro/hantro_drv.c          |    4 +-
 drivers/staging/media/imx/imx7-media-csi.c         |    4 +-
 drivers/staging/media/imx/imx7-mipi-csis.c         |    4 +-
 drivers/staging/media/meson/vdec/esparser.c        |    4 +-
 drivers/staging/media/omap4iss/iss.c               |    1 -
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c     |    5 +-
 drivers/staging/most/cdev/cdev.c                   |    4 +-
 drivers/staging/most/core.c                        |    4 +-
 drivers/staging/most/dim2/dim2.c                   |   21 -
 drivers/staging/most/dim2/hal.c                    |   99 +-
 drivers/staging/most/dim2/hal.h                    |    4 -
 drivers/staging/most/net/net.c                     |    3 +-
 drivers/staging/most/sound/sound.c                 |    5 +-
 drivers/staging/most/video/video.c                 |    3 +-
 drivers/staging/mt7621-dma/mtk-hsdma.c             |    4 +-
 drivers/staging/mt7621-pci/pci-mt7621.c            |   12 +-
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c    |    5 +-
 drivers/staging/nvec/nvec.c                        |    8 +-
 drivers/staging/octeon/ethernet.c                  |   16 +-
 drivers/staging/olpc_dcon/TODO                     |    4 -
 drivers/staging/pi433/Documentation/pi433.txt      |    2 +-
 drivers/staging/ralink-gdma/ralink-gdma.c          |    4 +-
 drivers/staging/rtl8188eu/core/rtw_cmd.c           |    2 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |  141 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |    4 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |   11 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |    2 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c          |   14 +-
 drivers/staging/rtl8188eu/core/rtw_security.c      |   41 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |   19 +-
 drivers/staging/rtl8188eu/hal/bb_cfg.c             |    2 +-
 drivers/staging/rtl8188eu/hal/rf_cfg.c             |   14 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c        |  143 +-
 .../staging/rtl8188eu/include/hal8188e_phy_reg.h   |  881 -----
 drivers/staging/rtl8188eu/include/hal_intf.h       |    2 +-
 drivers/staging/rtl8188eu/include/mlme_osdep.h     |    1 -
 drivers/staging/rtl8188eu/include/osdep_service.h  |    2 -
 drivers/staging/rtl8188eu/include/rtw_mlme.h       |    2 +-
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h   |    1 -
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c      |    5 -
 drivers/staging/rtl8188eu/os_dep/osdep_service.c   |    5 -
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c   |    3 +-
 drivers/staging/rtl8192e/Kconfig                   |    1 +
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c         |   12 +-
 drivers/staging/rtl8192e/rtllib.h                  |    5 +-
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c       |  206 +-
 drivers/staging/rtl8192e/rtllib_rx.c               |    2 -
 drivers/staging/rtl8192e/rtllib_softmac.c          |   24 +-
 drivers/staging/rtl8192u/Kconfig                   |    2 +
 drivers/staging/rtl8192u/ieee80211/dot11d.c        |   10 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211.h     |   42 +-
 .../staging/rtl8192u/ieee80211/ieee80211_crypt.c   |    2 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      |  204 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c      |   22 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_wep.c       |    4 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |  635 ++-
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c |    1 -
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |   14 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c  |  142 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c  |   43 +-
 .../staging/rtl8192u/ieee80211/rtl819x_BAProc.c    |   12 +-
 drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h    |   17 +-
 .../staging/rtl8192u/ieee80211/rtl819x_HTProc.c    |    4 -
 .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    |   18 +-
 drivers/staging/rtl8192u/r8180_93cx6.c             |   11 +-
 drivers/staging/rtl8192u/r8190_rtl8256.c           |   42 +-
 drivers/staging/rtl8192u/r8192U_core.c             |  112 +-
 drivers/staging/rtl8192u/r8192U_dm.c               |    2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c         |    2 +-
 drivers/staging/rtl8192u/r819xU_phy.c              |   59 -
 drivers/staging/rtl8712/os_intfs.c                 |   35 +-
 drivers/staging/rtl8712/recv_linux.c               |   18 +-
 drivers/staging/rtl8712/recv_osdep.h               |   16 +-
 drivers/staging/rtl8712/rtl8712_cmd.c              |   14 +-
 drivers/staging/rtl8712/rtl8712_recv.c             |   54 +-
 drivers/staging/rtl8712/rtl8712_recv.h             |    2 +-
 drivers/staging/rtl8712/rtl8712_xmit.c             |   46 +-
 drivers/staging/rtl8712/rtl8712_xmit.h             |    8 +-
 drivers/staging/rtl8712/rtl871x_io.h               |    7 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |    5 +-
 drivers/staging/rtl8712/rtl871x_ioctl_set.c        |   16 +-
 drivers/staging/rtl8712/rtl871x_ioctl_set.h        |    4 +-
 drivers/staging/rtl8712/rtl871x_mlme.c             |   34 +-
 drivers/staging/rtl8712/rtl871x_mlme.h             |    8 +-
 drivers/staging/rtl8712/rtl871x_mp.c               |    9 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c          |   10 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.h          |    2 +-
 drivers/staging/rtl8712/rtl871x_recv.c             |   22 +-
 drivers/staging/rtl8712/rtl871x_recv.h             |    2 +-
 drivers/staging/rtl8712/rtl871x_rf.h               |    3 +-
 drivers/staging/rtl8712/rtl871x_security.c         |   29 +-
 drivers/staging/rtl8712/rtl871x_security.h         |    4 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |   65 +-
 drivers/staging/rtl8712/rtl871x_xmit.h             |   20 +-
 drivers/staging/rtl8712/usb_intf.c                 |    2 +-
 drivers/staging/rtl8712/usb_osintf.h               |    4 +-
 drivers/staging/rtl8712/wifi.h                     |    8 -
 drivers/staging/rtl8712/xmit_linux.c               |    2 +-
 drivers/staging/rtl8723bs/Makefile                 |    1 -
 drivers/staging/rtl8723bs/core/rtw_ap.c            |  113 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |   11 +-
 drivers/staging/rtl8723bs/core/rtw_debug.c         | 1307 -------
 drivers/staging/rtl8723bs/core/rtw_io.c            |    2 +-
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c     |    7 -
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |   15 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c       |  121 +-
 drivers/staging/rtl8723bs/core/rtw_security.c      |    3 +-
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     |    7 +-
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c    |    6 -
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h       |    1 -
 drivers/staging/rtl8723bs/hal/hal_btcoex.c         |   44 +-
 drivers/staging/rtl8723bs/hal/hal_com.c            |    5 +-
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     |   18 -
 drivers/staging/rtl8723bs/hal/hal_intf.c           |    2 +-
 drivers/staging/rtl8723bs/hal/hal_phy.c            |  157 -
 drivers/staging/rtl8723bs/hal/odm.c                |   19 +-
 drivers/staging/rtl8723bs/hal/odm.h                |    4 -
 drivers/staging/rtl8723bs/hal/odm_CfoTracking.c    |    5 -
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c       |    7 -
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c       |   15 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    |    8 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |    7 +-
 drivers/staging/rtl8723bs/include/autoconf.h       |    4 -
 drivers/staging/rtl8723bs/include/drv_types.h      |    8 +-
 drivers/staging/rtl8723bs/include/hal_btcoex.h     |    8 +-
 drivers/staging/rtl8723bs/include/hal_com_phycfg.h |   17 -
 drivers/staging/rtl8723bs/include/hal_intf.h       |    2 +-
 drivers/staging/rtl8723bs/include/hal_phy_cfg.h    |    4 +-
 drivers/staging/rtl8723bs/include/osdep_intf.h     |    2 -
 drivers/staging/rtl8723bs/include/osdep_service.h  |   10 +-
 .../rtl8723bs/include/osdep_service_linux.h        |   14 +-
 drivers/staging/rtl8723bs/include/rtw_debug.h      |   77 -
 drivers/staging/rtl8723bs/include/rtw_mlme.h       |   20 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h   |    3 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h       |   16 +-
 drivers/staging/rtl8723bs/include/sta_info.h       |    2 +-
 drivers/staging/rtl8723bs/include/wifi.h           |   14 +-
 drivers/staging/rtl8723bs/include/wlan_bssdef.h    |    2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  |   10 -
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c     |    7 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |   21 +-
 drivers/staging/rtl8723bs/os_dep/osdep_service.c   |    4 -
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c        |  779 ----
 drivers/staging/rtl8723bs/os_dep/rtw_proc.h        |   37 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |    5 +-
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c       |    5 -
 drivers/staging/rts5208/ms.c                       |    2 +-
 drivers/staging/rts5208/rtsx_transport.c           |   12 +-
 drivers/staging/rts5208/sd.c                       |   28 +-
 drivers/staging/sm750fb/ddk750.h                   |    3 -
 drivers/staging/sm750fb/ddk750_swi2c.c             |    3 -
 drivers/staging/sm750fb/ddk750_swi2c.h             |    3 -
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |    2 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c           |    4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |    5 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |   38 +-
 drivers/staging/vt6656/rxtx.c                      |   10 +-
 drivers/staging/vt6656/usbpipe.c                   |    2 +-
 .../staging/wilc1000/microchip,wilc1000,sdio.txt   |    8 +-
 .../staging/wilc1000/microchip,wilc1000,spi.txt    |    8 +
 drivers/staging/wilc1000/wilc_hif.c                |   70 +-
 drivers/staging/wilc1000/wilc_hif.h                |    6 +-
 drivers/staging/wilc1000/wilc_mon.c                |    3 +-
 drivers/staging/wilc1000/wilc_netdev.c             |   78 +-
 drivers/staging/wilc1000/wilc_sdio.c               |   18 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c  |   63 +-
 drivers/staging/wilc1000/wilc_wfi_netdevice.h      |    3 +-
 drivers/staging/wilc1000/wilc_wlan.c               |  135 +-
 drivers/staging/wilc1000/wilc_wlan.h               |   19 +-
 drivers/staging/wilc1000/wilc_wlan_cfg.c           |   78 +-
 drivers/staging/wilc1000/wilc_wlan_cfg.h           |    4 +-
 drivers/staging/wilc1000/wilc_wlan_if.h            |    3 +-
 drivers/staging/wlan-ng/hfa384x_usb.c              |  210 +-
 drivers/staging/wlan-ng/prism2mib.c                |   44 +-
 drivers/staging/wlan-ng/prism2sta.c                |    2 +-
 fs/Kconfig                                         |    1 +
 fs/Makefile                                        |    1 +
 fs/erofs/Kconfig                                   |   91 +
 fs/erofs/Makefile                                  |   11 +
 {drivers/staging =3D> fs}/erofs/compress.h           |    4 +-
 {drivers/staging =3D> fs}/erofs/data.c               |  178 +-
 {drivers/staging =3D> fs}/erofs/decompressor.c       |   65 +-
 {drivers/staging =3D> fs}/erofs/dir.c                |   71 +-
 {drivers/staging =3D> fs}/erofs/erofs_fs.h           |  216 +-
 fs/erofs/inode.c                                   |  337 ++
 {drivers/staging =3D> fs}/erofs/internal.h           |  425 +-
 {drivers/staging =3D> fs}/erofs/namei.c              |   48 +-
 fs/erofs/super.c                                   |  615 +++
 .../erofs/include/linux =3D> fs/erofs}/tagptr.h      |   12 +-
 {drivers/staging =3D> fs}/erofs/utils.c              |  126 +-
 {drivers/staging =3D> fs}/erofs/xattr.c              |   76 +-
 {drivers/staging =3D> fs}/erofs/xattr.h              |   49 +-
 fs/erofs/zdata.c                                   | 1431 +++++++
 .../staging/erofs/unzip_vle.h =3D> fs/erofs/zdata.h  |  129 +-
 {drivers/staging =3D> fs}/erofs/zmap.c               |  106 +-
 .../erofs/unzip_pagevec.h =3D> fs/erofs/zpvec.h      |   58 +-
 .../staging/greybus =3D> include/linux}/greybus.h    |   26 +-
 .../staging =3D> include/linux}/greybus/bundle.h     |    3 +
 .../staging =3D> include/linux}/greybus/connection.h |    3 +
 .../staging =3D> include/linux}/greybus/control.h    |    3 +
 .../staging =3D> include/linux}/greybus/greybus_id.h |    0
 .../linux}/greybus/greybus_manifest.h              |    5 +-
 .../linux}/greybus/greybus_protocols.h             |   50 +-
 {drivers/staging =3D> include/linux}/greybus/hd.h    |    5 +-
 .../staging =3D> include/linux}/greybus/interface.h  |    5 +-
 .../staging =3D> include/linux}/greybus/manifest.h   |    4 +-
 .../staging =3D> include/linux}/greybus/module.h     |    5 +-
 .../staging =3D> include/linux}/greybus/operation.h  |    7 +-
 {drivers/staging =3D> include/linux}/greybus/svc.h   |    7 +-
 include/linux/i3c/device.h                         |    4 +
 include/linux/iio/common/cros_ec_sensors_core.h    |   28 +-
 include/linux/iio/common/st_sensors.h              |   66 +-
 include/linux/iio/common/st_sensors_i2c.h          |    4 +-
 include/linux/iio/common/st_sensors_spi.h          |    4 +-
 include/linux/iio/imu/adis.h                       |    2 +
 .../erofs/include =3D> include}/trace/events/erofs.h |   19 +-
 include/uapi/linux/magic.h                         |    1 +
 tools/iio/.gitignore                               |    4 +
 451 files changed, 20376 insertions(+), 12379 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7192.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7606.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/chemical/plantowe=
r,pms7003.txt
 create mode 100644 Documentation/devicetree/bindings/iio/chemical/plantowe=
r,pms7003.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/imu/adi,adis16460=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/noa1305.yaml
 rename Documentation/devicetree/bindings/iio/light/{isl29501.txt =3D> rene=
sas,isl29501.txt} (100%)
 create mode 100644 Documentation/devicetree/bindings/iio/light/stk33xx.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/mount-matrix.txt
 create mode 100644 Documentation/devicetree/bindings/iio/potentiometer/max=
5432.yaml
 rename {drivers/staging/erofs/Documentation =3D> Documentation}/filesystem=
s/erofs.txt (92%)
 create mode 100644 drivers/greybus/Kconfig
 create mode 100644 drivers/greybus/Makefile
 create mode 100644 drivers/greybus/arpc.h
 rename drivers/{staging =3D> }/greybus/bundle.c (99%)
 rename drivers/{staging =3D> }/greybus/connection.c (99%)
 rename drivers/{staging =3D> }/greybus/control.c (99%)
 rename drivers/{staging =3D> }/greybus/core.c (99%)
 rename drivers/{staging =3D> }/greybus/debugfs.c (94%)
 rename drivers/{staging =3D> }/greybus/es2.c (99%)
 rename drivers/{staging =3D> }/greybus/greybus_trace.h (99%)
 rename drivers/{staging =3D> }/greybus/hd.c (96%)
 rename drivers/{staging =3D> }/greybus/interface.c (99%)
 rename drivers/{staging =3D> }/greybus/manifest.c (95%)
 rename drivers/{staging =3D> }/greybus/module.c (99%)
 rename drivers/{staging =3D> }/greybus/operation.c (99%)
 rename drivers/{staging =3D> }/greybus/svc.c (99%)
 rename drivers/{staging =3D> }/greybus/svc_watchdog.c (99%)
 create mode 100644 drivers/iio/imu/adis16460.c
 create mode 100644 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i3c.c
 create mode 100644 drivers/iio/light/noa1305.c
 create mode 100644 drivers/iio/potentiometer/max5432.c
 delete mode 100644 drivers/staging/erofs/Kconfig
 delete mode 100644 drivers/staging/erofs/Makefile
 delete mode 100644 drivers/staging/erofs/TODO
 delete mode 100644 drivers/staging/erofs/inode.c
 delete mode 100644 drivers/staging/erofs/super.c
 delete mode 100644 drivers/staging/erofs/unzip_vle.c
 create mode 100644 drivers/staging/exfat/Kconfig
 create mode 100644 drivers/staging/exfat/Makefile
 create mode 100644 drivers/staging/exfat/TODO
 create mode 100644 drivers/staging/exfat/exfat.h
 create mode 100644 drivers/staging/exfat/exfat_blkdev.c
 create mode 100644 drivers/staging/exfat/exfat_cache.c
 create mode 100644 drivers/staging/exfat/exfat_core.c
 create mode 100644 drivers/staging/exfat/exfat_nls.c
 create mode 100644 drivers/staging/exfat/exfat_super.c
 create mode 100644 drivers/staging/exfat/exfat_upcase.c
 rename {Documentation =3D> drivers/staging/fieldbus/Documentation}/devicet=
ree/bindings/fieldbus/arcx,anybus-controller.txt (100%)
 delete mode 100644 drivers/staging/greybus/arpc.h
 delete mode 100644 drivers/staging/iio/adc/ad7192.h
 delete mode 100644 drivers/staging/rtl8723bs/hal/hal_phy.c
 delete mode 100644 drivers/staging/rtl8723bs/os_dep/rtw_proc.c
 delete mode 100644 drivers/staging/rtl8723bs/os_dep/rtw_proc.h
 create mode 100644 fs/erofs/Kconfig
 create mode 100644 fs/erofs/Makefile
 rename {drivers/staging =3D> fs}/erofs/compress.h (94%)
 rename {drivers/staging =3D> fs}/erofs/data.c (69%)
 rename {drivers/staging =3D> fs}/erofs/decompressor.c (85%)
 rename {drivers/staging =3D> fs}/erofs/dir.c (65%)
 rename {drivers/staging =3D> fs}/erofs/erofs_fs.h (61%)
 create mode 100644 fs/erofs/inode.c
 rename {drivers/staging =3D> fs}/erofs/internal.h (56%)
 rename {drivers/staging =3D> fs}/erofs/namei.c (84%)
 create mode 100644 fs/erofs/super.c
 rename {drivers/staging/erofs/include/linux =3D> fs/erofs}/tagptr.h (94%)
 rename {drivers/staging =3D> fs}/erofs/utils.c (71%)
 rename {drivers/staging =3D> fs}/erofs/xattr.c (90%)
 rename {drivers/staging =3D> fs}/erofs/xattr.h (62%)
 create mode 100644 fs/erofs/zdata.c
 rename drivers/staging/erofs/unzip_vle.h =3D> fs/erofs/zdata.h (51%)
 rename {drivers/staging =3D> fs}/erofs/zmap.c (81%)
 rename drivers/staging/erofs/unzip_pagevec.h =3D> fs/erofs/zpvec.h (71%)
 rename {drivers/staging/greybus =3D> include/linux}/greybus.h (88%)
 rename {drivers/staging =3D> include/linux}/greybus/bundle.h (96%)
 rename {drivers/staging =3D> include/linux}/greybus/connection.h (97%)
 rename {drivers/staging =3D> include/linux}/greybus/control.h (97%)
 rename {drivers/staging =3D> include/linux}/greybus/greybus_id.h (100%)
 rename {drivers/staging =3D> include/linux}/greybus/greybus_manifest.h (98=
%)
 rename {drivers/staging =3D> include/linux}/greybus/greybus_protocols.h (9=
6%)
 rename {drivers/staging =3D> include/linux}/greybus/hd.h (96%)
 rename {drivers/staging =3D> include/linux}/greybus/interface.h (95%)
 rename {drivers/staging =3D> include/linux}/greybus/manifest.h (80%)
 rename {drivers/staging =3D> include/linux}/greybus/module.h (87%)
 rename {drivers/staging =3D> include/linux}/greybus/operation.h (97%)
 rename {drivers/staging =3D> include/linux}/greybus/svc.h (96%)
 rename {drivers/staging/erofs/include =3D> include}/trace/events/erofs.h (=
94%)
 create mode 100644 tools/iio/.gitignore
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
