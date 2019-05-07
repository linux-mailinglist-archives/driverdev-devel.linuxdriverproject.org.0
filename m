Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA70169B6
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 19:59:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF85085F7C;
	Tue,  7 May 2019 17:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pAS0YSPs9k25; Tue,  7 May 2019 17:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A410861B2;
	Tue,  7 May 2019 17:59:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F40C1BF238
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39CE685B7C
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eETdLFKn1cN8 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 17:58:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3877A86D91
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:58:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21D0C2054F;
 Tue,  7 May 2019 17:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557251936;
 bh=+c8GNoqDGhXKNbDct1jseYWlc1UuM6gWVcSHJGdFhOw=;
 h=Date:From:To:Cc:Subject:From;
 b=OX2UaAK/KpBfX5x0r+odo9TYequRAQKczf18SuNhKB248QybbkNQbBN9+mg0A69xB
 BB5qbaNkJmakPsJbTUkDZpPpyJBWSvFSifxAfD2JZ3Nhj8KAYzSoaW9jQ/ynNwIZDG
 wF9kT6t+4RCYwzyQWSsC33wuaZEiDIzVE2TkDs4k=
Date: Tue, 7 May 2019 19:58:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver patches for 5.2-rc1
Message-ID: <20190507175853.GA11568@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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

The following changes since commit 085b7755808aa11f78ab9377257e1dad2e6fa4bb:

  Linux 5.1-rc6 (2019-04-21 10:45:57 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.2-rc1

for you to fetch changes up to e2a5be107f52cefb9010ccae6f569c3ddaa954cc:

  staging: kpc2000: kpc_spi: Fix build error for {read,write}q (2019-05-03 =
08:23:20 +0200)

----------------------------------------------------------------
Staging / IIO driver patches for 5.2-rc1

Here is the big staging and iio driver update for 5.2-rc1.

Lots of tiny fixes all over the staging and IIO driver trees here, along
with some new IIO drivers.

Also we ended up deleting two drivers, making this pull request remove a
few hundred thousand lines of code, always a nice thing to see.  Both of
the drivers removed have been replaced with "real" drivers in their
various subsystem directories, and they will be coming to you from those
locations during this merge window.

There are some core vt/selection changes in here, that was due to some
cleanups needed for the speakup fixes.  Those have all been acked by the
various subsystem maintainers (i.e. me), so those are ok.

We also added a few new drivers, for some odd hardware, giving new
developers plenty to work on with basic coding style cleanups to come in
the near future.

Other than that, nothing unusual here.

All of these have been in linux-next for a while with no reported
issues, other than an odd gcc warning for one of the new drivers that
should be fixed up soon.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Aaro Koskinen (2):
      staging: refer to TODO in Kconfig help text
      staging: octeon-ethernet: add TODO

Adham Abozaeid (3):
      staging: wilc1000: use cfg80211 ssid list instead of repacking it
      staging: wilc1000: assign scan result callback before starting the sc=
an
      staging: wilc1000: Avoid GFP_KERNEL allocation from atomic context

Alejandro Ismael Silva (1):
      staging: vc04_services: Use tabs instead of spaces

Alexandru Ardelean (5):
      iio: imu: adis16400: move trigger handler into adis16400_core
      iio: imu: adis: generalize burst mode support
      iio: imu: adis16400: move burst logic to ADIS lib
      iio: imu: adis16400: rename adis16400_core.c -> adi16400.c
      iio: imu: adis16400: move adis16400.h into adis16400.c

Anderson Reis (3):
      iio:potentiostat:lmp91000: reduce line width and remove blank line
      iio:potentiostat:lmp91000: invert if statement
      iio:potentiostat:lmp91000: change dev_err message

Andreas Klinger (10):
      dt-bindings: Add vendor prefix for MaxBotix
      dt-bindings: maxbotix,mb1232: Add MaxBotix i2c ultrasonic rangers
      mb1232.c: add distance iio sensor with i2c
      MAINTAINERS: add maintainer for maxbotix ultrasonic driver
      devantech-srf04.yaml: transform DT binding to YAML
      avia-hx711.yaml: transform DT binding to YAML
      bmp085.yaml: transform DT documentation of iio sensor into YAML
      srf04.c: add maxbotix ultrasonic sensors
      dt-bindings: iio: srf04: add Maxbotix ultrasonic iio proximity sensors
      Kconfig: change configuration of srf04 ultrasonic iio sensor

Andrey Smirnov (6):
      iio: imx7d_adc: Add local struct device pointer in imx7d_adc_probe()
      iio: imx7d_adc: Replace pr_err with dev_err
      iio: imx7d_adc: Use devm_platform_ioremap_resource()
      iio: imx7d_adc: Simplify imx7d_adc_probe() with imx7d_adc_resume()
      iio: imx7d_adc: Simplify imx7d_adc_remove() with imx7d_adc_suspend()
      iio: imx7d_adc: Use devm_iio_device_register()

Andy Shevchenko (3):
      iio: Allow to read mount matrix from ACPI
      iio: buffer: Switch to bitmap_zalloc()
      iio: Make possible to include driver.h first

Angus Ainslie (Purism) (5):
      iio: light: vcnl4000 use word writes instead of byte writes
      iio: light: vcnl4000 add devicetree hooks
      dt-bindings: iio: light: add vcnl4000 devicetree bindings
      iio: light: vcnl4000 add support for the VCNL4040 proximity and light=
 sensor
      dt-bindings: iio: light: add vcnl4040 devicetree bindings

Anirudh Rayabharam (1):
      staging: rtl8723bs: core: fix line over 80 characters warning

Antti Ker=E4nen (1):
      staging: mt7621-pci-phy: prevent use of uninitialized variable

Anushka Shukla (1):
      staging: rtl8192e: kconfig: use help over --help--

Arash Fotouhi (1):
      Staging: comedi: ni_mio_common.c: Added blank line after declarations

Armando Miraglia (1):
      staging: mediatek: addres minor style issues flagged by clang-format.

Bartlomiej Zolnierkiewicz (1):
      staging: remove redundant 'default n' from Kconfig

Beatriz Martins de Carvalho (1):
      staging: rtl8723bs: hal: replace spaces by tabs.

Beniamin Bia (2):
      iio: adc: ad7616: Add support for AD7616 ADC
      dt-bindings: iio: adc: Add AD7616 ADC documentation

Benjamin Gaignard (2):
      counter: Add STM32 Timer quadrature encoder
      dt-bindings: counter: Document stm32 quadrature encoder

Bhagyashri Dighole (8):
      staging: speakup: Comparison to NULL.
      staging: fbtft: Remove unused #defines.
      staging: fbtft: convert a macro to a function.
      staging: rtl8712: line over 80 characters.
      staging: fbtft: line over 80 characters
      staging: pi433: Remove unused variable.
      staging: rtlwifi: Replace 0 with false.
      staging: fbtft: ternary statement to if statement.

Bhanusree Pola (15):
      staging: rtl8192u: Remove typedef for struct _bandwidth_autoswitch
      staging: rtl8192u: Remove typedef for struct _IbssParms
      staging: rtl8192u: Remove typedef for struct _RT_POWER_SAVE_CONTROL
      staging: rtl8192u: Remove typedef for struct _RT_LINK_DETECT_T
      staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY
      staging: rtl8192u: Remove casts on the return values of list_entry
      staging: rtl8192u: Adjust 'if' to follow Kernel coding Style
      staging: mt7621-mmc: Fix ret.cooci warnings
      staging: mt7621-mmc: Modify the return type of the function msdc_do_c=
ommand
      Staging: rtl8192e: Remove parentheses around the right hand side of a=
ssignments
      Staging: media: Use !x in place of NULL comparision
      Staging: gdm724x: Remove unnecessary print statements
      staging: erofs: Use !x or x in place of NULL comparision
      Staging: media: imx: mipi-csi2: Remove unnecessary error messages
      Staging: rtl8723bs: Avoid typedefs for structure

Bharath Vedartham (2):
      staging: ralink-gdma: Change unsigned to unsigned int
      staging: ralink-gdma: Remove space after cast

Bjorn Andersson (1):
      iio: adc: qcom-spmi-adc5: Fix of-based module autoloading

Branden Bonaby (9):
      staging: vt6655: line over 80 characters
      staging: octeon: Lines should not end with a '('
      staging: mt7621-pci: IF statement expression comparing to NULL
      staging: wlan-ng: line over 80 character limit
      staging: wlan-ng: malformed SPDX-License-Identifier
      staging: wlan-ng: Correct typo in comment message
      staging: gdm724x: Rename dftEpsId to dft_eps_id
      staging: rtl8712: remove unnecessary parentheses
      staging: rtl8712: Remove comparison to true

Briana Oursler (1):
      Staging: vt6655: rxtx: Add spaces around '*'

B=E1rbara Fernandes (4):
      iio:adc:ad7923: Align broken line to parenthesis
      iio:adc:ad7923: Use BIT macro instead of bitshift
      iio:adc:ad7923: Put macro argument between ()'s
      iio:adc:ad7923: Rewrite comparison to NULL

Caio Salvador Rohwedder (1):
      staging: rtl8192u: ieee80211: add space around '=3D=3D' and before '('

Cesar Santos (1):
      staging: vt6655: upc: remove double blank lines

Chengguang Xu (1):
      iio: remove redundant unlikely annotation

Christian Gromm (13):
      staging: most: add new file configfs.c
      staging: most: change signature of function probe_channel
      staging: most: core: add configfs interface functions
      staging: most: sound: introduce new sound adapter management
      staging: most: enable configfs support
      staging: most: core: make sysfs attributes read-only
      staging: most: usb: remove prefix from description tag
      staging: most: core: remove attribute add_link
      staging: most: allow speculative configuration
      staging: most: configfs: make create attributes write-only
      staging: most: configfs: add code for link removal
      staging: most: Documentation: update driver documentation
      staging: most: sound: pass correct device when creating a sound card

Colin Ian King (10):
      staging: rtl8723bs: remove unused code
      staging: ks7010: remove redundant auth_type check
      iio: st_accel: remove redundant unsigned less than zero check
      iio: adc: ad7124 fix indentation issue, remove extra tab
      iio: temperature: max31856: fix uninitialized error return
      staging: comedi: adv_pci1710: fix spelling mistake: "droput" -> "drop=
out"
      staging: wilc1000: fix spelling mistake "dissconect" -> "disconnect"
      staging: rtl8723bs: hal: fix spelling mistake "singal" -> "signal"
      staging: rtlwifi: fix spelling mistake "notity" -> "notify"
      staging: rtl8723bs: fix spelling mistake: "nonprintabl" -> "non-print=
able"

Cristian Sicilia (4):
      staging: iio: adc: ad7280a: Avoid precedence issues in macro
      staging: iio: adc: ad7280a: Adding temp var to improve readability
      staging: iio: adc: ad7280a: Remove CamelCase notation
      staging: iio: adc: ad7280a: Tab alignment

Cristiano Borges Cardoso (1):
      staging: zoran: fix brace in the wrong line

Dan Carpenter (2):
      staging: kpc2000: Fix a stack information leak in kp2000_cdev_ioctl()
      staging: kpc2000: fix resource size calculation

Daniel Junho (1):
      staging: rtl8192e: remove a blank line

Daniela Mormocea (18):
      staging: emxx_udc: Fix equal sign alignment
      staging: emxx_udc: Fix open parenthesis at the end of the line
      staging: fbtft: Fix line over 80 characters
      staging: iio: Line over 80 characters
      staging: ralink-gdma: Avoid unnecessary line continuations in string
      staging: ralink-gdma: Replace from uint32_t to u32
      staging: ralink-gdma: Avoid unnecessary line continuations
      staging: vboxvideo: Fix open parenthesis at the end of line
      staging: vc04-services: bcm2835-audio: Fix alignment issues
      staging: vc04_services: bcm2835-camera: Fix multiple line dereference
      staging: speakup: Spaces around operator
      staging: speakup: Add spaces around operators
      staging: vc04_services: bcm2835-camera: Fix logical continuations war=
nings
      staging: rtl8712: Replace NULL comparisons
      staging: vt6655: Fix malformed SPDX-License-Identifier tag
      staging: media: davinci_vpfe: Fix comparison to NULL
      staging: media: davinci_vpfe: Fix multiple line dereference
      staging: media: davinci_vpfe: Fix alignment issues

Debleena Sen (2):
      staging: wilc1000: Fix line over 80 characters
      staging: vboxvideo: Do not return -ENOSYS

Dominik Adamski (1):
      staging: ralink-gdma: ralink-gdma.c fixed line width

Emanuel Bennici (11):
      staging: rtl8723bs: Remove Dead Code in `struct mlme_priv`
      staging: rtl8723bs: Remove Dead Include in include/drv_types.h
      staging: rtl8723bs: Remove Dead Code in collect_bss_info Function
      staging: rtl8723bs: Remove old unreachable Code
      staging: rtl8723bs: Remove unreachable Code in core/rtw_cmd.c
      staging: rtl8723bs: Remove Dead Code in os_dep/os_intfs.c
      staging: rtl8723bs: Remove Dead Code in os_dep/os_intfs.c
      staging: rtl8723bs: Remove Dead Code in os_dep/ioctl_linux.c
      staging: rtl8723bs: Remove Dead Functions in os_dep/ioctl_linux.c
      staging: rtl8723bs: Remove Dead Code in core/rtw_mlme.c
      staging: mt7621-pci-phy: Add Spaces to Macro Definition

Emiliano Ingrassia (1):
      staging: emxx_udc: remove unneeded parenthesis

Enric Balletbo i Serra (1):
      iio: cros_ec: Switch to SPDX identifier.

Enrico Weigelt, metux IT consult (1):
      drivers: iio: Kconfig: pedantic cleanup

Fabrice Gasnier (17):
      dt-bindings: iio: stm32-lptimer-counter: document pinctrl sleep state
      iio: counter: stm32-lptimer: Add power management support
      iio: adc: stm32-dfsdm: make spi_master_freq more accurate
      iio: adc: stm32-dfsdm: continuous mode depends on current mode
      iio: adc: stm32-dfsdm: move dma enable from start_conv() to start_dma=
()
      iio: adc: stm32-dfsdm: move dma slave config to start routine
      iio: adc: stm32-dfsdm: enable hw consumer
      iio: adc: stm32-dfsdm: add support for scan mode
      iio: adc: stm32-dfsdm: add support for buffer modes
      iio: adc: stm32-dfsdm: claim direct mode for raw read and settings
      iio: adc: stm32-dfsdm: improve sampling frequency accuracy
      iio: adc: stm32-dfsdm: add PM support
      iio: trigger: stm32-timer: fix build issue when disabled
      iio: adc: stm32-dfsdm: fix unmet direct dependencies detected
      iio: adc: stm32-dfsdm: fix triggered buffer build dependency
      counter: stm32-lptimer: add counter device
      dt-bindings: counter: Adjust dt-bindings for STM32 lptimer move

Fabrizio Castro (1):
      iio: adc: Fix MAX9611 spacing

Fuqian Huang (1):
      staging: vchiq_arm: Fix misuse of %x

Gabriel Siqueira (1):
      staging: rtl8192u: Add missing space

Gabriela Bittencourt (2):
      staging: rtl8192e: Remove a not necessary blank line before a close b=
race '}'
      Staging: hal: hal_com_phycfg: fixed a coding style issue

Ganesh Biradar (1):
      staging: vt6655: Modify comment style of SPDX License Identifier

Gao Xiang (3):
      staging: erofs: fix error handling when failed to read compresssed da=
ta
      staging: erofs: introduce erofs_page_is_managed()
      staging: erofs: support IO read error injection

George Hilliard (13):
      staging: mt7621-mmc: fix unused variable compiler warning
      staging: mt7621-mmc: Remove obsolete comments and variables
      staging: mt7621-mmc: Use pinctrl subsystem to select SDXC pin mode
      staging: mt7621-mmc: Bill the caller for I/O time
      staging: mt7621-mmc: Remove redundant host->mmc->f_max write
      staging: mt7621-mmc: Immediately notify mmc layer of card change dete=
ction
      staging: mt7621-mmc: Fix BRUST -> BURST typo
      staging: mt7621-mmc: Only unmap_sg if mapped
      staging: mt7621-spi: Remove references to nonexistent mt7621_spi_ops
      staging: mt7621-mmc: Fix warning when reloading module with debug msg=
s enabled
      staging: mt7621-mmc: Check for nonzero number of scatterlist entries
      staging: mt7621-mmc: Remove obsolete Kconfig flags
      staging: mt7621-mmc: Initialize completions a single time during probe

Greg Kroah-Hartman (25):
      Merge 5.1-rc3 into staging-next
      staging: add missing SPDX lines to Kconfig files
      staging: add missing SPDX lines to Makefile files
      staging: m57621-mmc: delete driver from the tree.
      staging: sm750fb: add proper SPDX identifier to driver
      staging: vc04_services: add proper SPDX identifier for dual licensed =
files
      staging: vc04_services: remove remaining redundant license text
      staging: comedi: quatec_daqp_cs: add proper SPDX identifier to driver
      staging: iio: add proper SPDX identifiers to remaining driver files
      staging: rtl8192u: add proper SPDX identifiers on files that did not =
have them.
      staging: ralink-gdma: add proper SPDX identifiers on ralink-gdma file
      staging: rtl8192e: add proper SPDX identifiers on files that did not =
have them.
      staging: rtl8192e: delete license file.
      staging: media: zoran: add proper SPDX identifiers on files that did =
not have them.
      staging: media: soc_camera: add proper SPDX identifiers on files that=
 did not have them.
      staging: media: imx: add proper SPDX identifiers on files that did no=
t have them.
      staging: media: tegra-vde: add proper SPDX identifiers on file that d=
id not have it.
      Merge tag 'iio-for-5.2a-2' of git://git.kernel.org/.../jic23/iio into=
 staging-next
      staging: kpc2000: add initial set of Daktronics drivers
      Merge 5.1-rc6 into staging-next
      Merge tag 'iio-for-5.2b' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      staging: rtlwifi: delete the staging driver
      staging: rtlwifi: strip down phydm .h files
      staging: rtlwifi: move remaining phydm .h files
      staging: kpc2000: fix up build problems with readq()

Gregory CLEMENT (6):
      iio: adc: lpc32xx: Sort headers
      iio: adc: lpc32xx: Cleanup headers
      iio: adc: lpc32xx: Add scale feature
      dt-bindings: iio: adc: lpc32xx-adc: Document vref-supply
      dt-bindings: iio: adc: Add bindings for TI ADS8344 A/DC chips
      iio: adc: Add driver for the TI ADS8344 A/DC chips

Guenter Roeck (1):
      iio: cros_ec: Drop unnecessary include files

Guilherme Tadashi Maeoka (2):
      staging: rtl8723bs: os_dep: Fix assignment in if condition
      staging: rtl8723bs: os_dep: Fix space in pointer definition

Gustavo A. R. Silva (5):
      iio: mma8452: mark expected switch fall-through
      iio: cros_ec_accel_legacy: Refactor code in cros_ec_accel_legacy_probe
      staging: ralink-gdma: Use struct_size() in kzalloc()
      staging: greybus: power_supply: use struct_size() helper
      staging: most: core: replace strcpy() by strscpy()

Gwendal Grignou (1):
      iio: cros_ec: Add kernel-doc for cros_ec_sensors_read_lpc

H. Nikolaus Schaller (10):
      iio: accel: bmc150: add mount matrix support
      iio: accel: bma180: add mount matrix support
      iio: gyro: bmg160: add mount matrix support
      iio: gyro: itg3200: add mount matrix support
      iio: magnetometer: bmc150: add mount matrix support
      iio: magnetometer: hmc5843: add mount matrix support
      iio: mpu6050: improve code readability
      iio: ak8975: improve code readability
      iio: gyro: bmg160: add device tree compatibility table
      dt-bindings: iio: add Bosch BMG160 gyroscope sensor

Hariprasad Kelam (1):
      staging: comedi: dt2811: Fix spelling mistake

Hildo Guillardi J=FAnior (1):
      Staging: rtl8192e: Fix spaces around "+"

Himadri Pandya (26):
      staging: rtl8712: rename bDriverStopped to driver_stopped
      staging: rtl8712: rename bSurpriseRemoved to surprise_removed
      staging: rtl8712: rename bSuspended to suspended
      staging: octeon-usb: remove unnecessary variable frame_number
      staging: rtlwifi: phydm: remove unnecessary parentheses
      staging: media: zoran: remove unnecessary parentheses
      staging: wilc1000: remove unnecessary local variables
      staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_rxdesc=
.c
      staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723bs_recv.c
      staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_hal_in=
it.c
      staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_dm.c
      staging: rtl8723bs: hal:Remove comparison to NULL in rtl8723bs_xmit.c
      staging: rtl8723bs: hal: Remove comparison to NULL in rtl8723b_cmd.c
      staging: rtl8723bs: hal: Remove comparison to NULL in hal_com_phycfg.c
      staging: rtl8723bs: hal: Remove comparison to NULL in hal_com.c
      staging: rtl8723bs: hal: Remove comparison to NULL in hal_btcoex.c
      staging: rtl8723bs: hal: Modify comparison to constant in hal_btcoex.c
      staging: rtl8723bs: hal: Modify comparison to constant in rtl8723bs_x=
mit.c
      staging: netlogic: Remove unnecessary error print
      staging: rtl8723bs: include: remove typedef for struct pno_nlo_info
      staging: rtl8723bs: include: remove typedef for struct pno_ssid
      staging: rtl8723bs: include: remove typedef for struct pno_ssid_list
      staging: rtl8723bs: include: remove typedef for struct pno_scan_chann=
el_info
      staging: rtl8723bs: include: remove typedef for struct pno_scan_info
      staging: rtl8712: remove unnecessary NULL check
      staging: wlan-ng: Fix improper SPDX comment style

Hugo Lange (1):
      staging: rtl8188eu: remove unnecessary braces from if/else

Ian Abbott (16):
      staging: comedi: ni_mio_common: Use insn->n in ni_calib_insn_write()
      staging: comedi: ni_mio_common: use insn->n in ni_calib_insn_read()
      staging: comedi: ni_mio_common: use insn->n in ni_eeprom_insn_read()
      staging: comedi: ni_mio_common: use insn->n in ni_m_series_eeprom_ins=
n_read()
      staging: comedi: ni_tio: Use data[insn->n-1] in ni_tio_insn_write()
      staging: comedi: dyna_pci10xx: Don't bother configuring len_chanlist
      staging: comedi: dyna_pci10xx: Set number of AO channels to 1
      staging: comedi: don't release mutex too early in comedi_auto_config()
      staging: comedi: Add lockdep_assert_held() calls for dev->mutex
      staging: comedi: Add lockdep_assert_held() calls for dev->attach_lock
      staging: comedi: usbduxsigma: Call mutex_destroy() on private mutex
      staging: comedi: usbduxfast: Call mutex_destroy() on private mutex
      staging: comedi: usbdux: Call mutex_destroy() on private mutex
      staging: comedi: ni_usb6501: Call mutex_destroy() on private mutex
      staging: comedi: dt9812: Call mutex_destroy() on private mutex
      staging: comedi: comedi_isadma: Use a non-NULL device for DMA API

Ignacio Losiggio (1):
      staging: gdm724x: Do not break expressions

Ivan Safonov (2):
      staging: netlogic: replace skb_put/pull pair with skb_reserve
      staging: r8188eu: refactor recvframe_defrag()

Jann Horn (1):
      staging: rtl8723bs: use kernel_read() instead of open-coded version

Jasminko Dedic (1):
      staging: vc04_services: add missing __user annotations

Jeremy Sowden (3):
      staging: fbtft: fixed format-string errors.
      staging: kpc2000_spi: eliminated duplicate initialization of drvdata =
local variable.
      staging: kpc2000_spi: eliminated duplicate initialization of master l=
ocal variable.

Jerry Lin (1):
      staging: olpc_dcon: Convert all uses of old GPIO API to new descripto=
r API

Johan Hovold (1):
      staging: greybus: power_supply: fix prop-descriptor request size

Jonathan Cameron (1):
      iio:dac:ad5064 mlock cleanup - move to a local lock.

Jules Irenge (10):
      staging: zoran: add SPDX GPL-2.0+ license identifier
      staging: zoran: remove license boilerplate text
      staging: rtl8192e: add SPDX GPL-2.0 license identifier
      staging: rtl8192e: remove boilerplate license text
      staging: speakup: fix line over 80 characters.
      staging: speakup: fix printk KERN_LEVEL facility level warning
      staging: pi433: remove empty space to fix line over 80 characters war=
ning
      staging: tegra-vde: Add SPDX GPL-2.0+ license identifier to fix check=
patch warning
      staging: tegra-vde: remove unnecessary boilerplate license identifier=
 text
      staging: sm750fb: lower case to fix camelcase checkpatch warning

Julian Merida (1):
      staging: erofs: fix parenthesis alignment

Julio Bianco (1):
      staging: erofs: add a new line after variable declaration

Julius Hemanth Pitti (1):
      staging: rtl8192u: ieee80211: ieee80211_wx: add space before open bra=
ce

Justin Chen (2):
      iio: adc: ti-ads7950: Fix improper use of mlock
      iio: adc: ti-ads7950: add GPIO support

Kangjie Lu (3):
      staging: greybus: audio_manager: fix a missing check of ida_simple_get
      iio: adc: fix a potential NULL pointer dereference
      iio: hmc5843: fix potential NULL pointer dereferences

Kelsey Skunberg (1):
      Staging: sm750fb: Change *array into *const array

Lars-Peter Clausen (2):
      iio: frequency: ad9523: Fix typo in ad9523_platform_data
      iio: ad_sigma_delta: Properly handle SPI bus locking vs CS assertion

Laura Lazzati (1):
      staging: octeon-usb octeon-hcd: Fix several typos.

Linus Walleij (1):
      iio: pressure: bmp280: BMP280 calibration to entropy

Lorenzo Bianconi (7):
      iio: imu: st_lsm6dsx: add support to ASM330LHH
      dt-bindings: iio: imu: st_lsm6dsx: add asm330lhh device bindings
      iio: imu: st_lsm6dsx: add support to LSM6DSOX
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6dsox device bindings
      iio: imu: st_lsm6dsx: add support to LSM6DSR
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6dsr device bindings
      iio: imu: st_lsm6dsx: inline per-sensor data

Lucas Oshiro (1):
      iio:potentiostat:lmp91000: remove unnecessary parentheses

Madhumitha Prabakaran (41):
      staging: vt6655: channel.h: Fix comment style of SPDX License Identif=
ier
      staging: vt6655: desc.h: Fix comment style of SPDX-License Identifier
      staging: vt6655: Fix spelling mistake
      staging: vt6655: Fix space around binary operator
      staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
      staging: vt6655: key.h: Fix comment style for SPDX-License Identifier
      staging: vt6655: Remove unnecessary blank line
      staging: vt6655: mac.h: Fix comment style for SPDX-License Identifier
      staging: vt6655: Fix the warning line over 80 characters
      staging: vt6655: Align function declaration
      staging: fwserial: Convert macro into an inline function
      staging: vt6655: Remove an unused function prototype
      staging: vt6655: Remove unused function prototype and definition
      staging: sm750fb: Remove an unnecessary local variable in a function
      staging: rtl8723bs: Remove wrapper functions and change function names
      staging: rtl8723bs: Change type of variables and return type
      Staging: rtl8723bs: Remove unnecessary local variable in function
      Staging: rtl8723bs: Change values to standard error codes in functions
      Staging: rtl8723bs: Replace NULL comparison with !
      Staging: rtl8723bs: Add missing NULL check for kmalloc
      Staging: rtl8723bs: Change return type and type of local variable
      Staging: media: davinci_vpfe: Fix preferred form of passing a size
      Staging: media: davinci_vpfe: Drop macros
      Staging: rtl8188eu: Get rid of custom macro, DBG_88E in kmalloc
      Staging: rtl8192u: Use BIT macro
      Staging: rtl8192u: ieee80211: Remove custom macro IEEE80211_DEBUG
      Staging: media: davinci_vpfe: Convert macro 'IPIPE_S12Q8' into inline
      Staging: rtl8723bs: core: Remove typecast in kfree
      Staging: rtl8723bs: Remove typedef in struct dynamic_primary_CCA
      Staging: media: davinci_vpfe: Drop macro and use an in-kernel function
      Staging: gasket: Use DIV_ROUND_UP
      Staging: rtl8723bs: Remove typedef in struct sdio_data
      Staging: rtlwifi: Remove & on function name
      Staging: rtlwifi: Cleanup crc16_ccitt()
      Staging: vc04_services: bcm2835-camera: Remove an exceptional &
      Staging: rtl8723bs: Remove typedef in struct ieee_param_ex
      Staging: rtl8723bs: Remove typedef in struct ieee_param
      Staging: rtl8723bs: Remove an unused struct tx_pending_t
      Staging: rtl8723bs: core: Replace return types
      Staging: rtlwifi: Replace return type
      Staging: vc04_services: Cleanup in ctrl_set_bitrate()

Marcelo Schmitt (8):
      staging: iio: ad5933: change multi-line comment style
      staging: iio: ad5933: organize includes
      staging: iio: ad5933: add SPDX identifier
      staging: iio: ad5933: change help rule message
      staging: iio: ad5933: add ABI documentation
      staging: iio: ad5933: change attributes to match ABI
      staging: iio: ad9832: organize includes
      staging: iio: ad9832: use clock framework for clock reference

Mario Balan (1):
      staging: vchiq_arm: remove space after open '('

Mathieu Othacehe (1):
      iio: trigger: Print an error if there is no available irq

Matt Sickler (1):
      staging: kpc2000: Add DMA driver

Melissa Wen (1):
      staging: iio: frequency: ad9834: Remove unnecessary parentheses

Michael Straube (11):
      staging: rtl8188eu: remove unused defines from wifi.h
      staging: rtl8188eu: remove unused WFD defines
      staging: rtl8188eu: remove unnecessary parentheses
      staging: rtl8188eu: cleanup long line in odm.c
      staging: rtl8188eu: remove unnecessary declaration
      staging: rtl8188eu: make sta2sta_data_frame() static
      staging: rtl8188eu: cleanup indenting issue in odm.c
      staging: rtl8188eu: add spaces around operators in rtw_ap.c
      staging: rtl8188eu: replace subtraction with result
      staging: rtl8188eu: add spaces around '-' in rtw_cmd.c
      staging: rtl8188eu: remove unnecessary parentheses

Mircea Caprioru (6):
      staging: iio: adc: ad7192: Fix identation
      staging: iio: adc: ad7192: Use DT clock binding
      staging: iio: adc: ad7192: Report error directly in ad7192_setup
      staging: iio: adc: ad7192: Convert platform data to DT properties
      staging: iio: adc: ad7192: Use read_avail for available attributes
      iio: dac: ad5758: Modifications for new revision

Mohan Kumar (2):
      drivers/iio/gyro/mpu3050-core.c: This patch fix the following checkpa=
tch warning.
      iio:accel:Switch hardcoded function name with a reference to __func__=
 making the code more maintainable

Moses Christopher (2):
      staging: axis-fifo: Add elaborate description in Kconfig
      staging: comedi: use help instead of ---help--- in Kconfig

Nathan Chancellor (4):
      iio: common: ssp_sensors: Initialize calculated_time in ssp_common_pr=
ocess_data
      iio: adc: stmpe-adc: Shuffle an if statement around in stmpe_adc_isr
      staging: kpc2000: Use memset to initialize resources
      staging: kpc2000: kpc_spi: Fix build error for {read,write}q

Neil Armstrong (2):
      dt-bindings: iio: adc: document the Meson G12A support
      iio: adc: meson-saradc: add support for Meson G12A

NeilBrown (2):
      staging: remove mt7621-eth
      staging: mt7621-dts: update ethernet settings.

Nicholas Mc Guire (4):
      staging: wilc1000: drop explicit conversion to bool
      staging: wilc1000: give usleep_range a range
      staging: vc04_services: handle kzalloc failure
      staging: fieldbus: anybus-s: fix wait_for_completion_timeout return h=
andling

Nishka Dasgupta (25):
      staging: greybus: Change NULL comparison to Boolean Negation
      staging: sm750fb: Edit CamelCase in local variables
      staging: greybus: Remove parentheses around variable
      staging: gasket: Remove return variable
      staging: fsl-dpaa2: ethsw: Remove return variable
      staging: rtl8723bs: core: Change NULL comparison to Boolean negation
      staging: wilc1000: Remove return variable from host_interface.c
      staging: wilc1000: Remove return variables from wilc_spi.c
      staging: rtl8723bs: core: Change NULL comparisons to Boolean negation
      staging: rtl8723bs: core: Remove return variables in rtw_mlme_ext.c
      staging; rtl8723bs: Remove unnecessary function rtw_init_mlme_priv()
      staging: rtl8723bs: core: Change datatype from sint to int
      staging: rtl8723bs: core: Remove parentheses
      staging: rtl8723bs: Remove function rtw_alloc_network()
      staging: rtlwifi: phydm: phydm_hwconfig.c: Remove parentheses
      staging: rtlwifi: phydm: phydm_adc_sampling.c Remove brackets
      staging: rtlwifi: phydm: Remove parentheses
      staging: rtlwifi: phydm: Move operator to left hand side
      staging: rtlwifi: phydm: Move function arguments to previous line
      staging: mt7621-spi: Remove parentheses
      staging: rtlwifi: rtl8822be: Remove functions
      staging: media: zoran: Remove print statement
      staging: media: zoran: Remove print statement for failed kmalloc
      staging: mt7621-dma: Remove print statement on devm_kzalloc error
      staging: ralink-gdma: Remove print statement on failure of devm_kzall=
oc

Ojaswin Mujoo (1):
      staging: vt6656: Fix styling of the comment related to SPDX-License-I=
dentifier

Okash Khawaja (2):
      vt: selection: allow functions to be called from inside kernel
      staging: speakup: refactor to use existing code in vt

Pan Bian (1):
      iio: dummy_evgen: fix possible memleak in evgen init

Paresh Chaudhary (2):
      iio:temperature:max31856:Add device tree bind info
      iio:temperature: Add MAX31856 thermocouple support

Patrick Havelange (8):
      dt-bindings: iio/temperature: Add thermocouple types (and doc)
      include/fsl: add common FlexTimer #defines in a separate header.
      drivers/pwm: pwm-fsl-ftm: use common header for FlexTimer #defines
      drivers/clocksource: timer-fsl-ftm: use common header for FlexTimer #=
defines
      dt-bindings: counter: ftm-quaddec
      counter: add FlexTimer Module Quadrature decoder counter driver
      counter: ftm-quaddec: Documentation: Add specific counter sysfs docum=
entation
      LS1021A: dtsi: add ftm quad decoder entries

Payal Kshirsagar (43):
      staging: greybus: remove extern prototypes
      staging: emxx_udc: lines should not end with parenthesis
      staging: vt6655: correction in spelling
      staging: vt6655: lines should not end with a parenthesis
      staging: rtl8712: remove blank line
      staging: rtl8712: alignment should match open parenthesis
      staging: rtl8712: rtl8712_efuse.h: remove blank line
      staging: rtl8712: rtl8712_efuse.h: alignment should match open parent=
hesis
      staging: rtl8712: rtl8712_led.c: remove unnecessary parentheses
      staging: rtl8712: rtl8712_led.c: alignment should match open parenthe=
sis
      staging: rtl8712: rtl8712_led.c: remove blank line
      staging: rts5208: correction in spelling
      staging: rtl8723bs: Remove unnecessary parentheses
      staging: rtlwifi: Remove unnecessary parentheses
      staging: rtl8723bs: hal: sdio_ops.c: Remove unnecessary parentheses
      staging: rtl8723bs: hal: rtl8723b_phycfg.c: Remove unnecessary parent=
heses
      staging: rtl8723bs: hal: hal_com.c: Remove unnecessary parentheses
      staging: rtl8723bs: hal: odm_HWConfig.c: Remove unnecessary parenthes=
es
      staging: rtl8723bs: core: rtw_mlme.c: Remove unnecessary parentheses
      staging: rtl8723bs: core: rtw_ieee80211.c: Remove unnecessary parenth=
eses
      staging: rtl8723bs: os_dep: ioctl_linux.c: Remove unnecessary parenth=
eses
      staging: rtl8723bs: Compress two lines into one line
      staging: rtl8723bs: core: rtw_efuse.c: Compress two lines into one li=
ne
      staging: rtlwifi: phydm: phydm.c: Compress two lines into one line
      staging: rtlwifi: phydm: phydm_rainfo.c: Compress two lines into one =
line
      staging: rtlwifi: btcoexist: Compress two lines into one line
      staging: rtlwifi: halmac: halmac_88xx: Compress two lines into one li=
ne
      staging: rtlwifi: halmac: Compress two lines into one line
      staging: rtlwifi: halmac: halmac_api.c: Compress two lines into one l=
ine
      staging: rtlwifi: use !x in place of NULL comparison
      staging: comedi: use !x in place of NULL comparison
      staging: rtl8712: rtl871x_mp.c: Compress two lines into one line
      staging: rtl8192u: ieee80211: ieee80211_rx.c: Replace bit shifting wi=
th BIT macro
      staging: rtl8192u: ieee80211: ieee80211_crypt_ccmp.c: Replace bit shi=
fting with BIT macro
      staging: rtl8192u: ieee80211: ieee80211_crypt_tkip.c: Replace bit shi=
fting with BIT macro
      staging: rtl8723bs: core: Replace bit shifting with BIT macro
      staging: rtlwifi: base.c: Replace bit shifting with BIT macro
      staging: fbtft: fb_agm1264k-fl.c: Replace bit shifting with BIT macro
      staging: fbtft: fb_ssd1351.c: Replace bit shifting with BIT macro
      staging: emxx_udc: emxx_udc.c: Replace bit shifting with BIT macro
      staging: rtl8712: rtl871x_mlme.c: use !x in place of NULL comparison
      staging: iio: impedance-analyzer: ad5933.c: Replace bit shifting with=
 BIT macro
      staging: iio: adc: ad7816.c: Replace bit shifting with BIT macro

Puranjay Mohan (3):
      Staging: rtl8192u: ieee80211: Fix indentation errors by removing extr=
a spaces
      Staging: rtl8192u: ieee80211: Fix if-else indentation warning
      Staging: rtl8192e: Remove extra space before break statement

Renato Lui Geh (11):
      staging: iio: ad7780: add gain & filter gpio support
      staging: iio: ad7780: add missing switch default case
      staging: iio: ad7780: add gain reading to ad778x
      staging: iio: ad7780: add filter reading to ad778x
      staging: iio: ad7780: set pattern values and masks directly
      staging:iio:ad7780: add chip ID values and mask
      staging: iio: ad7780: move regulator to after GPIO init
      staging: iio: ad7780: add SPDX identifier
      staging: iio: ad7780: add new copyright holder
      staging: iio: ad7780: moving ad7780 out of staging
      staging: iio: ad7780: add device tree binding

Robert Eshleman (1):
      staging: rtl8188eu: cleanup spacing style

Robert Jones (2):
      dt-bindings: iio: accel: add LIS2DE12 sensor device binding
      iio: accel: add support to LIS2DE12

Robert Yang (3):
      dt-bindings: Add vendor prefix for Kionix, Inc.
      dt-bindings: iio: accel: kxcjk1013: Add device tree binding documenta=
tion
      iio: accel: kxcjk1013: Add device tree support

Rui Miguel Silva (5):
      iio: gyro: add DT bindings to fxas21002c
      iio: gyro: add core driver for fxas21002c
      iio: gyro: fxas21002c: add i2c driver
      iio: gyro: fxas21002c: add spi driver
      MAINTAINERS: add entry for fxas21002c gyro driver

Sammy Abed (1):
      staging: rtl8723bs: include: Fix indentation and spacing issues

Sanjana Sanikommu (34):
      staging: vt6655: rxtx.c: Remove unnecessary space after a cast
      staging: rtl8188eu: core: rtw_ap.c: Fix multiple blank lines
      staging: gasket: gasket_interuppt.c: Fix string split issue.
      staging: rtl8188eu: core: rtw_recv.c: fix a space issue
      staging: rtl8188eu: core: rtw_recv.c: fix a paranthesis issue around =
pframe -> list in rtw_recv.c
      staging: rtl8188eu: core: rtw_recv.c: Fix a tab indent issue
      Staging: rtl8188eu: core: rtw_pwrctrl.c: Fix a comparision warning.
      Staging: gasket: gasket_sysfs.c: Fix string split issue.
      Staging: rtl8188eu: core: rtw_mlme.c: Replace NULL comparision.
      Staging: rtl8188eu: rtw_ieee80211: Fix indent for 'if' statement.
      Staging: rtl8192u: r8180_93cx6.c: Fix space around '<<'.
      staging: rtl8192u: r8192U_dm: Fix alignment issue.
      staging: rtl8192u: r8192U_dm: Fix space issue around operators.
      staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.
      staging: rtl8192u: ieee80211: ieee80211_rx.c: Fix NULL comparisions.
      staging: rtl8192u: ieee80211: ieee80211_tx.c: Adjust space around els=
e.
      staging: rtl8192u: ieee80211: ieee80211_rx.c: Remove unnecessary brac=
es.
      staging: rtl8192u: r8192U_dm: Remove unnecessary comments.
      staging: rtl8188eu: core: rtw_recv.c: Modify return type suggested by=
 Coccinelle.
      staging: greybus: sdio.c: Remove unncessary paranthesis.
      staging: rtl8188eu: core: rtw_mlme: Remove return variables.
      staging: sm750fb: Prefer using the BIT macro
      staging: rtl8192u: Remove typedef for struct.
      staging: media: ipu3: Avoid unnecessary blank line.
      staging: rtl8192e: Remove unnecessary parentheses.
      staging: gasket: apex: Prefer using the BIT macro
      staging: rtlwifi: Remove return variable.
      staging: greybus: hid: Remove print following unsuccessful kmalloc
      staging: media: imx: Replace list_entry with list_for_each_entry_safe
      staging: media: zoran: Modify return statement.
      staging: sm750fb: Remove unnecessary parenthesis.
      staging: comedi: Prefer using BIT macro in various files.
      staging: rtl8188eu: Modify return statement.
      staging: vc04_services: Remove unnecessary casts.

Sean Nyekjaer (3):
      mailmap: Update email for Sean Nyekjaer
      iio: adc: ti-ads8688: Update the module author email address
      iio: dac: ti-dac5571: Update the module author email address

Sergey Senozhatsky (1):
      staging: rtl8723bs: do not use __constant_cpu_to_le16

Sergio Paracuellos (7):
      staging: mt7621-dts: simplify pcie phy bindings
      staging: mt7621-pci-phy: update bindings documentation
      staging: mt7621-pci-phy: change driver to don't use child nodes
      staging: mt7621-pci-phy: use 'platform_get_resource'
      staging: mt7621-pci-phy: remove some unnecessary local variables
      staging: mt7621-pci-phy: add quirks for 'E2' revision using 'soc_devi=
ce_attribute'
      staging: mt7621-pci-phy: convert driver to use kernel regmap API's

Sidong Yang (5):
      staging: rtl8192u: Add required spaces before open parenthesis
      staging: pi433: remove unnecessary calling rf69_set_mode()
      staging: pi433: Fix rf69_set_tx_cfg() logic
      staging: pi433: Return thread immediately when kthread_should_stop() =
call.
      staging: pi433: add dependency to PA0, 1, 2 setting for output power =
level

Stefan Popa (11):
      iio: imu: adis16480: Add support for configurable drdy indicator
      iio: imu: adis16480: Add OF device ID table
      iio: imu: adis16480: Treat temperature scale in a generic way
      iio: imu: adis16480: Calculate the sampling frequency in a generic way
      iio: imu: adis16480: Deal with filter freq in a generic way
      iio: imu: adis16480: Add support for ADIS1649x family of devices
      iio: imu: adis16480: Add docs for ADIS16480 IMU
      iio: imu: adis16480: Add support for external clock
      dt-bindings: iio: imu: adis16480: Document external clock
      MAINTAINERS: Fix the link to ad7606 dt-bindings
      iio: adc: ad7606: Move oversampling options in chip info and rework *=
_avail attributes

Suresh Udipi (1):
      staging: most: cdev: fix chrdev_region leak in mod_exit

Sven Van Asbroeck (10):
      iio: proximity: as3935: fix use-after-free on device remove
      staging: add Fieldbus Device subsystem.
      staging: fieldbus: anybus-s: support HMS Anybus-S bus
      staging: fieldbus: anybus-s: support the Arcx anybus controller
      dt-bindings: anybus-controller: document devicetree binding
      dt-bindings: Add vendor prefix for arcx / Archronix
      staging: fieldbus: support HMS Profinet IRT industrial controller
      staging: fieldbus: add TODO
      staging: fieldbus: anybus-s: keep device bus id in bus endianness
      staging: fieldbus: anybus-s: rename bus id field to avoid confusion

Tetsuo Handa (1):
      staging: wilc1000: Avoid GFP_KERNEL allocation from atomic context.

Tomasz Duszynski (3):
      iio: chemical: pms7003: extend supported sensors list
      dt-bindings: iio: chemical: pms7003: extend supported sensors list
      iio: chemical: sps30: fix attribute kernel version

Valdis Kletnieks (1):
      staging: rtl8712 - fix up non-kerneldoc comments

Valentin Manea (1):
      iio: accel: kxcjk1013: Add KIOX0008 ACPI Hardware-ID

Vandana BN (2):
      staging: rtl8723bs: Fix checkpatch.pl warnings
      staging: rtl8192u: ieee80211: Resolve ERROR reported by checkpatch

Vatsala Narang (24):
      staging: sm750fb: Eliminate camel case
      staging: erofs: Replace NULL comparisons
      staging: rtl8188eu: core: Remove unnecessary parentheses
      staging: rtl8188eu: core: Add spaces around operators
      staging: vt6655: Add spaces around operator
      staging: rtl8723bs: include: Fix spelling mistake
      staging: rtl8723bs: include: Fix a space issue
      staging: rtl8723bs: include: Fix identation issue
      staging: vt6655: lines should not end with a parentheses
      staging: media: zoran: Use unsigned int instead of unsigned
      staging: rtl8192u: ieee80211: Use !x in place of NULL comparison
      staging: media: zoran: Fix block comment style
      staging: rtl8712: Fix a space issue
      staging: rtl8723bs: core: Fix a comparison warning.
      staging: rtl8723bs: core: Remove unnecessary parentheses
      staging: rtl8723bs: core: Remove return in void function
      staging: rtl8723bs: core: Remove else after return statement.
      staging: rtl8723bs: core: Remove blank line.
      staging: vc04_services: bcm2835-camera: Modify return statement.
      staging: rtl8192u: ieee80211: Replace bit shifting with BIT macro
      staging: rtl8192u: ieee80211: Fix spelling mistake
      staging: rtl8723bs: core: Prefer using the BIT Macro.
      staging: rtl8723bs: core: Use !x in place of NULL comparison.
      staging: vc04_services: bcm2835-camera: Compress two lines into one l=
ine

Vincent Stehl=E9 (1):
      staging: android: vsoc: fix copy_from_user overrun

Vladimir Petrigo (1):
      iio: adc: ad7780: Add parentheses to macros

Wei Yongjun (1):
      iio: adc: ingenic: remove redundant dev_err call in ingenic_adc_probe=
()

Wentao Cai (14):
      staging: r8712u: Replace '--help--' with 'help'
      staging: most: usb: Change '--help--' to 'help' in Kconfig
      staging: most: dim2: errors.h: Correct SPDX-License-Identifier
      staging: most: dim2: hal.h: Correct SPDX-License-Identifier
      staging: most: dim2: sysfs.h: Correct SPDX-License-Identifier
      staging: most: dim2: reg.h: Correct SPDX-License-Identifier
      staging: netlogic: Remove unnecessary 'out of memory' message
      staging: most: Replace '--help--' in Kconfig file
      staging: gasket: Replace macro __ATTR with __ATTR_NULL
      staging: mt7621-mmc: delele extra blank lines
      Staging: unisys: visornic: Replace '--help--' with 'help' in Kconfig
      Staging: unisys: visorinput: Replace '--help--' with 'help' in Kconfig
      Staging: unisys: visorhba: Replace '--help--' with 'help' in Kconfig
      Staging: unisys: Correct malformed SPDX-License-Identifier

William Breathitt Gray (7):
      counter: Introduce the Generic Counter interface
      counter: Documentation: Add Generic Counter sysfs documentation
      docs: Add Generic Counter interface documentation
      iio: 104-quad-8: Update license boilerplate
      counter: 104-quad-8: Add Generic Counter interface support
      counter: 104-quad-8: Documentation: Add Generic Counter sysfs documen=
tation
      iio: counter: Add deprecation markings for IIO Counter attributes

William Tustumi (1):
      staging: rtl8723bs: add space after enum declaration

Yifeng Li (1):
      staging: sm750fb: trivial comment indention fix.

YueHaibing (9):
      iio: imu: st_lsm6dsx: remove set but not used variables 'acc_sensor' =
and 'gyro_sensor'
      iio: adc: ti-ads7950: Fix build error without CONFIG_GPIOLIB
      staging: comedi: dyna_pci10xx: remove set but not used variables 'cha=
n' and range'
      staging: rtlwifi: rtl8822be: Remove set but not used variable 'curtxb=
w_40mhz'
      staging: rtl8192e: Remove set but not used variable 'VenderID'
      staging: rtlwifi: base: Remove set but not used variables
      staging: most: configfs: Make mdev_link_list static
      staging: kpc2000: remove duplicated include from kp2000_module.c
      staging: kpc2000: fix platform_no_drv_owner.cocci warnings

 .mailmap                                           |     1 +
 Documentation/ABI/testing/sysfs-bus-counter        |   230 +
 .../ABI/testing/sysfs-bus-counter-104-quad-8       |    36 +
 .../ABI/testing/sysfs-bus-counter-ftm-quaddec      |    16 +
 Documentation/ABI/testing/sysfs-bus-iio            |     8 +
 .../ABI/testing/sysfs-bus-iio-counter-104-quad-8   |    16 +
 .../sysfs-bus-iio-impedance-analyzer-ad5933        |    19 +-
 Documentation/ABI/testing/sysfs-bus-iio-sps30      |     2 +-
 .../ABI/testing/sysfs-bus-iio-temperature-max31856 |    24 +
 .../devicetree/bindings/counter/ftm-quaddec.txt    |    18 +
 .../{iio =3D> }/counter/stm32-lptimer-cnt.txt        |     8 +-
 .../bindings/counter/stm32-timer-cnt.txt           |    31 +
 .../bindings/fieldbus/arcx,anybus-controller.txt   |    71 +
 .../bindings/iio/accel/kionix,kxcjk1013.txt        |    17 +
 .../devicetree/bindings/iio/adc/adi,ad7606.txt     |     1 +
 .../devicetree/bindings/iio/adc/adi,ad7780.txt     |    48 +
 .../bindings/iio/adc/amlogic,meson-saradc.txt      |     1 +
 .../devicetree/bindings/iio/adc/avia-hx711.txt     |    24 -
 .../devicetree/bindings/iio/adc/avia-hx711.yaml    |    66 +
 .../devicetree/bindings/iio/adc/lpc32xx-adc.txt    |     5 +
 .../devicetree/bindings/iio/adc/ti-ads8344.txt     |    19 +
 .../bindings/iio/chemical/plantower,pms7003.txt    |     8 +-
 .../devicetree/bindings/iio/gyroscope/bmg160.txt   |    20 +
 .../bindings/iio/gyroscope/nxp,fxas21002c.txt      |    31 +
 .../devicetree/bindings/iio/imu/adi,adis16480.txt  |    85 +
 .../devicetree/bindings/iio/imu/st_lsm6dsx.txt     |     3 +
 .../devicetree/bindings/iio/light/vcnl4000.txt     |    24 +
 .../devicetree/bindings/iio/pressure/bmp085.txt    |    27 -
 .../devicetree/bindings/iio/pressure/bmp085.yaml   |    70 +
 .../bindings/iio/proximity/devantech-srf04.txt     |    28 -
 .../bindings/iio/proximity/devantech-srf04.yaml    |    66 +
 .../bindings/iio/proximity/maxbotix,mb1232.txt     |    29 +
 .../devicetree/bindings/iio/st-sensors.txt         |     1 +
 .../bindings/iio/temperature/max31856.txt          |    24 +
 .../iio/temperature/temperature-bindings.txt       |     7 +
 .../devicetree/bindings/mfd/stm32-lptimer.txt      |     2 +-
 .../devicetree/bindings/mfd/stm32-timers.txt       |     7 +
 .../devicetree/bindings/vendor-prefixes.txt        |     3 +
 Documentation/driver-api/generic-counter.rst       |   342 +
 Documentation/driver-api/index.rst                 |     1 +
 MAINTAINERS                                        |    35 +-
 arch/arm/boot/dts/ls1021a.dtsi                     |    28 +
 drivers/Kconfig                                    |     2 +
 drivers/Makefile                                   |     1 +
 drivers/clocksource/timer-fsl-ftm.c                |    15 +-
 drivers/counter/104-quad-8.c                       |  1367 ++
 drivers/counter/Kconfig                            |    60 +
 drivers/counter/Makefile                           |    10 +
 drivers/counter/counter.c                          |  1567 +++
 drivers/counter/ftm-quaddec.c                      |   356 +
 drivers/counter/stm32-lptimer-cnt.c                |   754 ++
 drivers/counter/stm32-timer-cnt.c                  |   390 +
 drivers/iio/Kconfig                                |    25 +-
 drivers/iio/Makefile                               |     1 -
 drivers/iio/accel/Kconfig                          |    50 +-
 drivers/iio/accel/bma180.c                         |    18 +-
 drivers/iio/accel/bmc150-accel-core.c              |    23 +-
 drivers/iio/accel/cros_ec_accel_legacy.c           |    40 +-
 drivers/iio/accel/kxcjk-1013.c                     |    13 +-
 drivers/iio/accel/kxsd9.c                          |     4 +-
 drivers/iio/accel/mma8452.c                        |     2 +-
 drivers/iio/accel/st_accel.h                       |     2 +
 drivers/iio/accel/st_accel_core.c                  |    78 +-
 drivers/iio/accel/st_accel_i2c.c                   |     5 +
 drivers/iio/adc/Kconfig                            |    48 +-
 drivers/iio/adc/Makefile                           |     2 +
 drivers/iio/adc/ad7124.c                           |     2 +-
 drivers/iio/adc/ad7606.c                           |   120 +-
 drivers/iio/adc/ad7606.h                           |    25 +-
 drivers/iio/adc/ad7606_spi.c                       |     2 +
 drivers/{staging =3D> }/iio/adc/ad7780.c             |   179 +-
 drivers/iio/adc/ad7923.c                           |    24 +-
 drivers/iio/adc/ad_sigma_delta.c                   |    16 +-
 drivers/iio/adc/imx7d_adc.c                        |   175 +-
 drivers/iio/adc/ingenic-adc.c                      |     4 +-
 drivers/iio/adc/lpc32xx_adc.c                      |    60 +-
 drivers/iio/adc/meson_saradc.c                     |     8 +
 drivers/iio/adc/mxs-lradc-adc.c                    |     2 +
 drivers/iio/adc/qcom-spmi-adc5.c                   |     1 +
 drivers/iio/adc/stm32-dfsdm-adc.c                  |   628 +-
 drivers/iio/adc/stm32-dfsdm-core.c                 |   180 +-
 drivers/iio/adc/stmpe-adc.c                        |     5 +-
 drivers/iio/adc/ti-ads7950.c                       |   219 +-
 drivers/iio/adc/ti-ads8344.c                       |   204 +
 drivers/iio/adc/ti-ads8688.c                       |     2 +-
 drivers/iio/buffer/industrialio-buffer-cb.c        |    10 +-
 drivers/iio/chemical/Kconfig                       |    12 +-
 drivers/iio/chemical/pms7003.c                     |     5 +
 .../iio/common/cros_ec_sensors/cros_ec_sensors.c   |    12 +-
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  |    22 +-
 drivers/iio/common/ms_sensors/Kconfig              |     2 +-
 drivers/iio/common/ssp_sensors/ssp_iio.c           |     2 +-
 drivers/iio/counter/104-quad-8.c                   |   631 -
 drivers/iio/counter/Kconfig                        |    34 -
 drivers/iio/counter/Makefile                       |     8 -
 drivers/iio/counter/stm32-lptimer-cnt.c            |   382 -
 drivers/iio/dac/ad5064.c                           |    15 +-
 drivers/iio/dac/ad5758.c                           |    55 +-
 drivers/iio/dac/ti-dac5571.c                       |     2 +-
 drivers/iio/dummy/iio_dummy_evgen.c                |     5 +-
 drivers/iio/frequency/ad9523.c                     |    16 +-
 drivers/iio/gyro/Kconfig                           |    22 +
 drivers/iio/gyro/Makefile                          |     3 +
 drivers/iio/gyro/bmg160_core.c                     |    21 +
 drivers/iio/gyro/bmg160_i2c.c                      |     9 +
 drivers/iio/gyro/fxas21002c.h                      |   150 +
 drivers/iio/gyro/fxas21002c_core.c                 |  1004 ++
 drivers/iio/gyro/fxas21002c_i2c.c                  |    69 +
 drivers/iio/gyro/fxas21002c_spi.c                  |    70 +
 drivers/iio/gyro/itg3200_core.c                    |    20 +
 drivers/iio/gyro/mpu3050-core.c                    |     5 +-
 drivers/iio/humidity/Kconfig                       |    20 +-
 drivers/iio/imu/Makefile                           |     2 -
 drivers/iio/imu/{adis16400_core.c =3D> adis16400.c}  |   232 +-
 drivers/iio/imu/adis16400.h                        |   215 -
 drivers/iio/imu/adis16400_buffer.c                 |   101 -
 drivers/iio/imu/adis16480.c                        |   435 +-
 drivers/iio/imu/adis_buffer.c                      |    40 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |    10 +-
 drivers/iio/imu/st_lsm6dsx/Kconfig                 |     2 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |     6 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |    12 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |   157 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c        |    15 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c        |    15 +
 drivers/iio/industrialio-buffer.c                  |    20 +-
 drivers/iio/industrialio-core.c                    |    46 +-
 drivers/iio/industrialio-trigger.c                 |     5 +-
 drivers/iio/light/Kconfig                          |   274 +-
 drivers/iio/light/cros_ec_light_prox.c             |    12 +-
 drivers/iio/light/vcnl4000.c                       |    77 +-
 drivers/iio/magnetometer/ak8974.c                  |     5 +-
 drivers/iio/magnetometer/ak8975.c                  |    13 +-
 drivers/iio/magnetometer/bmc150_magn.c             |    21 +
 drivers/iio/magnetometer/hmc5843.h                 |     1 +
 drivers/iio/magnetometer/hmc5843_core.c            |    20 +-
 drivers/iio/magnetometer/hmc5843_i2c.c             |     7 +-
 drivers/iio/magnetometer/hmc5843_spi.c             |     7 +-
 drivers/iio/potentiometer/Kconfig                  |    34 +-
 drivers/iio/potentiostat/lmp91000.c                |    14 +-
 drivers/iio/pressure/bmp280-core.c                 |     6 +
 drivers/iio/pressure/cros_ec_baro.c                |    11 +-
 drivers/iio/proximity/Kconfig                      |    23 +-
 drivers/iio/proximity/Makefile                     |     1 +
 drivers/iio/proximity/as3935.c                     |    50 +-
 drivers/iio/proximity/mb1232.c                     |   272 +
 drivers/iio/proximity/srf04.c                      |    38 +-
 drivers/iio/temperature/Kconfig                    |    24 +-
 drivers/iio/temperature/Makefile                   |     1 +
 drivers/iio/temperature/max31856.c                 |   356 +
 drivers/iio/trigger/iio-trig-loop.c                |     2 +-
 drivers/pwm/pwm-fsl-ftm.c                          |    44 +-
 drivers/staging/Kconfig                            |    14 +-
 drivers/staging/Makefile                           |     4 +-
 drivers/staging/android/Kconfig                    |     3 +-
 drivers/staging/android/Makefile                   |     1 +
 drivers/staging/android/ion/Kconfig                |     1 +
 drivers/staging/android/vsoc.c                     |     3 +-
 drivers/staging/axis-fifo/Kconfig                  |     8 +-
 drivers/staging/axis-fifo/Makefile                 |     1 +
 drivers/staging/board/Kconfig                      |     1 +
 drivers/staging/board/Makefile                     |     1 +
 drivers/staging/clocking-wizard/Kconfig            |     1 +
 drivers/staging/clocking-wizard/Makefile           |     1 +
 drivers/staging/comedi/Kconfig                     |   255 +-
 drivers/staging/comedi/comedi_buf.c                |     2 +
 drivers/staging/comedi/comedi_fops.c               |    32 +
 drivers/staging/comedi/drivers.c                   |    11 +-
 drivers/staging/comedi/drivers/adv_pci1710.c       |     2 +-
 drivers/staging/comedi/drivers/amplc_pci230.c      |     2 +-
 drivers/staging/comedi/drivers/comedi_isadma.c     |    17 +-
 drivers/staging/comedi/drivers/comedi_isadma.h     |     3 +
 drivers/staging/comedi/drivers/das08.c             |     4 +-
 drivers/staging/comedi/drivers/dt2811.c            |     2 +-
 drivers/staging/comedi/drivers/dt9812.c            |     5 +-
 drivers/staging/comedi/drivers/dyna_pci10xx.c      |    12 +-
 drivers/staging/comedi/drivers/ni_at_ao.c          |     2 +-
 drivers/staging/comedi/drivers/ni_daq_700.c        |     2 +-
 drivers/staging/comedi/drivers/ni_mio_common.c     |    36 +-
 .../comedi/drivers/ni_routing/tools/Makefile       |     1 +
 drivers/staging/comedi/drivers/ni_tio.c            |    14 +-
 drivers/staging/comedi/drivers/ni_usb6501.c        |     4 +-
 drivers/staging/comedi/drivers/quatech_daqp_cs.c   |     1 +
 .../staging/comedi/drivers/tests/ni_routes_test.c  |     2 +-
 drivers/staging/comedi/drivers/usbdux.c            |     2 +
 drivers/staging/comedi/drivers/usbduxfast.c        |     2 +
 drivers/staging/comedi/drivers/usbduxsigma.c       |     2 +
 drivers/staging/comedi/kcomedilib/Makefile         |     1 +
 drivers/staging/emxx_udc/Kconfig                   |     1 +
 drivers/staging/emxx_udc/Makefile                  |     1 +
 drivers/staging/emxx_udc/emxx_udc.c                |    57 +-
 .../erofs/Documentation/filesystems/erofs.txt      |     1 +
 drivers/staging/erofs/data.c                       |    18 +-
 drivers/staging/erofs/inode.c                      |    18 +-
 drivers/staging/erofs/internal.h                   |    19 +-
 drivers/staging/erofs/namei.c                      |     3 +-
 drivers/staging/erofs/super.c                      |    46 +-
 drivers/staging/erofs/unzip_pagevec.h              |     6 +-
 drivers/staging/erofs/unzip_vle.c                  |    96 +-
 drivers/staging/erofs/utils.c                      |     4 +-
 drivers/staging/erofs/xattr.c                      |    50 +-
 drivers/staging/fbtft/Kconfig                      |     1 +
 drivers/staging/fbtft/fb_agm1264k-fl.c             |     4 +-
 drivers/staging/fbtft/fb_ra8875.c                  |     2 +-
 drivers/staging/fbtft/fb_ssd1306.c                 |     3 +-
 drivers/staging/fbtft/fb_ssd1331.c                 |     3 +-
 drivers/staging/fbtft/fb_ssd1351.c                 |     4 +-
 drivers/staging/fbtft/fb_watterott.c               |    15 +-
 drivers/staging/fbtft/fbtft-io.c                   |    12 +-
 drivers/staging/fbtft/fbtft.h                      |     1 +
 drivers/staging/fbtft/fbtft_device.c               |     2 +-
 drivers/staging/fbtft/flexfb.c                     |     7 +-
 .../fieldbus/Documentation/ABI/fieldbus-dev-cdev   |    31 +
 .../Documentation/ABI/sysfs-class-fieldbus-dev     |    62 +
 .../fieldbus/Documentation/fieldbus_dev.txt        |    66 +
 drivers/staging/fieldbus/Kconfig                   |    18 +
 drivers/staging/fieldbus/Makefile                  |     7 +
 drivers/staging/fieldbus/TODO                      |     5 +
 drivers/staging/fieldbus/anybuss/Kconfig           |    39 +
 drivers/staging/fieldbus/anybuss/Makefile          |    10 +
 drivers/staging/fieldbus/anybuss/anybuss-client.h  |   102 +
 .../staging/fieldbus/anybuss/anybuss-controller.h  |    47 +
 drivers/staging/fieldbus/anybuss/arcx-anybus.c     |   399 +
 drivers/staging/fieldbus/anybuss/hms-profinet.c    |   228 +
 drivers/staging/fieldbus/anybuss/host.c            |  1458 ++
 drivers/staging/fieldbus/dev_core.c                |   351 +
 drivers/staging/fieldbus/fieldbus_dev.h            |   108 +
 drivers/staging/fsl-dpaa2/Kconfig                  |     1 +
 drivers/staging/fsl-dpaa2/Makefile                 |     1 +
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |     4 +-
 drivers/staging/fwserial/Kconfig                   |     1 +
 drivers/staging/fwserial/Makefile                  |     1 +
 drivers/staging/fwserial/fwserial.c                |     5 +-
 drivers/staging/gasket/Kconfig                     |     1 +
 drivers/staging/gasket/Makefile                    |     1 +
 drivers/staging/gasket/apex_driver.c               |     8 +-
 drivers/staging/gasket/gasket_interrupt.c          |     6 +-
 drivers/staging/gasket/gasket_page_table.c         |     5 +-
 drivers/staging/gasket/gasket_sysfs.c              |     9 +-
 drivers/staging/gasket/gasket_sysfs.h              |     4 +-
 drivers/staging/gdm724x/Kconfig                    |     1 +
 drivers/staging/gdm724x/gdm_lte.c                  |     1 -
 drivers/staging/gdm724x/gdm_mux.c                  |     7 +-
 drivers/staging/gdm724x/hci_packet.h               |     2 +-
 drivers/staging/goldfish/Kconfig                   |     1 +
 drivers/staging/goldfish/Makefile                  |     1 +
 drivers/staging/greybus/Kconfig                    |     1 +
 drivers/staging/greybus/audio_codec.h              |   122 +-
 drivers/staging/greybus/audio_manager.c            |     3 +
 drivers/staging/greybus/bundle.c                   |     2 +-
 drivers/staging/greybus/hid.c                      |     1 -
 drivers/staging/greybus/power_supply.c             |     4 +-
 drivers/staging/greybus/sdio.c                     |     8 +-
 drivers/staging/gs_fpgaboot/Kconfig                |     2 +-
 drivers/staging/gs_fpgaboot/Makefile               |     1 +
 drivers/staging/iio/Kconfig                        |     1 +
 drivers/staging/iio/accel/Kconfig                  |     1 +
 drivers/staging/iio/accel/Makefile                 |     1 +
 drivers/staging/iio/accel/adis16203.c              |     3 +-
 drivers/staging/iio/accel/adis16240.c              |     3 +-
 drivers/staging/iio/adc/Kconfig                    |    14 +-
 drivers/staging/iio/adc/Makefile                   |     1 -
 drivers/staging/iio/adc/ad7192.c                   |   236 +-
 drivers/staging/iio/adc/ad7192.h                   |    12 +-
 drivers/staging/iio/adc/ad7280a.c                  |   112 +-
 drivers/staging/iio/adc/ad7280a.h                  |     3 +-
 drivers/staging/iio/adc/ad7816.c                   |     5 +-
 drivers/staging/iio/addac/Kconfig                  |     1 +
 drivers/staging/iio/addac/Makefile                 |     1 +
 drivers/staging/iio/addac/adt7316-i2c.c            |     3 +-
 drivers/staging/iio/addac/adt7316-spi.c            |     3 +-
 drivers/staging/iio/addac/adt7316.c                |     7 +-
 drivers/staging/iio/addac/adt7316.h                |     3 +-
 drivers/staging/iio/cdc/Kconfig                    |     1 +
 drivers/staging/iio/cdc/Makefile                   |     1 +
 drivers/staging/iio/cdc/ad7150.c                   |     3 +-
 drivers/staging/iio/cdc/ad7746.c                   |     3 +-
 drivers/staging/iio/cdc/ad7746.h                   |     3 +-
 drivers/staging/iio/frequency/Kconfig              |     1 +
 drivers/staging/iio/frequency/Makefile             |     1 +
 drivers/staging/iio/frequency/ad9832.c             |    54 +-
 drivers/staging/iio/frequency/ad9832.h             |     4 +-
 drivers/staging/iio/frequency/ad9834.c             |     5 +-
 drivers/staging/iio/frequency/ad9834.h             |     3 +-
 drivers/staging/iio/frequency/dds.h                |     3 +-
 drivers/staging/iio/impedance-analyzer/Kconfig     |     3 +-
 drivers/staging/iio/impedance-analyzer/Makefile    |     1 +
 drivers/staging/iio/impedance-analyzer/ad5933.c    |    58 +-
 drivers/staging/iio/meter/Kconfig                  |     1 +
 drivers/staging/iio/meter/ade7854-i2c.c            |     3 +-
 drivers/staging/iio/meter/ade7854-spi.c            |     3 +-
 drivers/staging/iio/meter/ade7854.c                |     3 +-
 drivers/staging/iio/resolver/Kconfig               |     1 +
 drivers/staging/iio/resolver/Makefile              |     1 +
 drivers/staging/iio/resolver/ad2s1210.c            |     6 +-
 drivers/staging/kpc2000/Kconfig                    |    57 +
 drivers/staging/kpc2000/Makefile                   |     6 +
 drivers/staging/kpc2000/TODO                       |     8 +
 drivers/staging/kpc2000/kpc.h                      |    23 +
 drivers/staging/kpc2000/kpc2000/Makefile           |     4 +
 drivers/staging/kpc2000/kpc2000/cell_probe.c       |   471 +
 drivers/staging/kpc2000/kpc2000/core.c             |   437 +
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h  |    43 +
 drivers/staging/kpc2000/kpc2000/fileops.c          |   131 +
 drivers/staging/kpc2000/kpc2000/kp2000_module.c    |    54 +
 drivers/staging/kpc2000/kpc2000/pcie.h             |   112 +
 drivers/staging/kpc2000/kpc2000/uapi.h             |    22 +
 drivers/staging/kpc2000/kpc_dma/Makefile           |     6 +
 drivers/staging/kpc2000/kpc_dma/dma.c              |   264 +
 drivers/staging/kpc2000/kpc_dma/fileops.c          |   420 +
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c   |   248 +
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h   |   220 +
 drivers/staging/kpc2000/kpc_dma/uapi.h             |    11 +
 drivers/staging/kpc2000/kpc_i2c/Makefile           |     4 +
 drivers/staging/kpc2000/kpc_i2c/fileops.c          |   181 +
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c       |   699 +
 drivers/staging/kpc2000/kpc_spi/Makefile           |     4 +
 drivers/staging/kpc2000/kpc_spi/spi_driver.c       |   507 +
 drivers/staging/kpc2000/kpc_spi/spi_parts.h        |    48 +
 drivers/staging/ks7010/Kconfig                     |     1 +
 drivers/staging/ks7010/Makefile                    |     1 +
 drivers/staging/ks7010/ks_hostif.c                 |    16 +-
 drivers/staging/media/Kconfig                      |     1 +
 drivers/staging/media/bcm2048/Kconfig              |     1 +
 drivers/staging/media/bcm2048/Makefile             |     1 +
 drivers/staging/media/davinci_vpfe/Kconfig         |     1 +
 drivers/staging/media/davinci_vpfe/Makefile        |     1 +
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c   |     6 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h   |     2 -
 .../staging/media/davinci_vpfe/dm365_ipipe_hw.c    |    24 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |    41 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h |     2 -
 drivers/staging/media/davinci_vpfe/dm365_resizer.c |     4 +-
 drivers/staging/media/imx/Kconfig                  |     1 +
 drivers/staging/media/imx/imx-ic-common.c          |     6 +-
 drivers/staging/media/imx/imx-ic-prp.c             |     6 +-
 drivers/staging/media/imx/imx-ic-prpencvf.c        |     6 +-
 drivers/staging/media/imx/imx-ic.h                 |     6 +-
 drivers/staging/media/imx/imx-media-capture.c      |    11 +-
 drivers/staging/media/imx/imx-media-csi.c          |     6 +-
 drivers/staging/media/imx/imx-media-dev.c          |     6 +-
 drivers/staging/media/imx/imx-media-fim.c          |     6 +-
 drivers/staging/media/imx/imx-media-internal-sd.c  |     6 +-
 drivers/staging/media/imx/imx-media-of.c           |     6 +-
 drivers/staging/media/imx/imx-media-utils.c        |     6 +-
 drivers/staging/media/imx/imx-media-vdic.c         |     6 +-
 drivers/staging/media/imx/imx-media.h              |     6 +-
 drivers/staging/media/imx/imx6-mipi-csi2.c         |    10 +-
 drivers/staging/media/ipu3/Kconfig                 |     1 +
 drivers/staging/media/ipu3/Makefile                |     1 +
 drivers/staging/media/ipu3/ipu3.c                  |     1 -
 drivers/staging/media/mt9t031/Kconfig              |     1 +
 drivers/staging/media/mt9t031/Makefile             |     1 +
 drivers/staging/media/rockchip/vpu/Kconfig         |     2 +-
 drivers/staging/media/rockchip/vpu/Makefile        |     1 +
 drivers/staging/media/soc_camera/Kconfig           |     1 +
 drivers/staging/media/soc_camera/imx074.c          |     6 +-
 drivers/staging/media/soc_camera/mt9t031.c         |     6 +-
 drivers/staging/media/soc_camera/soc_camera.c      |     6 +-
 drivers/staging/media/soc_camera/soc_mediabus.c    |     6 +-
 drivers/staging/media/soc_camera/soc_mt9v022.c     |     6 +-
 drivers/staging/media/soc_camera/soc_ov5642.c      |     6 +-
 drivers/staging/media/soc_camera/soc_ov9740.c      |     6 +-
 drivers/staging/media/sunxi/Kconfig                |     1 +
 drivers/staging/media/sunxi/Makefile               |     1 +
 drivers/staging/media/sunxi/cedrus/Kconfig         |     1 +
 drivers/staging/media/sunxi/cedrus/Makefile        |     1 +
 drivers/staging/media/tegra-vde/Kconfig            |     1 +
 drivers/staging/media/tegra-vde/Makefile           |     1 +
 drivers/staging/media/tegra-vde/tegra-vde.c        |     5 +-
 drivers/staging/media/tegra-vde/uapi.h             |    11 +-
 drivers/staging/media/zoran/Kconfig                |     1 +
 drivers/staging/media/zoran/videocodec.c           |    14 +-
 drivers/staging/media/zoran/videocodec.h           |    17 +-
 drivers/staging/media/zoran/zoran.h                |    12 +-
 drivers/staging/media/zoran/zoran_card.c           |    17 +-
 drivers/staging/media/zoran/zoran_card.h           |    12 +-
 drivers/staging/media/zoran/zoran_device.c         |    16 +-
 drivers/staging/media/zoran/zoran_device.h         |    22 +-
 drivers/staging/media/zoran/zoran_driver.c         |   114 +-
 drivers/staging/media/zoran/zoran_procfs.c         |    12 +-
 drivers/staging/media/zoran/zoran_procfs.h         |    12 +-
 drivers/staging/media/zoran/zr36016.c              |    18 +-
 drivers/staging/media/zoran/zr36016.h              |    18 +-
 drivers/staging/media/zoran/zr36050.c              |    18 +-
 drivers/staging/media/zoran/zr36050.h              |    18 +-
 drivers/staging/media/zoran/zr36057.h              |    12 +-
 drivers/staging/media/zoran/zr36060.c              |    30 +-
 drivers/staging/media/zoran/zr36060.h              |    18 +-
 .../most/Documentation/ABI/configfs-most.txt       |   204 +
 .../staging/most/Documentation/driver_usage.txt    |   131 +-
 drivers/staging/most/Kconfig                       |     3 +-
 drivers/staging/most/Makefile                      |     1 +
 drivers/staging/most/cdev/Kconfig                  |     1 +
 drivers/staging/most/cdev/Makefile                 |     1 +
 drivers/staging/most/cdev/cdev.c                   |    10 +-
 drivers/staging/most/configfs.c                    |   676 +
 drivers/staging/most/core.c                        |   305 +-
 drivers/staging/most/core.h                        |    20 +-
 drivers/staging/most/dim2/Kconfig                  |     1 +
 drivers/staging/most/dim2/Makefile                 |     1 +
 drivers/staging/most/dim2/errors.h                 |     2 +-
 drivers/staging/most/dim2/hal.h                    |     2 +-
 drivers/staging/most/dim2/reg.h                    |     2 +-
 drivers/staging/most/dim2/sysfs.h                  |     2 +-
 drivers/staging/most/i2c/Kconfig                   |     3 +-
 drivers/staging/most/i2c/Makefile                  |     1 +
 drivers/staging/most/net/Kconfig                   |     3 +-
 drivers/staging/most/net/Makefile                  |     1 +
 drivers/staging/most/net/net.c                     |     3 +-
 drivers/staging/most/sound/Kconfig                 |     3 +-
 drivers/staging/most/sound/Makefile                |     1 +
 drivers/staging/most/sound/sound.c                 |    61 +-
 drivers/staging/most/usb/Kconfig                   |     3 +-
 drivers/staging/most/usb/Makefile                  |     1 +
 drivers/staging/most/usb/usb.c                     |     2 +-
 drivers/staging/most/video/Kconfig                 |     3 +-
 drivers/staging/most/video/Makefile                |     1 +
 drivers/staging/most/video/video.c                 |     3 +-
 drivers/staging/mt7621-dma/Kconfig                 |     1 +
 drivers/staging/mt7621-dma/Makefile                |     1 +
 drivers/staging/mt7621-dma/mtk-hsdma.c             |     7 +-
 drivers/staging/mt7621-dts/Kconfig                 |     1 +
 drivers/staging/mt7621-dts/Makefile                |     1 +
 drivers/staging/mt7621-dts/mt7621.dtsi             |    23 +-
 drivers/staging/mt7621-mmc/Kconfig                 |    16 -
 drivers/staging/mt7621-mmc/Makefile                |    42 -
 drivers/staging/mt7621-mmc/TODO                    |     8 -
 drivers/staging/mt7621-mmc/board.h                 |    63 -
 drivers/staging/mt7621-mmc/dbg.c                   |   304 -
 drivers/staging/mt7621-mmc/dbg.h                   |   101 -
 drivers/staging/mt7621-mmc/mt6575_sd.h             |   488 -
 drivers/staging/mt7621-mmc/sd.c                    |  1855 ---
 drivers/staging/mt7621-pci-phy/Kconfig             |     1 +
 drivers/staging/mt7621-pci-phy/Makefile            |     1 +
 .../mt7621-pci-phy/mediatek,mt7621-pci-phy.txt     |    44 +-
 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c    |   284 +-
 drivers/staging/mt7621-pci/Kconfig                 |     1 +
 drivers/staging/mt7621-pci/Makefile                |     1 +
 drivers/staging/mt7621-pci/pci-mt7621.c            |     2 +-
 drivers/staging/mt7621-pinctrl/Kconfig             |     1 +
 drivers/staging/mt7621-pinctrl/Makefile            |     1 +
 drivers/staging/mt7621-spi/Kconfig                 |     1 +
 drivers/staging/mt7621-spi/Makefile                |     1 +
 drivers/staging/mt7621-spi/spi-mt7621.c            |     7 +-
 drivers/staging/netlogic/Kconfig                   |     1 +
 drivers/staging/netlogic/Makefile                  |     1 +
 drivers/staging/netlogic/xlr_net.c                 |    11 +-
 drivers/staging/nvec/Kconfig                       |     1 +
 drivers/staging/octeon-usb/Kconfig                 |     1 +
 drivers/staging/octeon-usb/octeon-hcd.c            |     4 +-
 drivers/staging/octeon-usb/octeon-hcd.h            |     8 +-
 drivers/staging/octeon/Kconfig                     |     1 +
 drivers/staging/octeon/TODO                        |     9 +
 drivers/staging/octeon/ethernet-tx.c               |    20 +-
 drivers/staging/olpc_dcon/Kconfig                  |     1 +
 drivers/staging/olpc_dcon/Makefile                 |     1 +
 drivers/staging/olpc_dcon/olpc_dcon.h              |     5 +
 drivers/staging/olpc_dcon/olpc_dcon_xo_1.c         |     7 +-
 drivers/staging/olpc_dcon/olpc_dcon_xo_1_5.c       |    56 +-
 drivers/staging/pi433/Kconfig                      |     1 +
 drivers/staging/pi433/Makefile                     |     1 +
 drivers/staging/pi433/pi433_if.c                   |    38 +-
 drivers/staging/pi433/rf69.c                       |    49 +-
 drivers/staging/ralink-gdma/Kconfig                |     1 +
 drivers/staging/ralink-gdma/Makefile               |     1 +
 drivers/staging/ralink-gdma/ralink-gdma.c          |   105 +-
 drivers/staging/rtl8188eu/Kconfig                  |     1 +
 drivers/staging/rtl8188eu/core/rtw_ap.c            |    28 +-
 drivers/staging/rtl8188eu/core/rtw_cmd.c           |     6 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |     6 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |     5 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c       |     2 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c          |    70 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |     6 +-
 drivers/staging/rtl8188eu/hal/odm.c                |     4 +-
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c       |     6 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c     |    10 +-
 drivers/staging/rtl8188eu/include/odm_precomp.h    |     4 +-
 .../include/phydm_reg.h}                           |    12 +-
 .../staging/rtl8188eu/include/phydm_regdefine11n.h |    53 +
 drivers/staging/rtl8188eu/include/wifi.h           |   130 -
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c   |     1 -
 drivers/staging/rtl8192e/Kconfig                   |    10 +-
 drivers/staging/rtl8192e/dot11d.c                  |     9 +-
 drivers/staging/rtl8192e/license                   |   339 -
 drivers/staging/rtl8192e/rtl8192e/Kconfig          |     1 +
 drivers/staging/rtl8192e/rtl8192e/r8190P_def.h     |    18 +-
 drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.c |    17 +-
 drivers/staging/rtl8192e/rtl8192e/r8190P_rtl8256.h |    17 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.c  |    18 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_cmdpkt.h  |    16 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     |    44 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.h     |    22 +-
 .../staging/rtl8192e/rtl8192e/r8192E_firmware.c    |    17 +-
 .../staging/rtl8192e/rtl8192e/r8192E_firmware.h    |    16 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_hw.h      |    18 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_hwimg.c   |    18 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_hwimg.h   |    16 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c     |    37 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.h     |    16 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_phyreg.h  |    16 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_cam.c        |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_cam.h        |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.h       |    20 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c         |    16 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.h         |    16 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.c     |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_eeprom.h     |    21 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_ethtool.c    |    18 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_pci.c        |    21 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_pci.h        |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.c         |    17 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.h         |    17 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_ps.c         |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_ps.h         |    19 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.c         |    17 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_wx.h         |    17 +-
 drivers/staging/rtl8192e/rtl819x_BA.h              |    16 +-
 drivers/staging/rtl8192e/rtl819x_BAProc.c          |    16 +-
 drivers/staging/rtl8192e/rtl819x_HT.h              |    16 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c          |    16 +-
 drivers/staging/rtl8192e/rtl819x_Qos.h             |    16 +-
 drivers/staging/rtl8192e/rtl819x_TS.h              |    16 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c          |    16 +-
 drivers/staging/rtl8192e/rtllib.h                  |     6 +-
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c       |     6 +-
 drivers/staging/rtl8192e/rtllib_crypt_wep.c        |     6 +-
 drivers/staging/rtl8192e/rtllib_debug.h            |    22 +-
 drivers/staging/rtl8192e/rtllib_module.c           |    21 +-
 drivers/staging/rtl8192e/rtllib_rx.c               |    20 +-
 drivers/staging/rtl8192e/rtllib_softmac.c          |     5 +-
 drivers/staging/rtl8192e/rtllib_softmac_wx.c       |     5 +-
 drivers/staging/rtl8192e/rtllib_tx.c               |    22 +-
 drivers/staging/rtl8192e/rtllib_wx.c               |    19 +-
 drivers/staging/rtl8192u/Kconfig                   |     1 +
 drivers/staging/rtl8192u/ieee80211/ieee80211.h     |    40 +-
 .../staging/rtl8192u/ieee80211/ieee80211_crypt.c   |     7 +-
 .../staging/rtl8192u/ieee80211/ieee80211_crypt.h   |     6 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c      |    10 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c      |    10 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_wep.c       |     6 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |    76 +-
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c |     3 +-
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |     3 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c  |    41 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c  |    40 +-
 .../staging/rtl8192u/ieee80211/rtl819x_BAProc.c    |    22 +-
 drivers/staging/rtl8192u/ieee80211/rtl819x_HT.h    |     4 +-
 .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    |   114 +-
 drivers/staging/rtl8192u/r8180_93cx6.c             |    26 +-
 drivers/staging/rtl8192u/r8190_rtl8256.c           |     2 +-
 drivers/staging/rtl8192u/r8192U_core.c             |    16 +-
 drivers/staging/rtl8192u/r8192U_dm.c               |    38 +-
 drivers/staging/rtl8192u/r8192U_hw.h               |     2 +-
 drivers/staging/rtl8192u/r8192U_wx.c               |     2 +-
 drivers/staging/rtl8192u/r8192U_wx.h               |     2 +-
 drivers/staging/rtl8712/Kconfig                    |    11 +-
 drivers/staging/rtl8712/drv_types.h                |     6 +-
 drivers/staging/rtl8712/hal_init.c                 |     3 +-
 drivers/staging/rtl8712/ieee80211.c                |     3 +-
 drivers/staging/rtl8712/ieee80211.h                |     3 +-
 drivers/staging/rtl8712/os_intfs.c                 |     8 +-
 drivers/staging/rtl8712/rtl8712_cmd.c              |     6 +-
 drivers/staging/rtl8712/rtl8712_cmd.h              |     1 -
 drivers/staging/rtl8712/rtl8712_efuse.c            |     6 +-
 drivers/staging/rtl8712/rtl8712_efuse.h            |     3 +-
 drivers/staging/rtl8712/rtl8712_io.c               |     4 +-
 drivers/staging/rtl8712/rtl8712_led.c              |    13 +-
 drivers/staging/rtl8712/rtl8712_recv.c             |    28 +-
 drivers/staging/rtl8712/rtl8712_xmit.c             |    12 +-
 drivers/staging/rtl8712/rtl871x_eeprom.c           |    23 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |    18 +-
 drivers/staging/rtl8712/rtl871x_mlme.c             |    14 +-
 drivers/staging/rtl8712/rtl871x_mp.c               |     5 +-
 drivers/staging/rtl8712/rtl871x_pwrctrl.c          |     4 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |     8 +-
 drivers/staging/rtl8712/usb_intf.c                 |    12 +-
 drivers/staging/rtl8712/usb_ops_linux.c            |    26 +-
 drivers/staging/rtl8723bs/Kconfig                  |     1 +
 drivers/staging/rtl8723bs/core/rtw_ap.c            |    12 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |    51 +-
 drivers/staging/rtl8723bs/core/rtw_debug.c         |    11 +-
 drivers/staging/rtl8723bs/core/rtw_efuse.c         |    33 +-
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c     |     6 +-
 drivers/staging/rtl8723bs/core/rtw_io.c            |     2 +-
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c     |     2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c          |    79 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |    59 +-
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c       |    18 +-
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     |     2 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c          |     2 -
 drivers/staging/rtl8723bs/hal/hal_btcoex.c         |    11 +-
 drivers/staging/rtl8723bs/hal/hal_com.c            |    32 +-
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     |    20 +-
 drivers/staging/rtl8723bs/hal/odm.c                |     4 +-
 drivers/staging/rtl8723bs/hal/odm.h                |    20 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c       |     2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c       |    12 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c        |     2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c  |     8 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    |    13 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_rxdesc.c    |     2 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |     8 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c     |     9 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c           |    22 +-
 drivers/staging/rtl8723bs/include/cmd_osdep.h      |     6 +-
 drivers/staging/rtl8723bs/include/drv_types.h      |    10 +-
 drivers/staging/rtl8723bs/include/drv_types_sdio.h |     4 +-
 drivers/staging/rtl8723bs/include/ieee80211.h      |    15 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h        |     6 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h       |    31 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h    |    30 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h       |     6 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h       |     2 +-
 drivers/staging/rtl8723bs/include/wifi.h           |    86 +-
 drivers/staging/rtl8723bs/include/wlan_bssdef.h    |    56 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c     |    57 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |    19 +-
 drivers/staging/rtl8723bs/os_dep/osdep_service.c   |    29 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |    10 +-
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c  |    30 +-
 drivers/staging/rtlwifi/Kconfig                    |    12 -
 drivers/staging/rtlwifi/Makefile                   |    70 -
 drivers/staging/rtlwifi/TODO                       |    11 -
 drivers/staging/rtlwifi/base.c                     |  2815 ----
 drivers/staging/rtlwifi/base.h                     |   175 -
 drivers/staging/rtlwifi/btcoexist/Makefile         |     8 -
 drivers/staging/rtlwifi/btcoexist/halbt_precomp.h  |    74 -
 .../staging/rtlwifi/btcoexist/halbtc8822b1ant.c    |  5233 --------
 .../staging/rtlwifi/btcoexist/halbtc8822b1ant.h    |   433 -
 .../staging/rtlwifi/btcoexist/halbtc8822b2ant.c    |  5210 --------
 .../staging/rtlwifi/btcoexist/halbtc8822b2ant.h    |   487 -
 .../rtlwifi/btcoexist/halbtc8822bwifionly.c        |    54 -
 .../rtlwifi/btcoexist/halbtc8822bwifionly.h        |    24 -
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c   |  1837 ---
 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.h   |   791 --
 drivers/staging/rtlwifi/btcoexist/rtl_btc.c        |   517 -
 drivers/staging/rtlwifi/btcoexist/rtl_btc.h        |    64 -
 drivers/staging/rtlwifi/cam.c                      |   315 -
 drivers/staging/rtlwifi/cam.h                      |    39 -
 drivers/staging/rtlwifi/core.c                     |  1996 ---
 drivers/staging/rtlwifi/core.h                     |    71 -
 drivers/staging/rtlwifi/debug.c                    |   624 -
 drivers/staging/rtlwifi/debug.h                    |   223 -
 drivers/staging/rtlwifi/efuse.c                    |  1329 --
 drivers/staging/rtlwifi/efuse.h                    |   109 -
 drivers/staging/rtlwifi/halmac/halmac_2_platform.h |    41 -
 .../halmac_88xx/halmac_8822b/halmac_8822b_cfg.h    |   121 -
 .../halmac_88xx/halmac_8822b/halmac_8822b_phy.c    |    95 -
 .../halmac_8822b/halmac_8822b_pwr_seq.c            |   552 -
 .../halmac_8822b/halmac_8822b_pwr_seq.h            |    29 -
 .../halmac_88xx/halmac_8822b/halmac_api_8822b.c    |   332 -
 .../halmac_88xx/halmac_8822b/halmac_api_8822b.h    |    33 -
 .../halmac_8822b/halmac_api_8822b_pcie.c           |   312 -
 .../halmac_8822b/halmac_api_8822b_pcie.h           |    42 -
 .../halmac_8822b/halmac_api_8822b_sdio.c           |   173 -
 .../halmac_8822b/halmac_api_8822b_sdio.h           |    31 -
 .../halmac_8822b/halmac_api_8822b_usb.c            |   174 -
 .../halmac_8822b/halmac_api_8822b_usb.h            |    34 -
 .../halmac_88xx/halmac_8822b/halmac_func_8822b.c   |   403 -
 .../halmac_88xx/halmac_8822b/halmac_func_8822b.h   |    27 -
 .../rtlwifi/halmac/halmac_88xx/halmac_88xx_cfg.h   |   160 -
 .../rtlwifi/halmac/halmac_88xx/halmac_api_88xx.c   |  5970 ---------
 .../rtlwifi/halmac/halmac_88xx/halmac_api_88xx.h   |   385 -
 .../halmac/halmac_88xx/halmac_api_88xx_pcie.c      |   318 -
 .../halmac/halmac_88xx/halmac_api_88xx_pcie.h      |    60 -
 .../halmac/halmac_88xx/halmac_api_88xx_sdio.c      |   963 --
 .../halmac/halmac_88xx/halmac_api_88xx_sdio.h      |    73 -
 .../halmac/halmac_88xx/halmac_api_88xx_usb.c       |   543 -
 .../halmac/halmac_88xx/halmac_api_88xx_usb.h       |    62 -
 .../rtlwifi/halmac/halmac_88xx/halmac_func_88xx.c  |  4465 ------
 .../rtlwifi/halmac/halmac_88xx/halmac_func_88xx.h  |   310 -
 drivers/staging/rtlwifi/halmac/halmac_api.c        |   415 -
 drivers/staging/rtlwifi/halmac/halmac_api.h        |    70 -
 drivers/staging/rtlwifi/halmac/halmac_bit2.h       | 13396 ---------------=
----
 drivers/staging/rtlwifi/halmac/halmac_bit_8822b.h  | 12092 ---------------=
--
 drivers/staging/rtlwifi/halmac/halmac_fw_info.h    |   111 -
 .../rtlwifi/halmac/halmac_fw_offload_c2h_nic.h     |   173 -
 .../rtlwifi/halmac/halmac_fw_offload_h2c_nic.h     |   504 -
 .../rtlwifi/halmac/halmac_h2c_extra_info_nic.h     |   104 -
 .../staging/rtlwifi/halmac/halmac_intf_phy_cmd.h   |    43 -
 .../rtlwifi/halmac/halmac_original_c2h_nic.h       |   392 -
 .../rtlwifi/halmac/halmac_original_h2c_nic.h       |  1000 --
 .../staging/rtlwifi/halmac/halmac_pwr_seq_cmd.h    |   105 -
 drivers/staging/rtlwifi/halmac/halmac_reg2.h       |  1121 --
 drivers/staging/rtlwifi/halmac/halmac_reg_8822b.h  |   717 -
 drivers/staging/rtlwifi/halmac/halmac_rx_bd_chip.h |    37 -
 drivers/staging/rtlwifi/halmac/halmac_rx_bd_nic.h  |    37 -
 .../staging/rtlwifi/halmac/halmac_rx_desc_chip.h   |   107 -
 .../staging/rtlwifi/halmac/halmac_rx_desc_nic.h    |   122 -
 drivers/staging/rtlwifi/halmac/halmac_sdio_reg.h   |    51 -
 drivers/staging/rtlwifi/halmac/halmac_tx_bd_chip.h |   107 -
 drivers/staging/rtlwifi/halmac/halmac_tx_bd_nic.h  |   112 -
 .../staging/rtlwifi/halmac/halmac_tx_desc_chip.h   |   433 -
 .../staging/rtlwifi/halmac/halmac_tx_desc_nic.h    |   495 -
 drivers/staging/rtlwifi/halmac/halmac_type.h       |  1923 ---
 drivers/staging/rtlwifi/halmac/halmac_usb_reg.h    |    17 -
 drivers/staging/rtlwifi/halmac/rtl_halmac.c        |  1373 --
 drivers/staging/rtlwifi/halmac/rtl_halmac.h        |    83 -
 drivers/staging/rtlwifi/pci.c                      |  2496 ----
 drivers/staging/rtlwifi/pci.h                      |   319 -
 drivers/staging/rtlwifi/phydm/halphyrf_ce.c        |   954 --
 drivers/staging/rtlwifi/phydm/halphyrf_ce.h        |    74 -
 drivers/staging/rtlwifi/phydm/mp_precomp.h         |    13 -
 drivers/staging/rtlwifi/phydm/phydm.c              |  1975 ---
 drivers/staging/rtlwifi/phydm/phydm.h              |   935 --
 drivers/staging/rtlwifi/phydm/phydm_acs.c          |   189 -
 drivers/staging/rtlwifi/phydm/phydm_acs.h          |    46 -
 drivers/staging/rtlwifi/phydm/phydm_adaptivity.c   |   930 --
 drivers/staging/rtlwifi/phydm/phydm_adaptivity.h   |   108 -
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c |   616 -
 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.h |    85 -
 drivers/staging/rtlwifi/phydm/phydm_antdiv.c       |    72 -
 drivers/staging/rtlwifi/phydm/phydm_antdiv.h       |   290 -
 drivers/staging/rtlwifi/phydm/phydm_beamforming.h  |    37 -
 drivers/staging/rtlwifi/phydm/phydm_ccx.c          |   447 -
 drivers/staging/rtlwifi/phydm/phydm_ccx.h          |    72 -
 drivers/staging/rtlwifi/phydm/phydm_cfotracking.c  |   332 -
 drivers/staging/rtlwifi/phydm/phydm_cfotracking.h  |    49 -
 drivers/staging/rtlwifi/phydm/phydm_debug.c        |  2888 ----
 drivers/staging/rtlwifi/phydm/phydm_debug.h        |   164 -
 drivers/staging/rtlwifi/phydm/phydm_dfs.h          |    48 -
 drivers/staging/rtlwifi/phydm/phydm_dig.c          |  1521 ---
 drivers/staging/rtlwifi/phydm/phydm_dig.h          |   230 -
 .../staging/rtlwifi/phydm/phydm_dynamic_rx_path.h  |    26 -
 .../rtlwifi/phydm/phydm_dynamicbbpowersaving.c     |   118 -
 .../rtlwifi/phydm/phydm_dynamicbbpowersaving.h     |    39 -
 .../staging/rtlwifi/phydm/phydm_dynamictxpower.c   |    91 -
 .../staging/rtlwifi/phydm/phydm_dynamictxpower.h   |    53 -
 .../staging/rtlwifi/phydm/phydm_edcaturbocheck.c   |   128 -
 .../staging/rtlwifi/phydm/phydm_edcaturbocheck.h   |    33 -
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c     |  1848 ---
 drivers/staging/rtlwifi/phydm/phydm_hwconfig.h     |   487 -
 drivers/staging/rtlwifi/phydm/phydm_interface.c    |   307 -
 drivers/staging/rtlwifi/phydm/phydm_interface.h    |   183 -
 drivers/staging/rtlwifi/phydm/phydm_iqk.h          |    65 -
 drivers/staging/rtlwifi/phydm/phydm_kfree.c        |   217 -
 drivers/staging/rtlwifi/phydm/phydm_kfree.h        |    31 -
 drivers/staging/rtlwifi/phydm/phydm_noisemonitor.c |   319 -
 drivers/staging/rtlwifi/phydm/phydm_noisemonitor.h |    35 -
 .../staging/rtlwifi/phydm/phydm_powertracking_ce.c |   633 -
 .../staging/rtlwifi/phydm/phydm_powertracking_ce.h |   282 -
 drivers/staging/rtlwifi/phydm/phydm_pre_define.h   |   602 -
 drivers/staging/rtlwifi/phydm/phydm_precomp.h      |    74 -
 drivers/staging/rtlwifi/phydm/phydm_psd.c          |   406 -
 drivers/staging/rtlwifi/phydm/phydm_psd.h          |    56 -
 drivers/staging/rtlwifi/phydm/phydm_rainfo.c       |  1196 --
 drivers/staging/rtlwifi/phydm/phydm_rainfo.h       |   258 -
 drivers/staging/rtlwifi/phydm/phydm_reg.h          |   140 -
 .../staging/rtlwifi/phydm/phydm_regdefine11ac.h    |    83 -
 drivers/staging/rtlwifi/phydm/phydm_regdefine11n.h |   202 -
 drivers/staging/rtlwifi/phydm/phydm_types.h        |   119 -
 .../rtlwifi/phydm/rtl8822b/halhwimg8822b_bb.c      |  1956 ---
 .../rtlwifi/phydm/rtl8822b/halhwimg8822b_bb.h      |    43 -
 .../rtlwifi/phydm/rtl8822b/halhwimg8822b_mac.c     |   211 -
 .../rtlwifi/phydm/rtl8822b/halhwimg8822b_mac.h     |    27 -
 .../rtlwifi/phydm/rtl8822b/halhwimg8822b_rf.c      |  4730 -------
 .../rtlwifi/phydm/rtl8822b/halhwimg8822b_rf.h      |   118 -
 .../rtlwifi/phydm/rtl8822b/halphyrf_8822b.c        |   340 -
 .../rtlwifi/phydm/rtl8822b/halphyrf_8822b.h        |    34 -
 .../rtlwifi/phydm/rtl8822b/phydm_hal_api8822b.c    |  1804 ---
 .../rtlwifi/phydm/rtl8822b/phydm_hal_api8822b.h    |    73 -
 .../rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c       |  1399 --
 .../rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.h       |    37 -
 .../rtlwifi/phydm/rtl8822b/phydm_regconfig8822b.c  |   157 -
 .../rtlwifi/phydm/rtl8822b/phydm_regconfig8822b.h  |    43 -
 .../rtlwifi/phydm/rtl8822b/phydm_rtl8822b.c        |   214 -
 .../rtlwifi/phydm/rtl8822b/phydm_rtl8822b.h        |    19 -
 .../rtlwifi/phydm/rtl8822b/version_rtl8822b.h      |    23 -
 drivers/staging/rtlwifi/phydm/rtl_phydm.c          |   865 --
 drivers/staging/rtlwifi/phydm/rtl_phydm.h          |    34 -
 drivers/staging/rtlwifi/phydm/txbf/halcomtxbf.h    |    56 -
 drivers/staging/rtlwifi/phydm/txbf/haltxbf8822b.h  |    28 -
 .../staging/rtlwifi/phydm/txbf/haltxbfinterface.h  |    27 -
 drivers/staging/rtlwifi/phydm/txbf/haltxbfjaguar.h |    25 -
 .../rtlwifi/phydm/txbf/phydm_hal_txbf_api.h        |    30 -
 drivers/staging/rtlwifi/ps.c                       |   996 --
 drivers/staging/rtlwifi/ps.h                       |    39 -
 drivers/staging/rtlwifi/pwrseqcmd.h                |    83 -
 drivers/staging/rtlwifi/rc.c                       |   309 -
 drivers/staging/rtlwifi/rc.h                       |    38 -
 drivers/staging/rtlwifi/regd.c                     |   458 -
 drivers/staging/rtlwifi/regd.h                     |    52 -
 drivers/staging/rtlwifi/rtl8822be/Makefile         |     7 -
 drivers/staging/rtlwifi/rtl8822be/def.h            |    71 -
 drivers/staging/rtlwifi/rtl8822be/fw.c             |   964 --
 drivers/staging/rtlwifi/rtl8822be/fw.h             |   187 -
 drivers/staging/rtlwifi/rtl8822be/hw.c             |  2430 ----
 drivers/staging/rtlwifi/rtl8822be/hw.h             |    55 -
 drivers/staging/rtlwifi/rtl8822be/led.c            |   116 -
 drivers/staging/rtlwifi/rtl8822be/led.h            |    23 -
 drivers/staging/rtlwifi/rtl8822be/phy.c            |  2223 ---
 drivers/staging/rtlwifi/rtl8822be/phy.h            |   134 -
 drivers/staging/rtlwifi/rtl8822be/reg.h            |  1642 ---
 drivers/staging/rtlwifi/rtl8822be/sw.c             |   470 -
 drivers/staging/rtlwifi/rtl8822be/sw.h             |    21 -
 drivers/staging/rtlwifi/rtl8822be/trx.c            |  1004 --
 drivers/staging/rtlwifi/rtl8822be/trx.h            |   154 -
 drivers/staging/rtlwifi/stats.c                    |   249 -
 drivers/staging/rtlwifi/stats.h                    |    31 -
 drivers/staging/rtlwifi/wifi.h                     |  3362 -----
 drivers/staging/rts5208/Kconfig                    |     1 +
 drivers/staging/rts5208/Makefile                   |     1 +
 drivers/staging/rts5208/rtsx_chip.h                |     2 +-
 drivers/staging/sm750fb/Kconfig                    |     1 +
 drivers/staging/sm750fb/Makefile                   |     1 +
 drivers/staging/sm750fb/ddk750.h                   |     1 +
 drivers/staging/sm750fb/ddk750_chip.c              |    27 +-
 drivers/staging/sm750fb/ddk750_chip.h              |     2 +-
 drivers/staging/sm750fb/ddk750_display.c           |    10 +-
 drivers/staging/sm750fb/ddk750_display.h           |     2 +-
 drivers/staging/sm750fb/ddk750_dvi.c               |    40 +-
 drivers/staging/sm750fb/ddk750_power.h             |     2 +-
 drivers/staging/sm750fb/ddk750_sii164.c            |   114 +-
 drivers/staging/sm750fb/ddk750_swi2c.c             |     1 +
 drivers/staging/sm750fb/ddk750_swi2c.h             |     1 +
 drivers/staging/sm750fb/sm750.c                    |     7 +-
 drivers/staging/sm750fb/sm750_accel.c              |    32 +-
 drivers/staging/sm750fb/sm750_hw.c                 |     2 +-
 drivers/staging/speakup/Kconfig                    |     1 +
 drivers/staging/speakup/kobjects.c                 |    14 +-
 drivers/staging/speakup/main.c                     |     1 +
 drivers/staging/speakup/selection.c                |   212 +-
 drivers/staging/speakup/speakup.h                  |     1 +
 drivers/staging/speakup/speakup_decpc.c            |     2 +-
 drivers/staging/speakup/speakup_keypc.c            |     6 +-
 drivers/staging/speakup/spk_ttyio.c                |     2 +-
 drivers/staging/unisys/Kconfig                     |     1 +
 drivers/staging/unisys/Makefile                    |     1 +
 drivers/staging/unisys/include/iochannel.h         |     2 +-
 drivers/staging/unisys/visorhba/Kconfig            |    13 +-
 drivers/staging/unisys/visorhba/Makefile           |     1 +
 drivers/staging/unisys/visorinput/Kconfig          |    15 +-
 drivers/staging/unisys/visorinput/Makefile         |     1 +
 drivers/staging/unisys/visornic/Kconfig            |    15 +-
 drivers/staging/unisys/visornic/Makefile           |     1 +
 drivers/staging/vboxvideo/Kconfig                  |     1 +
 drivers/staging/vboxvideo/vbox_mode.c              |     3 +-
 drivers/staging/vboxvideo/vbox_prime.c             |    10 +-
 drivers/staging/vc04_services/Kconfig              |     1 +
 .../staging/vc04_services/bcm2835-audio/Kconfig    |     1 +
 .../staging/vc04_services/bcm2835-audio/Makefile   |     1 +
 .../vc04_services/bcm2835-audio/bcm2835-ctl.c      |    12 +-
 .../staging/vc04_services/bcm2835-camera/Kconfig   |     1 +
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |    55 +-
 .../vc04_services/bcm2835-camera/controls.c        |    75 +-
 .../staging/vc04_services/interface/vchi/vchi.h    |    38 +-
 .../vc04_services/interface/vchi/vchi_cfg.h        |    34 +-
 .../vc04_services/interface/vchi/vchi_common.h     |   176 +-
 .../vc04_services/interface/vchiq_arm/vchiq.h      |    34 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c           |    37 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |    56 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |    32 +-
 .../vc04_services/interface/vchiq_arm/vchiq_cfg.h  |    34 +-
 .../interface/vchiq_arm/vchiq_connected.c          |    34 +-
 .../interface/vchiq_arm/vchiq_connected.h          |    34 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |    50 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |    34 +-
 .../interface/vchiq_arm/vchiq_debugfs.c            |    32 +-
 .../interface/vchiq_arm/vchiq_debugfs.h            |    34 +-
 .../vc04_services/interface/vchiq_arm/vchiq_if.h   |    34 +-
 .../interface/vchiq_arm/vchiq_ioctl.h              |    34 +-
 .../interface/vchiq_arm/vchiq_pagelist.h           |    34 +-
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |    34 +-
 .../vc04_services/interface/vchiq_arm/vchiq_util.c |    34 +-
 .../vc04_services/interface/vchiq_arm/vchiq_util.h |    34 +-
 drivers/staging/vme/Makefile                       |     1 +
 drivers/staging/vme/devices/Kconfig                |     1 +
 drivers/staging/vme/devices/Makefile               |     1 +
 drivers/staging/vt6655/Kconfig                     |     1 +
 drivers/staging/vt6655/card.h                      |     6 +-
 drivers/staging/vt6655/channel.h                   |     2 +-
 drivers/staging/vt6655/desc.h                      |     2 +-
 drivers/staging/vt6655/device.h                    |     2 +-
 drivers/staging/vt6655/device_cfg.h                |     2 +-
 drivers/staging/vt6655/dpc.h                       |     2 +-
 drivers/staging/vt6655/key.h                       |     2 +-
 drivers/staging/vt6655/mac.c                       |    25 -
 drivers/staging/vt6655/mac.h                       |     9 +-
 drivers/staging/vt6655/power.c                     |     7 +-
 drivers/staging/vt6655/power.h                     |     2 +-
 drivers/staging/vt6655/rf.c                        |    35 +-
 drivers/staging/vt6655/rf.h                        |     2 +-
 drivers/staging/vt6655/rxtx.c                      |    18 +-
 drivers/staging/vt6655/rxtx.h                      |     2 +-
 drivers/staging/vt6655/srom.h                      |     2 +-
 drivers/staging/vt6655/tmacro.h                    |     2 +-
 drivers/staging/vt6655/upc.h                       |     4 +-
 drivers/staging/vt6656/Kconfig                     |     1 +
 drivers/staging/vt6656/baseband.h                  |     2 +-
 drivers/staging/vt6656/card.h                      |     2 +-
 drivers/staging/vt6656/channel.h                   |     2 +-
 drivers/staging/vt6656/desc.h                      |     2 +-
 drivers/staging/vt6656/device.h                    |     2 +-
 drivers/staging/vt6656/dpc.h                       |     2 +-
 drivers/staging/vt6656/firmware.h                  |     2 +-
 drivers/staging/vt6656/int.h                       |     2 +-
 drivers/staging/vt6656/key.h                       |     2 +-
 drivers/staging/vt6656/power.h                     |     2 +-
 drivers/staging/vt6656/rf.h                        |     2 +-
 drivers/staging/vt6656/rxtx.h                      |     2 +-
 drivers/staging/vt6656/usbpipe.h                   |     2 +-
 drivers/staging/vt6656/wcmd.h                      |     2 +-
 drivers/staging/wilc1000/Kconfig                   |     2 +-
 drivers/staging/wilc1000/host_interface.c          |    71 +-
 drivers/staging/wilc1000/host_interface.h          |    14 +-
 drivers/staging/wilc1000/wilc_netdev.c             |     2 +-
 drivers/staging/wilc1000/wilc_spi.c                |    13 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c  |    72 +-
 drivers/staging/wilc1000/wilc_wlan.c               |     8 +-
 drivers/staging/wlan-ng/Kconfig                    |     2 +-
 drivers/staging/wlan-ng/hfa384x.h                  |     4 +-
 drivers/staging/wlan-ng/hfa384x_usb.c              |     2 +-
 drivers/tty/vt/selection.c                         |    46 +-
 drivers/tty/vt/vt.c                                |     7 +-
 include/dt-bindings/iio/temperature/thermocouple.h |    16 +
 include/linux/counter.h                            |   510 +
 include/linux/counter_enum.h                       |    45 +
 include/linux/fsl/ftm.h                            |    88 +
 include/linux/iio/adc/ad_sigma_delta.h             |     1 +
 include/linux/iio/driver.h                         |     1 +
 include/linux/iio/frequency/ad9523.h               |     8 +-
 include/linux/iio/gyro/itg3200.h                   |     1 +
 include/linux/iio/iio.h                            |     4 +-
 include/linux/iio/imu/adis.h                       |    14 +
 include/linux/iio/timer/stm32-timer-trigger.h      |    11 +-
 include/linux/selection.h                          |     7 +-
 929 files changed, 22720 insertions(+), 134361 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-counter
 create mode 100644 Documentation/ABI/testing/sysfs-bus-counter-104-quad-8
 create mode 100644 Documentation/ABI/testing/sysfs-bus-counter-ftm-quaddec
 rename {drivers/staging/iio/Documentation =3D> Documentation/ABI/testing}/=
sysfs-bus-iio-impedance-analyzer-ad5933 (56%)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-temperature-max=
31856
 create mode 100644 Documentation/devicetree/bindings/counter/ftm-quaddec.t=
xt
 rename Documentation/devicetree/bindings/{iio =3D> }/counter/stm32-lptimer=
-cnt.txt (75%)
 create mode 100644 Documentation/devicetree/bindings/counter/stm32-timer-c=
nt.txt
 create mode 100644 Documentation/devicetree/bindings/fieldbus/arcx,anybus-=
controller.txt
 create mode 100644 Documentation/devicetree/bindings/iio/accel/kionix,kxcj=
k1013.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/avia-hx711.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/avia-hx711.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti-ads8344.txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/bmg160.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/nxp,fxa=
s21002c.txt
 create mode 100644 Documentation/devicetree/bindings/iio/imu/adi,adis16480=
.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/vcnl4000.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/pressure/bmp085.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/pressure/bmp085.y=
aml
 delete mode 100644 Documentation/devicetree/bindings/iio/proximity/devante=
ch-srf04.txt
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/devante=
ch-srf04.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/maxboti=
x,mb1232.txt
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/max31=
856.txt
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/tempe=
rature-bindings.txt
 create mode 100644 Documentation/driver-api/generic-counter.rst
 create mode 100644 drivers/counter/104-quad-8.c
 create mode 100644 drivers/counter/Kconfig
 create mode 100644 drivers/counter/Makefile
 create mode 100644 drivers/counter/counter.c
 create mode 100644 drivers/counter/ftm-quaddec.c
 create mode 100644 drivers/counter/stm32-lptimer-cnt.c
 create mode 100644 drivers/counter/stm32-timer-cnt.c
 rename drivers/{staging =3D> }/iio/adc/ad7780.c (63%)
 create mode 100644 drivers/iio/adc/ti-ads8344.c
 delete mode 100644 drivers/iio/counter/104-quad-8.c
 delete mode 100644 drivers/iio/counter/Kconfig
 delete mode 100644 drivers/iio/counter/Makefile
 delete mode 100644 drivers/iio/counter/stm32-lptimer-cnt.c
 create mode 100644 drivers/iio/gyro/fxas21002c.h
 create mode 100644 drivers/iio/gyro/fxas21002c_core.c
 create mode 100644 drivers/iio/gyro/fxas21002c_i2c.c
 create mode 100644 drivers/iio/gyro/fxas21002c_spi.c
 rename drivers/iio/imu/{adis16400_core.c =3D> adis16400.c} (77%)
 delete mode 100644 drivers/iio/imu/adis16400.h
 delete mode 100644 drivers/iio/imu/adis16400_buffer.c
 create mode 100644 drivers/iio/proximity/mb1232.c
 create mode 100644 drivers/iio/temperature/max31856.c
 create mode 100644 drivers/staging/fieldbus/Documentation/ABI/fieldbus-dev=
-cdev
 create mode 100644 drivers/staging/fieldbus/Documentation/ABI/sysfs-class-=
fieldbus-dev
 create mode 100644 drivers/staging/fieldbus/Documentation/fieldbus_dev.txt
 create mode 100644 drivers/staging/fieldbus/Kconfig
 create mode 100644 drivers/staging/fieldbus/Makefile
 create mode 100644 drivers/staging/fieldbus/TODO
 create mode 100644 drivers/staging/fieldbus/anybuss/Kconfig
 create mode 100644 drivers/staging/fieldbus/anybuss/Makefile
 create mode 100644 drivers/staging/fieldbus/anybuss/anybuss-client.h
 create mode 100644 drivers/staging/fieldbus/anybuss/anybuss-controller.h
 create mode 100644 drivers/staging/fieldbus/anybuss/arcx-anybus.c
 create mode 100644 drivers/staging/fieldbus/anybuss/hms-profinet.c
 create mode 100644 drivers/staging/fieldbus/anybuss/host.c
 create mode 100644 drivers/staging/fieldbus/dev_core.c
 create mode 100644 drivers/staging/fieldbus/fieldbus_dev.h
 create mode 100644 drivers/staging/kpc2000/Kconfig
 create mode 100644 drivers/staging/kpc2000/Makefile
 create mode 100644 drivers/staging/kpc2000/TODO
 create mode 100644 drivers/staging/kpc2000/kpc.h
 create mode 100644 drivers/staging/kpc2000/kpc2000/Makefile
 create mode 100644 drivers/staging/kpc2000/kpc2000/cell_probe.c
 create mode 100644 drivers/staging/kpc2000/kpc2000/core.c
 create mode 100644 drivers/staging/kpc2000/kpc2000/dma_common_defs.h
 create mode 100644 drivers/staging/kpc2000/kpc2000/fileops.c
 create mode 100644 drivers/staging/kpc2000/kpc2000/kp2000_module.c
 create mode 100644 drivers/staging/kpc2000/kpc2000/pcie.h
 create mode 100644 drivers/staging/kpc2000/kpc2000/uapi.h
 create mode 100644 drivers/staging/kpc2000/kpc_dma/Makefile
 create mode 100644 drivers/staging/kpc2000/kpc_dma/dma.c
 create mode 100644 drivers/staging/kpc2000/kpc_dma/fileops.c
 create mode 100644 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
 create mode 100644 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
 create mode 100644 drivers/staging/kpc2000/kpc_dma/uapi.h
 create mode 100644 drivers/staging/kpc2000/kpc_i2c/Makefile
 create mode 100644 drivers/staging/kpc2000/kpc_i2c/fileops.c
 create mode 100644 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
 create mode 100644 drivers/staging/kpc2000/kpc_spi/Makefile
 create mode 100644 drivers/staging/kpc2000/kpc_spi/spi_driver.c
 create mode 100644 drivers/staging/kpc2000/kpc_spi/spi_parts.h
 create mode 100644 drivers/staging/most/Documentation/ABI/configfs-most.txt
 create mode 100644 drivers/staging/most/configfs.c
 delete mode 100644 drivers/staging/mt7621-mmc/Kconfig
 delete mode 100644 drivers/staging/mt7621-mmc/Makefile
 delete mode 100644 drivers/staging/mt7621-mmc/TODO
 delete mode 100644 drivers/staging/mt7621-mmc/board.h
 delete mode 100644 drivers/staging/mt7621-mmc/dbg.c
 delete mode 100644 drivers/staging/mt7621-mmc/dbg.h
 delete mode 100644 drivers/staging/mt7621-mmc/mt6575_sd.h
 delete mode 100644 drivers/staging/mt7621-mmc/sd.c
 create mode 100644 drivers/staging/octeon/TODO
 rename drivers/staging/{rtlwifi/phydm/phydm_features.h =3D> rtl8188eu/incl=
ude/phydm_reg.h} (72%)
 create mode 100644 drivers/staging/rtl8188eu/include/phydm_regdefine11n.h
 delete mode 100644 drivers/staging/rtl8192e/license
 delete mode 100644 drivers/staging/rtlwifi/Kconfig
 delete mode 100644 drivers/staging/rtlwifi/Makefile
 delete mode 100644 drivers/staging/rtlwifi/TODO
 delete mode 100644 drivers/staging/rtlwifi/base.c
 delete mode 100644 drivers/staging/rtlwifi/base.h
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/Makefile
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbt_precomp.h
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.h
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.h
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtc8822bwifionly.c
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtc8822bwifionly.h
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.c
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/halbtcoutsrc.h
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/rtl_btc.c
 delete mode 100644 drivers/staging/rtlwifi/btcoexist/rtl_btc.h
 delete mode 100644 drivers/staging/rtlwifi/cam.c
 delete mode 100644 drivers/staging/rtlwifi/cam.h
 delete mode 100644 drivers/staging/rtlwifi/core.c
 delete mode 100644 drivers/staging/rtlwifi/core.h
 delete mode 100644 drivers/staging/rtlwifi/debug.c
 delete mode 100644 drivers/staging/rtlwifi/debug.h
 delete mode 100644 drivers/staging/rtlwifi/efuse.c
 delete mode 100644 drivers/staging/rtlwifi/efuse.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_2_platform.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_8822b_cfg.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_8822b_phy.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_8822b_pwr_seq.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_8822b_pwr_seq.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b_pcie.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b_pcie.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b_sdio.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b_sdio.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b_usb.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_api_8822b_usb.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_func_8822b.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_8822b=
/halmac_func_8822b.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_88xx_=
cfg.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx_pcie.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx_pcie.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx_sdio.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx_sdio.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx_usb.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_api_8=
8xx_usb.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_=
88xx.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_88xx/halmac_func_=
88xx.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_api.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_api.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_bit2.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_bit_8822b.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_fw_info.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_fw_offload_c2h_ni=
c.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_fw_offload_h2c_ni=
c.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_h2c_extra_info_ni=
c.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_intf_phy_cmd.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_original_c2h_nic.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_original_h2c_nic.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_pwr_seq_cmd.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_reg2.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_reg_8822b.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_rx_bd_chip.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_rx_bd_nic.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_rx_desc_chip.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_rx_desc_nic.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_sdio_reg.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_tx_bd_chip.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_tx_bd_nic.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_tx_desc_chip.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_tx_desc_nic.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_type.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/halmac_usb_reg.h
 delete mode 100644 drivers/staging/rtlwifi/halmac/rtl_halmac.c
 delete mode 100644 drivers/staging/rtlwifi/halmac/rtl_halmac.h
 delete mode 100644 drivers/staging/rtlwifi/pci.c
 delete mode 100644 drivers/staging/rtlwifi/pci.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/halphyrf_ce.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/halphyrf_ce.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/mp_precomp.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_acs.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_acs.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_adaptivity.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_adaptivity.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_adc_sampling.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_antdiv.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_antdiv.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_beamforming.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_ccx.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_ccx.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_cfotracking.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_cfotracking.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_debug.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_debug.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dfs.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dig.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dig.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dynamic_rx_path.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dynamicbbpowersavin=
g.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dynamicbbpowersavin=
g.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dynamictxpower.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_dynamictxpower.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_edcaturbocheck.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_edcaturbocheck.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_hwconfig.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_interface.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_interface.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_iqk.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_kfree.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_kfree.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_noisemonitor.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_noisemonitor.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_powertracking_ce.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_powertracking_ce.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_pre_define.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_precomp.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_psd.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_psd.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_rainfo.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_rainfo.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_reg.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_regdefine11ac.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_regdefine11n.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/phydm_types.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halhwimg8822b_bb=
.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halhwimg8822b_bb=
.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halhwimg8822b_ma=
c.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halhwimg8822b_ma=
c.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halhwimg8822b_rf=
.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halhwimg8822b_rf=
.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halphyrf_8822b.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/halphyrf_8822b.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_hal_api882=
2b.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_hal_api882=
2b.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_iqk_8822b.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_regconfig8=
822b.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_regconfig8=
822b.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_rtl8822b.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/phydm_rtl8822b.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl8822b/version_rtl8822b=
.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl_phydm.c
 delete mode 100644 drivers/staging/rtlwifi/phydm/rtl_phydm.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/txbf/halcomtxbf.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/txbf/haltxbf8822b.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/txbf/haltxbfinterface.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/txbf/haltxbfjaguar.h
 delete mode 100644 drivers/staging/rtlwifi/phydm/txbf/phydm_hal_txbf_api.h
 delete mode 100644 drivers/staging/rtlwifi/ps.c
 delete mode 100644 drivers/staging/rtlwifi/ps.h
 delete mode 100644 drivers/staging/rtlwifi/pwrseqcmd.h
 delete mode 100644 drivers/staging/rtlwifi/rc.c
 delete mode 100644 drivers/staging/rtlwifi/rc.h
 delete mode 100644 drivers/staging/rtlwifi/regd.c
 delete mode 100644 drivers/staging/rtlwifi/regd.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/Makefile
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/def.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/fw.c
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/fw.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/hw.c
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/hw.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/led.c
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/led.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/phy.c
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/phy.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/reg.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/sw.c
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/sw.h
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/trx.c
 delete mode 100644 drivers/staging/rtlwifi/rtl8822be/trx.h
 delete mode 100644 drivers/staging/rtlwifi/stats.c
 delete mode 100644 drivers/staging/rtlwifi/stats.h
 delete mode 100644 drivers/staging/rtlwifi/wifi.h
 create mode 100644 include/dt-bindings/iio/temperature/thermocouple.h
 create mode 100644 include/linux/counter.h
 create mode 100644 include/linux/counter_enum.h
 create mode 100644 include/linux/fsl/ftm.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
