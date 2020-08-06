Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D5823DA53
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 14:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6ACA688523;
	Thu,  6 Aug 2020 12:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVKPcJF9yaWU; Thu,  6 Aug 2020 12:30:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C4DC884FD;
	Thu,  6 Aug 2020 12:30:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD2CC1BF3CD
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 12:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9ED24880F8
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 12:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mumzzGihjXeR for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 12:30:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5FC2088052
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 12:30:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D964221E2;
 Thu,  6 Aug 2020 12:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596717033;
 bh=E+UYP1zIxAZ6pXlE9Bmh9SFGi7m4ZwsvOAFnRnya7S8=;
 h=Date:From:To:Cc:Subject:From;
 b=QxorsUOyNqExhnw+Z4zwZiBJnXXIj8AigdVnjwfDx+wkmW4Gu1037oUQJtKV8hcZC
 UuiprgywUggoDQqgAz3VK0D598GhO11lvY8p37Dl71rOGkApl/6W61d9PIu4El8Tx9
 vNZk1gqR21BLLDGuywRfj7GS1vpS7xEgUX+ursgA=
Date: Thu, 6 Aug 2020 14:30:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver patches for 5.9-rc1
Message-ID: <20200806123047.GA2857204@kroah.com>
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

The following changes since commit 92ed301919932f777713b9172e525674157e983d:

  Linux 5.8-rc7 (2020-07-26 14:14:06 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.9-rc1

for you to fetch changes up to 5bbd90550da8f7bdac769b5825597e67183c9411:

  staging: most: fix up movement of USB driver (2020-08-02 12:47:40 +0200)

----------------------------------------------------------------
Staging/IIO driver patches for 5.9-rc1

Here is the large set of Staging and IIO driver patches for 5.9-rc1.

Lots of churn here, but overall the size increase in lines added is
small, while adding a load of new IIO drivers.

Major things in here:
	- lots and lots of IIO new drivers and frameworks added
	- IIO driver fixes and updates
	- lots of tiny coding style cleanups for staging drivers
	- vc04_services major reworks and cleanups

We had 3 set of drivers move out of staging in this round as well:
	- wilc1000 wireless driver moved out of staging
	- speakup moved out of staging
	- most USB driver moved out of staging

Full details are in the shortlog.

All of these have been in linux-next with no reported issues.  The last
few changes here were to resolve reported linux-next issues, and they
seem to have resolved the problems.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Aditya Jain (3):
      staging: rtl8723bs: Fix coding style errors
      staging: rtl8723bs: Clean up function declations
      staging: rtl8723bs: Align macro definitions

Ajay Singh (1):
      wilc1000: move wilc driver out of staging

Alexander A. Klimov (16):
      Staging: nvec: Replace HTTP links with HTTPS ones
      Staging: speakup: Replace HTTP links with HTTPS ones
      Replace HTTP links with HTTPS ones: Documentation/devicetree/bindings=
/iio
      Replace HTTP links with HTTPS ones: drivers/iio
      staging: Replace HTTP links with HTTPS ones
      staging: comedi: Replace HTTP links with HTTPS ones
      staging: comedi: cb: Replace HTTP links with HTTPS ones
      staging: comedi: adv: Replace HTTP links with HTTPS ones
      staging: comedi: adl: Replace HTTP links with HTTPS ones
      staging: comedi: pcm: Replace HTTP links with HTTPS ones
      staging: comedi: pcl: Replace HTTP links with HTTPS ones
      staging: comedi: ni: Replace HTTP links with HTTPS ones
      staging: comedi: dt: Replace HTTP links with HTTPS ones
      staging: comedi: das: Replace HTTP links with HTTPS ones
      staging: comedi: amplc: Replace HTTP links with HTTPS ones
      staging: comedi: addi: Replace HTTP links with HTTPS ones

Alexandre Belloni (2):
      dt-bindings: atmel-tcb: convert bindings to json-schema
      dt-bindings: microchip: atmel,at91rm9200-tcb: add sama5d2 compatible

Alexandru Ardelean (30):
      iio: light: tsl2563: pass iio device as i2c_client private data
      iio: light: iqs621: remove usage of iio_priv_to_dev()
      iio: position: iqs624: remove usage of iio_priv_to_dev()
      iio: humidity: hts221: remove usage of iio_priv_to_dev()
      iio: dac: ad5592r: remove usage of iio_priv_to_dev() helper
      iio: stm32-adc: remove usage of iio_priv_to_dev() helper
      iio: Kconfig: at91_adc: add COMPILE_TEST dependency to driver
      iio: core: pass parent device as parameter during allocation
      iio: core: add iio_device_set_parent() helper
      iio: remove explicit IIO device parent assignment
      iio: remove left-over comments about parent assignment
      iio: light: lm3533-als: use iio_device_set_parent() to assign parent
      iio: remove left-over parent assignments
      iio: stm32-dfsdm-adc: remove usage of iio_priv_to_dev() helper
      iio: at91_adc: remove usage of iio_priv_to_dev() helper
      iio: at91-sama5d2_adc: remove usage of iio_priv_to_dev() helper
      iio: core: wrap IIO device into an iio_dev_opaque object
      iio: core: remove padding from private information
      iio: core: move debugfs data on the private iio dev info
      iio: core: move channel list & group to private iio device object
      iio: core: move iio_dev's buffer_list to the private iio device object
      iio: core: move event interface on the opaque struct
      iio: adc: ti_am335x_adc: alloc channels via devm_kcalloc()
      iio: adc: ti_am335x_adc: alloc kfifo & IRQ via devm_ functions
      iio: core: remove iio_priv_to_dev() helper
      iio: buffer: fix attach/detach pollfunc order
      iio: adc: ad7192: move ad7192_of_match table closer to the end of the=
 file
      iio: adc: ad7124: move chip ID & name on the chip_info table
      iio: core: fix/re-introduce back parent assignment
      iio: dac: ad5592r: fix unbalanced mutex unlocks in ad5592r_read_raw()

Anant Thazhemadam (1):
      STAGING - REALTEK RTL8188EU DRIVERS: Fix Coding Style Error

Andy Shevchenko (3):
      iio: imu: inv_mpu6050: Drop double check for ACPI companion device
      staging: ks7010: Use %pM format specifier for MAC addresses
      staging: most: Use %pM format specifier for MAC addresses

Ankit Baluni (1):
      Staging: rtl8712: Fixed a coding sytle issue

Anmol Karn (1):
      staging: vc04_services: vchiq-mmal: Fixed tab styling issue in mmal-v=
chiq.c

Anoop S (1):
      Staging: rtl8188eu: core: Fix coding style issue

Arpitha Raghunandan (1):
      staging: rtl8188eu: core: fix coding style issues

Artur Rojek (5):
      dt-bindings: iio/adc: Convert ingenic-adc docs to YAML.
      IIO: Ingenic JZ47xx: Error check clk_enable calls.
      IIO: Ingenic JZ47xx: Add xlate cb to retrieve correct channel idx
      dt-bindings: iio/adc: Add touchscreen idx for JZ47xx SoC ADC
      IIO: Ingenic JZ47xx: Add touchscreen mode.

B K Karthik (4):
      staging: rtl8188eu: include: hal8188e_rate_adaptive.h: fixed a blank =
space coding style issue
      staging: rtl8188eu: include: odm.h: fixed a blank space coding style =
issue.
      staging: comedi: comedi_fops.c: added casts to get rid of sparse warn=
ings
      staging: rtl8188eu: include: fixed multiple blank space coding style =
issues

Baidyanath Kundu (1):
      Staging: vc04_services: Fix unsigned int warnings

Brooke Basile (4):
      staging: rtl8188eu: Fix comment formatting
      staging: rtl8188eu: Fix strings split across lines
      staging: rtl8188eu: Fix indentation
      staging: rtl8188eu: Replace function name with __func__

Christian Gromm (13):
      staging: most: cdev: remove noisy log messages
      staging: most: cdev: use dev_*() functions to print messages
      staging: most: cdev: remove overcautious parameter checking
      staging: most: cdev: fix up parenthesizing
      staging: most: cdev: fix return values
      staging: most: cdev: simplify list iteration
      staging: most: sound: remove noisy log messages
      staging: most: sound: fix error path
      staging: most: sound: fix return values
      staging: most: sound: fix white spaces
      staging: most: sound: remove overcautious argument checking
      staging: most: usb: remove NET dependency
      drivers: most: add USB adapter driver

Christian Oder (1):
      iio: accel: mxc4005: add support for mxc6655

Chuhong Yuan (1):
      iio: amplifiers: ad8366: Change devm_gpiod_get() to optional and add =
the missed check

Coiby Xu (4):
      staging: qlge: fix trailing */ in block comment
      staging: qlge: fix else after return or break
      staging: qlge: fix ql_sem_unlock
      staging: qlge: replace pr_err with netdev_err

Colin Ian King (5):
      staging: most: avoid null pointer dereference when iface is null
      staging: wfx: fix uninitialized variable bytes_done
      staging: rtl8192u: fix a dubious looking mask before a shift
      staging: unisys: visorhba: remove redundant initialization of variabl=
es scsicmd_id and rc
      staging: rtl8723bs: remove redundant assignment to variable ret

Dan Carpenter (1):
      staging: vchiq: Fix refcounting bug in buffer_from_host()

Dan Robertson (1):
      iio: accel: bma400: add support for bma400 spi

Darshan D V (2):
      staging: rtl8192e: add space before open parenthesis
      staging: rtl8192e: add proper code indent

Dave Stevenson (7):
      staging: mmal-vchiq: Allocate and free components as required
      staging: mmal-vchiq: Make timeout a defined parameter
      staging: mmal-vchiq: Make a mmal_buf struct for passing parameters
      staging: mmal-vchiq: Fixup vchiq-mmal include ordering
      staging: mmal-vchiq: Fix client_component for 64 bit kernel
      staging: mmal-vchiq: Always return the param size from param_get
      staging: mmal-vchiq: If the VPU returns an error, don't negate it

David Gow (1):
      clk: staging: Specify IOMEM dependency for Xilinx Clocking Wizard dri=
ver

Dhiraj Sharma (1):
      staging: qlge: qlge_dbg: removed comment repition

Diego Bienz (1):
      staging: qlge: qlge.h: remove unnecessary spaces

Dinghao Liu (1):
      Staging: rtl8188eu: rtw_mlme: Fix uninitialized variable authmode

Divyansh Kamboj (1):
      Staging: comedi: Added blank lines to fix coding style issue

Evgeny Novikov (2):
      staging: kpc2000: kpc_dma: set error code in probe
      staging: rts5208: fix memleaks on error handling paths in probe

Fox Chen (1):
      staging: rtl8723bs: Cleanup open brace issues

Garrit Franke (2):
      staging: comedi: fix up missing whitespace in comment
      trivial: staging: vc04_services: replace bitshift with BIT macro

Greg Kroah-Hartman (8):
      Merge 5.8-rc3 into staging-next
      Merge branch 'wilc1000-move-out-of-staging' of git://git.kernel.org/.=
../kvalo/wireless-drivers-next into staging-next
      staging: wilc1000: remove obsolete TODO file
      Merge tag 'iio-for-5.9a-take2' of git://git.kernel.org/.../jic23/iio =
into staging-next
      Merge 5.8-rc6 into staging-next
      Merge tag 'iio-for-5.9b' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      Merge 5.8-rc7 into staging-next
      staging: most: fix up movement of USB driver

Gustavo A. R. Silva (13):
      staging: rts5208: Use array_size() helper in vmalloc() and memset()
      staging: vt6655: Use fallthrough pseudo-keyword
      staging: rtl8188eu: Use fallthrough pseudo-keyword
      staging: rts5208: Assign array_size() to a variable
      staging: rtl8192e: Use fallthrough pseudo-keyword
      staging: gdm724x: Use fallthrough pseudo-keyword
      staging: rtl8723bs: Use fallthrough pseudo-keyword
      staging: ks7010: Use fallthrough pseudo-keyword
      staging: rtl8712: Use fallthrough pseudo-keyword
      staging: comedi: s526: Use fallthrough pseudo-keyword
      staging: qlge: Use fallthrough pseudo-keyword
      staging: vc04_services: Use fallthrough pseudo-keyword
      staging: wfx: Use flex_array_size() helper in memcpy()

Gwendal Grignou (2):
      iio: cros_ec: Reapply range at resume
      iio: cros_ec_accel_legacy: Add Read Only frequency entries

Heiko Stuebner (2):
      iio: adc: rockchip_saradc: move all of probe to devm-functions
      iio: adc: rockchip_saradc: better prefix for channel constant

Icenowy Zheng (1):
      iio: light: stk3310: add chip id for STK3311-X variant

Ioana Ciornei (12):
      staging: dpaa2-ethsw: fix reported link state
      staging: dpaa2-ethsw: ignore state interrupts when the interface is n=
ot running
      staging: dpaa2-ethsw: use netif_running when checking for port up
      staging: dpaa2-ethsw: disable switch ports are probe time
      staging: dpaa2-ethsw: store version information of the DPSW object
      staging: dpaa2-ethsw: setup MAC address of switch netdevices
      staging: dpaa2-ethsw: verify the nofifier block
      staging: dpaa2-ethsw: don't allow interfaces from different DPSWs to =
be bridged
      staging: dpaa2-ethsw: setup the STP state for all installed VLANs
      staging: dpaa2-ethsw: destroy workqueue after deregistering the notif=
iers
      staging: dpaa2-ethsw: read the port state from firmware
      staging: dpaa2-ethsw: check if there is space for a new VLAN

Ivan Safonov (5):
      staging:r8723bs: remove wrappers around skb_clone() and remove unnece=
ssary in_interrupt() call
      staging:rtl8712: avoid skb_clone after skb allocation fail
      staging: r8188eu: remove unused members of struct xmit_buf
      staging: r8188eu: use proper type for second argiment of rtw_(aes|tki=
p|wep)_(decrypt|encrypt)
      staging: r8188eu: replace rtw_netdev_priv define with inline function

Jacopo Mondi (1):
      staging: bcm2835: Break MMAL support out from camera

Jean-Baptiste Maneyrol (13):
      iio: imu: inv_icm42600: add core of new inv_icm42600 driver
      iio: imu: inv_icm42600: add I2C driver for inv_icm42600 driver
      iio: imu: inv_icm42600: add SPI driver for inv_icm42600 driver
      iio: imu: inv_icm42600: add gyroscope IIO device
      iio: imu: inv_icm42600: add accelerometer IIO device
      iio: imu: inv_icm42600: add temperature sensor support
      iio: imu: add Kconfig and Makefile for inv_icm42600 driver
      Documentation: ABI: add specific icm42600 documentation
      iio: imu: inv_icm42600: add device interrupt
      iio: imu: inv_icm42600: add buffer support in iio devices
      iio: imu: inv_icm42600: add accurate timestamping
      dt-bindings: iio: imu: Add inv_icm42600 documentation
      MAINTAINERS: add entry for inv_icm42600 6-axis imu sensor

Jil Rouceau (1):
      staging: qlge: qlge_main.c: fixed spaces coding style issues

Jishnu Prakash (7):
      iio: adc: Convert the QCOM SPMI ADC bindings to .yaml format
      iio: adc: Add PMIC7 ADC bindings
      iio: adc: Add info property under adc_data
      iio: adc: Add support for PMIC7 ADC
      iio: adc: Update return value checks
      iio: adc: Update debug prints
      iio: adc: Combine read functions for PMIC5 and PMIC7

Joe Perches (1):
      staging: rtl*/security: Use static const in array declarations

John Oldman (3):
      staging: rtl8192u: Using comparison to true is error prone
      staging: rtl8723bs: Using comparison to true is error prone
      staging: rtl8712/: Using comparison to true is error prone

Jonathan Albrieux (9):
      dt-bindings: iio: magnetometer: ak8975: reword gpios, add interrupts,=
 fix style
      dt-bindings: iio: magnetometer: ak8975: convert format to yaml, add m=
aintainer
      dt-bindings: iio: magnetometer: ak8975: add gpio reset support
      iio: magnetometer: ak8975: Fix typo, uniform measurement unit style
      iio: magnetometer: ak8975: Add gpio reset support
      dt-bindings: iio: imu: bmi160: add regulators and mount-matrix
      iio: imu: bmi160: fix typo
      iio: imu: bmi160: added regulator support
      iio: imu: bmi160: added mount-matrix support

Jonathan Cameron (24):
      iio: make iio_device_get_drvdata take a const struct iio_dev *.
      iio:adc:lpc32xx: Drop of_match_ptr protection
      iio:adc:hi8435: Drop unused of_gpio.h header
      iio:adc:hi8435: Drop of_match_ptr protection.
      iio:adc:max1363: Drop of_match_ptr and use generic device_get_match_d=
ata
      iio:adc:max1027: drop of_match_ptr and CONFIG_OF protections
      iio:adc:ltc2496: Drop of_match_ptr and use mod_devicetable.h
      iio:adc:cpcap-adc: Drop of_match_ptr protection and use device_get_ma=
tch_data
      iio:adc:ltc2497 drop of_match_ptr protection
      iio:adc:max11100: Drop of_match_ptr protection / add mod_devicetable.=
h include
      iio:adc:max1118: Drop CONFIG_OF / of_match_ptr protections
      iio:adc:mcp320x: Drop CONFIG_OF and of_match_ptr protections
      iio:adc:mcp3422: remove CONFIG_OF and of_match_ptr protections
      iio:adc:sd_adc_modulator: Drop of_match_ptr and tweak includes
      iio:adc:ti-adc081c: Drop of_match_ptr and change to mod_devicetable.h
      iio:adc:ti-adc0832: drop CONFIG_OF and of_match_ptr protections
      iio:adc:ti-adc084s021: drop of_match_ptr protection
      iio:adc:ti-adc161s626: Drop of_match_ptr protection.
      iio:adc:ti-tlc4541: Drop CONFIG_OF and of_match_ptr protections.
      iio:adc:ingenic: drop of_match_ptr protection and include mod_devicet=
able.h
      dt-bindings: iio: accel: kionix,kxsd9 yaml conversion.
      dt-bindings: iio: ti,ads8688 yaml conversion
      Merge branch 'ib-5.8-jz47xx-ts' into HEAD Immutable branch may be nee=
ded in input for a joystick set that is dependent on it.
      Merge branch 'ib-5.8-tcb' into HEAD

Julius Hemanth Pitti (1):
      staging: wfx: make methods 'wfx_get_ps_timeout' and 'wfx_update_pm' s=
tatic

J=E9r=F4me Pouiller (13):
      staging: wfx: associate tx_queues to vifs
      staging: wfx: check the vif ID of the Tx confirmations
      staging: wfx: correctly retrieve vif ID from Tx confirmation
      staging: wfx: add tracepoint "queues_stats"
      staging: wfx: load the firmware faster
      staging: wfx: improve protection against malformed HIF messages
      staging: wfx: fix unexpected calls to ieee80211_sta_set_buffered()
      staging: wfx: drop counter of buffered frames
      staging: wfx: fix handling of frames without RSSI data
      staging: wfx: simplify handling of encrypted frames
      staging: wfx: fix CCMP/TKIP replay protection
      staging: wfx: add a debugfs entry to force ps_timeout
      staging: wfx: always enable FastPs in combo with new firmwares

Kamel Bouhara (3):
      ARM: at91: add atmel tcb capabilities
      dt-bindings: counter: microchip-tcb-capture counter
      counter: Add microchip TCB capture counter

Keyur Patel (1):
      iio: cros_ec: fix spelling mistake

Krzysztof Kozlowski (2):
      dt-bindings: iio: bmc150_magn: Document and fix missing compatibles
      iio: magnetometer: bmc150: Add proper compatible for BMM150

Lars-Peter Clausen (2):
      iio: Remove superfluous of_node assignments
      iio: Move attach/detach of the poll func to the core

Lee Jones (51):
      iio: adc: ad_sigma_delta: Remove unused variable 'ret'
      iio: accel: bma220_spi: Do not define 'struct acpi_device_id' when !C=
ONFIG_ACPI
      iio: common: ms_sensors: ms_sensors_i2c: Fix misspelling of parameter=
 'client'
      iio: adc: ad7298: Demote obvious misuse of kerneldoc to standard comm=
ent blocks
      iio: adc: ad7923: Demote obvious misuse of kerneldoc to standard comm=
ent blocks
      iio: dac: ad5360: Fix kerneldoc attribute formatting for 'lock'
      iio: dac: ad5380: Fix kerneldoc attribute formatting for 'lock'
      iio: dummy: iio_simple_dummy: Demote unworthy kerneldocs and correct =
wrong parameter in docs
      iio: dummy: iio_simple_dummy: Add newline after function-end
      iio: dac: ad5421: Fix kerneldoc attribute formatting for 'lock'
      iio: dummy: iio_simple_dummy_events: Demote file header and supply de=
scriptions for val2 params
      iio: dac: ad5064: Value returned by ad5064_vref_name may not be 'cons=
t * const'
      iio: adc: ad7887: Demote seemingly unintentional kerneldoc header
      iio: dummy: iio_simple_dummy_buffer: Demote file header and correct m=
isspelling
      iio: dac: ad5446: Complete 'struct ad5446_state' doc and demote unwor=
thy kerneldocs
      iio: dac: ad5449: Fix kerneldoc attribute formatting for 'lock'
      iio: dac: ad5755: Fix kerneldoc attribute formatting for 'lock'
      iio: dac: ad5758: Move and fix-up kerneldoc header and demote unworth=
y kerneldoc
      iio: dac: ad5761: Fix kerneldoc attribute formatting for 'lock'
      iio: dac: ad5764: Fix misdocumenting and formatting error
      iio: dac: ad5791: Complete 'struct ad5791_chip_info' documentation
      iio: light: cm32181: Fix formatting and docrot issues in cm32181_acpi=
_get_cpm()
      iio: magnetometer: mmc35240: Fix function header formatting
      iio: imu: kmx61: Fix formatting in kerneldoc function headers
      iio: adc: ti_am335x_adc: Remove a couple of unused 'read' variables
      iio: adc: twl4030-madc: Remove set but unused variables 'len'
      iio: adc: twl4030-madc: Fix misnamed struct attribute
      iio: magnetometer: hmc5843: 'hmc5843_pm_ops' is unused in 1 of 3 file=
s including hmc5843_core.h
      iio: adc: twl6030-gpadc: Fix some misdocumentation and formatting iss=
ues
      iio: dac: ltc2632: Fix formatting in kerneldoc struct header
      iio: light: si1145: Demote obvious misuse of kerneldoc to standard co=
mment blocks
      iio: temperature: mlx90632: Function parameter descriptions must matc=
h exactly
      iio: light: us5182d: Fix formatting in kerneldoc function block
      iio: adc: ad799x: Demote seemingly unintentional kerneldoc header
      iio: dac: ad5504: Fix formatting errors and demote non-compliant kern=
eldoc
      iio: adc: at91_adc: Fix 'bad line' warning
      iio: adc: at91-sama5d2_adc: Struct kerneldoc titles need to start wit=
h 'struct '
      iio: adc: cpcap-adc: Demote seemingly unintentional kerneldoc header
      iio: accel: sca3000: Fix 2 misspellings and demote nonconforming kern=
eldocs
      iio: gyro: fxas21002c: Move 'fxas21002c_reg_fields' to the only file =
its used
      iio: imu: st_lsm6dsx: st_lsm6dsx: Reorder 'inline' declaration
      iio: adc: max1363: Fix kerneldoc attribute formatting for 'lock'
      iio: adc: max9611: Demote obvious misuse of kerneldoc to standard com=
ment blocks
      iio: adc: palmas_gpadc: Demote non-conforming kerneldoc header
      iio: imu: inv_mpu6050: inv_mpu_core: Demote obvious misuse of kerneld=
oc to standard comment blocks
      iio: imu: inv_mpu6050: inv_mpu_ring: Demote seemingly unintentional k=
erneldoc header
      iio: adc: qcom-pm8xxx-xoadc: Demote standard comment block and supply=
 missing description
      iio: magnetometer: ak8974: Add description for ak8974's 'scan' attrib=
ute
      iio: imu: st_lsm6dsx: st_lsm6dsx_shub: Demote obvious misuse of kerne=
ldoc to standard comment blocks
      iio: imu: st_lsm6dsx: st_lsm6dsx: Mark 'st_lsm6dsx_accel_ext_info' as=
 __maybe_unused
      iio: adc: rockchip_saradc: Demote seemingly unintentional kerneldoc h=
eader

Linus Walleij (2):
      staging: wfx: Get descriptors for GPIOs
      staging: greybus: gpio: Use irqchip template

Lorenzo Bianconi (1):
      iio: imu: st_lsm6dsx: reset hw ts after resume

Luc Van Oostenryck (1):
      staging: ks7010: fix ks_wlan_start_xmit()'s return type

Ludovic Desroches (1):
      MAINTAINERS: adc: at91-sama5d2_adc: remove myself as co-maintainer

Marek Szyprowski (2):
      staging: ion: remove dead code
      staging: ion: fix common struct sg_table related issues

Marian Posteuca (1):
      staging: dpaa2-ethsw: fix switch/case fallthrough warning

Matt Ranostay (1):
      iio: chemical: atlas-ezo-sensor: move ret variable scope in atlas_ezo=
_read_raw()

Mauro Dreissig (8):
      staging: rtl8712: Replace FIELD_OFFSET() with offsetof()
      staging: rtl8712: base_types: Remove unused macros
      staging: rtl8712: Annotate r8712_sitesurvey_cmd()
      staging: rtl8712: Replace constant 49152 with expression 48 * 1024
      staging: rtl8712: Simplify expressions with boolean logic
      staging: rtl8712: Use ETH_ALEN instead of hardcoded value
      staging: rtl8712: Remove variable 'raw' from rtl871x_open_fw()
      staging: rtl8712: Use proper format in call to dev_err()

Michael Straube (17):
      staging: rtl8188eu: use common packet header constants
      staging: rtl8188eu: remove blank lines in header files
      staging: rtl8188eu: remove unnecessary comments in hal8188e_phy_cfg.h
      staging: rtl8188eu: use compound assignment operators
      staging: rtl8188eu: add spaces around operators
      staging: rtl8188eu: remove some ieee80211 constants from wifi.h
      staging: rtl8723bs: remove some ieee80211 constants from wifi.h
      staging: rtl8712: remove some ieee80211 constants from wifi.h
      staging: rtl8188eu: remove unused parameter
      staging: rtl8188eu: use common ieee80211 constants
      staging: rtl8712: use common ieee80211 constants
      staging: rtl8192u: remove GPL boiler plate text
      staging: rtl8192u: remove copying file
      staging: rtl8188eu: clear tabstop style issues
      staging: rtl8188eu: add spaces around operators in header files
      staging: rtl8188eu: clear alignment style issues
      staging: rtl8188eu: cleanup whitespace in declarations

Mrinal Pandey (1):
      staging: rtl8188eu: Fix an indent coding style issue

Muhammad Usama Anjum (2):
      staging: octeon: Add the license identifier
      staging: octeon: Indent with tabs instead of spaces

Naushir Patuck (1):
      staging: mmal-vchiq: Fix formatting errors in mmal_parameters.h

Nicolas Saenz Julienne (39):
      staging: vchi: Get rid of all useless callback reasons
      staging: vchi: Get rid of vchi_msg_peek()
      staging: vchi: Get rid of struct vchi_instance_handle
      staging: vchi: Unify struct shim_service and struct vchi_service_hand=
le
      staging: vc04_services: bcm2835-audio: Use vchi_msg_hold()
      staging: vchi: Get rid of vchi_msg_dequeue()
      staging: vchi_common: Get rid of all unused definitions
      staging: vchi: Get rid of unnecessary defines
      staging: vc04_services: Get rid of vchi_cfg.h
      staging: vchi: Get rid of flags argument in vchi_msg_hold()
      staging: vchi: Use enum vchiq_bulk_mode instead of vchi's transmissio=
n flags
      staging: vchi: Use vchiq's enum vchiq_reason
      staging: vchi: Get rid of effect less expression
      staging: vchiq: Introduce vchiq_validate_params()
      staging: vchiq: Move message queue into struct vchiq_service
      staging: vchiq: Get rid of vchiq_util.h
      staging: vchi: Expose struct vchi_service
      staging: vchiq: Export vchiq_get_service_userdata()
      staging: vchiq: Export vchiq_msg_queue_push
      staging: vchi: Get rid of vchiq_shim's message callback
      staging: vchiq: Don't use a typedef for vchiq_callback
      staging: vchi: Use struct vchiq_service_params
      staging: vchi: Get rid of struct vchi_service
      staging: vchiq: Pass vchiq's message when holding a message
      staging: vchi: Rework vchi_msg_hold() to match vchiq_msg_hold()
      staging: vchiq: Unify fourcc definition mechanisms
      staging: vchi: Get rid of struct vchiq_instance forward declaration
      staging: vchi: Don't include vchiq_core.h
      staging: vchiq: Get rid of unnecessary definitions in vchiq_if.h
      staging: vchiq: Make vchiq_add_service() local
      staging: vchiq: Move definitions only used by core into core header
      staging: vchi: Get rid of vchi_bulk_queue_receive()
      staging: vchi: Get rid of vchi_bulk_queue_transmit()
      staging: vchi: Move vchi_queue_kernel_message() into vchiq
      staging: vchiq: Get rid of vchi
      staging: vchiq: Move conditional barrier definition into vchiq_core.h
      staging: vchiq: Use vchiq.h as the main header file for services
      staging: vchiq: Move defines into core header
      staging: vchiq: Move vchiq.h into include directory

Nuno S=E1 (1):
      iio: adis16480: Use irq types instead of flags

Pascal Terjan (1):
      staging: rtl8712: switch to common ieee80211 headers

Paul Cercueil (1):
      iio/adc: ingenic: Retrieve channels list from soc data struct

Peilin Ye (1):
      Staging: rtl8188eu: Fix alignment coding style issue

Phil Elwell (1):
      staging: vchiq_arm: Add a matching unregister call

Priti Chattopadhyay (1):
      Staging: rtl8188eu: Fix a constant comparison coding style issue

Puranjay Mohan (1):
      staging: rtl8188eu: core: Fix coding style issue

Rahul Gottipati (1):
      staging: rtl8188eu: add blank line after declarations

Randy Dunlap (2):
      Documentation/driver-api: generic-counter: drop doubled word
      Documentation/driver-api: iio/buffers: drop doubled word

Rikard Falkeborn (5):
      iio: adc: max11100: Constify struct iio_chan_spec
      iio: dac: ad5380: Constify struct iio_chan_spec_ext_info
      iio: dac: ad5592r-base: Constify struct iio_chan_spec_ext_info
      iio: light: stk3310: Constify regmap_config
      iio: magnetometer: mmc35240: Constify struct reg_default

Rodolfo C. Villordo (2):
      staging: gasket: replace symbolic permissions
      drivers: staging: vt6655: replace CamelCase names on function s_uGetR=
TSCTSRsvTime

Rustam Kovhaev (1):
      staging: rtl8712: handle firmware load failure

Samuel Thibault (2):
      staging/speakup: Update TODO list
      staging/speakup: Move out of staging

Sebastian Arriola (1):
      staging: rtl8712: Remove unnecesary else after return statement.

Simon Fong (3):
      staging: rtl8188eu: core: Fix WARNING of Block comments
      staging: rtl8188eu: Fix CHECK of coding style
      staging: rtl8188eu: Fix WARNINGs of Block comments

Simon Xue (1):
      iio: adc: rockchip_saradc: Add support iio buffers

Souptick Joarder (6):
      staging: gasket: Convert get_user_pages*() --> pin_user_pages*()
      staging: vc04_services: Convert get_user_pages*() --> pin_user_pages*=
()
      staging: kpc2000: kpc_dma: Unpin partial pinned pages
      staging: kpc2000: kpc_dma: Convert set_page_dirty() --> set_page_dirt=
y_lock()
      staging: kpc2000: kpc_dma: Convert get_user_pages() --> pin_user_page=
s()
      staging: kpc2000: kpc_dma: Remove additional goto statements

Sumera Priyadarsini (2):
      staging: wlan-ng: Fix alignment to match open parenthesis
      staging: wfx: Remove unnecessary return variable

Suraj Upadhyay (12):
      staging: qlge: qlge_ethtool.c: Proper indentation.
      staging: rtl8192e: rtl8192E_dev: Remove pci-dma-compat wrapper APIs.
      staging: rtl8192e: rtl_core: Remove pci-dma-compat wrapper APIs.
      staging: qlge: Remove pci-dma-compat wrapper APIs.
      staging: qlge: qlge.h: Function definition arguments should have name=
s.
      staging: qlge: qlge.h: Insert line after declaration.
      staging: qlge: qlge_dbg: Simplify while statements
      staging: qlge: qlge_mpi: Simplify while statements.
      staging: qlge: qlge_ethtool: Remove one byte memset.
      staging: comedi: s626: Remove pci-dma-compat wrapper APIs.
      staging: qlge/qlge_main.c: Replace depracated MSI API.
      staging: rts5208: rtsx: Replace depracated MSI API

Suren Baghdasaryan (1):
      staging: android: ashmem: Fix lockdep warning for write operation

Tomasz Duszynski (5):
      iio: improve IIO_CONCENTRATION channel type description
      iio: chemical: scd30: add core driver
      iio: chemical: scd30: add I2C interface driver
      iio: chemical: scd30: add serial interface driver
      dt-bindings: iio: scd30: add device binding file

Tomer Samara (2):
      staging: netlogic: clear alignment style issues
      staging: rts5208: clear alignment style issues

Vaibhav Agarwal (7):
      staging: greybus: audio: Update snd_jack FW usage as per new APIs
      staging: greybus: audio: Maintain jack list within GB Audio module
      staging: greybus: audio: Resolve compilation errors for GB codec modu=
le
      staging: greybus: audio: Resolve compilation error in topology parser
      staging: greybus: audio: Add helper APIs for dynamic audio modules
      staging: greybus: audio: Enable GB codec, audio module compilation.
      drivers: staging: audio: Fix the missing header file for helper file

Vaibhav Gupta (5):
      staging: rtl8192e: use generic power management
      staging: rts5208/rtsx.c: use generic power management
      staging: vt6655/device_main.c: use generic power management
      staging: qlge/qlge_main.c: use generic power management
      staging: sm750fb: use generic power management

Zhixu Zhao (1):
      staging: gasket: core: Fix a coding style issue in gasket_core.c

 .../ABI/stable}/sysfs-driver-speakup               |   0
 Documentation/ABI/testing/sysfs-bus-iio            |   3 +-
 Documentation/ABI/testing/sysfs-bus-iio-icm42600   |  20 +
 Documentation/ABI/testing/sysfs-bus-iio-scd30      |  34 +
 .../admin-guide}/spkguide.txt                      |   2 +-
 .../devicetree/bindings/iio/accel/adi,adxl345.yaml |   4 +-
 .../devicetree/bindings/iio/accel/kionix,kxsd9.txt |  22 -
 .../bindings/iio/accel/kionix,kxsd9.yaml           |  65 ++
 .../devicetree/bindings/iio/adc/ingenic,adc.txt    |  49 --
 .../devicetree/bindings/iio/adc/ingenic,adc.yaml   |  71 ++
 .../devicetree/bindings/iio/adc/qcom,spmi-vadc.txt | 173 -----
 .../bindings/iio/adc/qcom,spmi-vadc.yaml           | 278 +++++++
 .../devicetree/bindings/iio/adc/ti,ads8688.yaml    |  45 ++
 .../devicetree/bindings/iio/adc/ti-ads8688.txt     |  20 -
 .../bindings/iio/chemical/sensirion,scd30.yaml     |  68 ++
 .../devicetree/bindings/iio/dac/ti,dac7612.txt     |   2 +-
 .../devicetree/bindings/iio/iio-bindings.txt       |   2 +-
 .../devicetree/bindings/iio/imu/bosch,bmi160.yaml  |  14 +
 .../bindings/iio/imu/invensense,icm42600.yaml      |  90 +++
 .../devicetree/bindings/iio/light/apds9300.txt     |   2 +-
 .../devicetree/bindings/iio/light/apds9960.txt     |   2 +-
 .../devicetree/bindings/iio/light/opt3001.txt      |   2 +-
 .../devicetree/bindings/iio/light/vl6180.txt       |   2 +-
 .../bindings/iio/magnetometer/ak8975.txt           |  30 -
 .../iio/magnetometer/asahi-kasei,ak8975.yaml       |  83 +++
 .../bindings/iio/magnetometer/bmc150_magn.txt      |   6 +-
 .../bindings/iio/potentiometer/mcp41010.txt        |   2 +-
 .../bindings/iio/potentiostat/lmp91000.txt         |   4 +-
 .../bindings/iio/pressure/asc,dlhl60d.yaml         |   2 +-
 .../bindings/iio/proximity/devantech-srf04.yaml    |   4 +-
 .../devicetree/bindings/mfd/atmel-tcb.txt          |  56 --
 .../bindings/net/wireless}/microchip,wilc1000.yaml |   0
 .../soc/microchip/atmel,at91rm9200-tcb.yaml        | 181 +++++
 Documentation/driver-api/generic-counter.rst       |   2 +-
 Documentation/driver-api/iio/buffers.rst           |   2 +-
 MAINTAINERS                                        |  52 +-
 drivers/accessibility/Kconfig                      |   2 +
 drivers/accessibility/Makefile                     |   1 +
 .../speakup/DefaultKeyAssignments                  |   0
 drivers/{staging =3D> accessibility}/speakup/Kconfig |   0
 .../{staging =3D> accessibility}/speakup/Makefile    |   0
 drivers/accessibility/speakup/TODO                 |  22 +
 .../{staging =3D> accessibility}/speakup/buffers.c   |   0
 .../{staging =3D> accessibility}/speakup/devsynth.c  |   0
 .../{staging =3D> accessibility}/speakup/fakekey.c   |   0
 drivers/{staging =3D> accessibility}/speakup/i18n.c  |   0
 drivers/{staging =3D> accessibility}/speakup/i18n.h  |   0
 .../{staging =3D> accessibility}/speakup/keyhelp.c   |   0
 .../{staging =3D> accessibility}/speakup/kobjects.c  |   0
 drivers/{staging =3D> accessibility}/speakup/main.c  |   0
 .../{staging =3D> accessibility}/speakup/selection.c |   0
 .../{staging =3D> accessibility}/speakup/serialio.c  |   0
 .../{staging =3D> accessibility}/speakup/serialio.h  |   0
 .../{staging =3D> accessibility}/speakup/speakup.h   |   0
 .../speakup/speakup_acnt.h                         |   0
 .../speakup/speakup_acntpc.c                       |   0
 .../speakup/speakup_acntsa.c                       |   0
 .../speakup/speakup_apollo.c                       |   0
 .../speakup/speakup_audptr.c                       |   0
 .../speakup/speakup_bns.c                          |   0
 .../speakup/speakup_decext.c                       |   0
 .../speakup/speakup_decpc.c                        |   0
 .../speakup/speakup_dectlk.c                       |   0
 .../speakup/speakup_dtlk.c                         |   0
 .../speakup/speakup_dtlk.h                         |   0
 .../speakup/speakup_dummy.c                        |   0
 .../speakup/speakup_keypc.c                        |   0
 .../speakup/speakup_ltlk.c                         |   0
 .../speakup/speakup_soft.c                         |   0
 .../speakup/speakup_spkout.c                       |   0
 .../speakup/speakup_txprt.c                        |   0
 .../speakup/speakupmap.h                           |   0
 .../speakup/speakupmap.map                         |   0
 .../{staging =3D> accessibility}/speakup/spk_priv.h  |   0
 .../speakup/spk_priv_keyinfo.h                     |   0
 .../{staging =3D> accessibility}/speakup/spk_ttyio.c |   0
 .../{staging =3D> accessibility}/speakup/spk_types.h |   0
 drivers/{staging =3D> accessibility}/speakup/synth.c |   0
 .../{staging =3D> accessibility}/speakup/thread.c    |   0
 .../speakup/varhandlers.c                          |   0
 drivers/counter/104-quad-8.c                       |   1 -
 drivers/counter/Kconfig                            |  11 +
 drivers/counter/Makefile                           |   1 +
 drivers/counter/microchip-tcb-capture.c            | 397 ++++++++++
 drivers/counter/stm32-lptimer-cnt.c                |   1 -
 drivers/iio/accel/Kconfig                          |   8 +-
 drivers/iio/accel/Makefile                         |   1 +
 drivers/iio/accel/adis16201.c                      |   1 -
 drivers/iio/accel/adis16209.c                      |   1 -
 drivers/iio/accel/adxl345_core.c                   |   3 +-
 drivers/iio/accel/adxl372.c                        |  21 +-
 drivers/iio/accel/bma180.c                         |   1 -
 drivers/iio/accel/bma220_spi.c                     |   3 +-
 drivers/iio/accel/bma400_core.c                    |   1 -
 drivers/iio/accel/bma400_spi.c                     | 120 ++++
 drivers/iio/accel/bmc150-accel-core.c              |   5 +-
 drivers/iio/accel/cros_ec_accel_legacy.c           |  46 +-
 drivers/iio/accel/da280.c                          |   1 -
 drivers/iio/accel/da311.c                          |   1 -
 drivers/iio/accel/dmard06.c                        |   1 -
 drivers/iio/accel/dmard09.c                        |   1 -
 drivers/iio/accel/dmard10.c                        |   1 -
 drivers/iio/accel/hid-sensor-accel-3d.c            |   1 -
 drivers/iio/accel/kxcjk-1013.c                     |   3 -
 drivers/iio/accel/kxsd9.c                          |   3 -
 drivers/iio/accel/mc3230.c                         |   1 -
 drivers/iio/accel/mma7455_core.c                   |   1 -
 drivers/iio/accel/mma7660.c                        |   1 -
 drivers/iio/accel/mma8452.c                        |   1 -
 drivers/iio/accel/mma9551.c                        |   1 -
 drivers/iio/accel/mma9553.c                        |   1 -
 drivers/iio/accel/mxc4005.c                        |   3 +-
 drivers/iio/accel/mxc6255.c                        |   1 -
 drivers/iio/accel/sca3000.c                        |  13 +-
 drivers/iio/accel/ssp_accel_sensor.c               |   2 -
 drivers/iio/accel/st_accel_buffer.c                |  22 +-
 drivers/iio/accel/stk8312.c                        |   3 -
 drivers/iio/accel/stk8ba50.c                       |   3 -
 drivers/iio/adc/Kconfig                            |   3 +-
 drivers/iio/adc/ab8500-gpadc.c                     |   2 -
 drivers/iio/adc/ad7091r-base.c                     |   1 -
 drivers/iio/adc/ad7124.c                           |  74 +-
 drivers/iio/adc/ad7192.c                           |  19 +-
 drivers/iio/adc/ad7266.c                           |   4 -
 drivers/iio/adc/ad7291.c                           |   2 -
 drivers/iio/adc/ad7292.c                           |   1 -
 drivers/iio/adc/ad7298.c                           |  10 +-
 drivers/iio/adc/ad7476.c                           |   3 -
 drivers/iio/adc/ad7606.c                           |   4 +-
 drivers/iio/adc/ad7766.c                           |   3 -
 drivers/iio/adc/ad7768-1.c                         |   9 +-
 drivers/iio/adc/ad7780.c                           |   1 -
 drivers/iio/adc/ad7791.c                           |   2 -
 drivers/iio/adc/ad7793.c                           |   2 -
 drivers/iio/adc/ad7887.c                           |   7 +-
 drivers/iio/adc/ad7923.c                           |  10 +-
 drivers/iio/adc/ad7949.c                           |   4 +-
 drivers/iio/adc/ad799x.c                           |   4 +-
 drivers/iio/adc/ad_sigma_delta.c                   |  12 +-
 drivers/iio/adc/adi-axi-adc.c                      |   1 -
 drivers/iio/adc/aspeed_adc.c                       |   1 -
 drivers/iio/adc/at91-sama5d2_adc.c                 |  53 +-
 drivers/iio/adc/at91_adc.c                         |  33 +-
 drivers/iio/adc/axp20x_adc.c                       |   2 -
 drivers/iio/adc/axp288_adc.c                       |   1 -
 drivers/iio/adc/bcm_iproc_adc.c                    |   2 -
 drivers/iio/adc/berlin2-adc.c                      |   1 -
 drivers/iio/adc/cc10001_adc.c                      |   1 -
 drivers/iio/adc/cpcap-adc.c                        |  30 +-
 drivers/iio/adc/da9150-gpadc.c                     |   2 -
 drivers/iio/adc/dln2-adc.c                         |  13 +-
 drivers/iio/adc/envelope-detector.c                |   2 -
 drivers/iio/adc/ep93xx_adc.c                       |   1 -
 drivers/iio/adc/exynos_adc.c                       |   2 -
 drivers/iio/adc/fsl-imx25-gcq.c                    |   1 -
 drivers/iio/adc/hi8435.c                           |   8 +-
 drivers/iio/adc/hx711.c                            |   1 -
 drivers/iio/adc/imx7d_adc.c                        |   1 -
 drivers/iio/adc/ina2xx-adc.c                       |   4 +-
 drivers/iio/adc/ingenic-adc.c                      | 397 ++++++++--
 drivers/iio/adc/intel_mrfld_adc.c                  |   1 -
 drivers/iio/adc/lp8788_adc.c                       |   2 -
 drivers/iio/adc/lpc18xx_adc.c                      |   1 -
 drivers/iio/adc/lpc32xx_adc.c                      |   6 +-
 drivers/iio/adc/ltc2471.c                          |   1 -
 drivers/iio/adc/ltc2485.c                          |   1 -
 drivers/iio/adc/ltc2496.c                          |   4 +-
 drivers/iio/adc/ltc2497-core.c                     |   1 -
 drivers/iio/adc/ltc2497.c                          |   4 +-
 drivers/iio/adc/max1027.c                          |   7 +-
 drivers/iio/adc/max11100.c                         |   7 +-
 drivers/iio/adc/max1118.c                          |   8 +-
 drivers/iio/adc/max1241.c                          |   1 -
 drivers/iio/adc/max1363.c                          |  17 +-
 drivers/iio/adc/max9611.c                          |   6 +-
 drivers/iio/adc/mcp320x.c                          |  15 +-
 drivers/iio/adc/mcp3422.c                          |  12 +-
 drivers/iio/adc/mcp3911.c                          |   2 -
 drivers/iio/adc/men_z188_adc.c                     |   1 -
 drivers/iio/adc/meson_saradc.c                     |   2 -
 drivers/iio/adc/mt6577_auxadc.c                    |   1 -
 drivers/iio/adc/mxs-lradc-adc.c                    |   3 -
 drivers/iio/adc/nau7802.c                          |   2 -
 drivers/iio/adc/npcm_adc.c                         |   1 -
 drivers/iio/adc/palmas_gpadc.c                     |   4 +-
 drivers/iio/adc/qcom-pm8xxx-xoadc.c                |   5 +-
 drivers/iio/adc/qcom-spmi-adc5.c                   | 244 ++++++-
 drivers/iio/adc/qcom-spmi-iadc.c                   |   2 -
 drivers/iio/adc/qcom-spmi-vadc.c                   |   2 -
 drivers/iio/adc/qcom-vadc-common.c                 | 262 +++++++
 drivers/iio/adc/qcom-vadc-common.h                 |  15 +
 drivers/iio/adc/rcar-gyroadc.c                     |   2 -
 drivers/iio/adc/rn5t618-adc.c                      |   1 -
 drivers/iio/adc/rockchip_saradc.c                  | 221 ++++--
 drivers/iio/adc/sc27xx_adc.c                       |   1 -
 drivers/iio/adc/sd_adc_modulator.c                 |   7 +-
 drivers/iio/adc/spear_adc.c                        |   1 -
 drivers/iio/adc/stm32-adc.c                        | 155 ++--
 drivers/iio/adc/stm32-dfsdm-adc.c                  | 105 +--
 drivers/iio/adc/stmpe-adc.c                        |   1 -
 drivers/iio/adc/stx104.c                           |   1 -
 drivers/iio/adc/sun4i-gpadc-iio.c                  |   2 -
 drivers/iio/adc/ti-adc081c.c                       |  14 +-
 drivers/iio/adc/ti-adc0832.c                       |  11 +-
 drivers/iio/adc/ti-adc084s021.c                    |   9 +-
 drivers/iio/adc/ti-adc108s102.c                    |   1 -
 drivers/iio/adc/ti-adc12138.c                      |   1 -
 drivers/iio/adc/ti-adc128s052.c                    |   8 +-
 drivers/iio/adc/ti-adc161s626.c                    |   5 +-
 drivers/iio/adc/ti-ads1015.c                       |   4 -
 drivers/iio/adc/ti-ads124s08.c                     |   4 +-
 drivers/iio/adc/ti-ads7950.c                       |   3 +-
 drivers/iio/adc/ti-ads8344.c                       |   4 +-
 drivers/iio/adc/ti-ads8688.c                       |   2 -
 drivers/iio/adc/ti-tlc4541.c                       |  10 +-
 drivers/iio/adc/ti_am335x_adc.c                    |  46 +-
 drivers/iio/adc/twl4030-madc.c                     |  18 +-
 drivers/iio/adc/twl6030-gpadc.c                    |   5 +-
 drivers/iio/adc/vf610_adc.c                        |   9 +-
 drivers/iio/adc/viperboard_adc.c                   |   1 -
 drivers/iio/adc/xilinx-xadc-core.c                 |   4 -
 drivers/iio/afe/iio-rescale.c                      |   1 -
 drivers/iio/amplifiers/ad8366.c                    |   8 +-
 drivers/iio/amplifiers/hmc425a.c                   |   1 -
 drivers/iio/buffer/industrialio-triggered-buffer.c |  10 +-
 drivers/iio/chemical/Kconfig                       |  33 +
 drivers/iio/chemical/Makefile                      |   3 +
 drivers/iio/chemical/ams-iaq-core.c                |   1 -
 drivers/iio/chemical/atlas-ezo-sensor.c            |   5 +-
 drivers/iio/chemical/atlas-sensor.c                |   7 +-
 drivers/iio/chemical/bme680_core.c                 |   1 -
 drivers/iio/chemical/ccs811.c                      |   1 -
 drivers/iio/chemical/pms7003.c                     |   1 -
 drivers/iio/chemical/scd30.h                       |  78 ++
 drivers/iio/chemical/scd30_core.c                  | 771 +++++++++++++++++=
+++
 drivers/iio/chemical/scd30_i2c.c                   | 139 ++++
 drivers/iio/chemical/scd30_serial.c                | 263 +++++++
 drivers/iio/chemical/sgp30.c                       |   1 -
 drivers/iio/chemical/sps30.c                       |   1 -
 drivers/iio/chemical/vz89x.c                       |   1 -
 .../iio/common/cros_ec_sensors/cros_ec_sensors.c   |   5 +
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  |  24 +-
 drivers/iio/common/ms_sensors/ms_sensors_i2c.c     |   2 +-
 drivers/iio/common/st_sensors/st_sensors_i2c.c     |   1 -
 drivers/iio/common/st_sensors/st_sensors_spi.c     |   1 -
 drivers/iio/dac/ad5064.c                           |   3 +-
 drivers/iio/dac/ad5360.c                           |   3 +-
 drivers/iio/dac/ad5380.c                           |   5 +-
 drivers/iio/dac/ad5421.c                           |   3 +-
 drivers/iio/dac/ad5446.c                           |  13 +-
 drivers/iio/dac/ad5449.c                           |   3 +-
 drivers/iio/dac/ad5504.c                           |   8 +-
 drivers/iio/dac/ad5592r-base.c                     |  13 +-
 drivers/iio/dac/ad5624r_spi.c                      |   1 -
 drivers/iio/dac/ad5686.c                           |   1 -
 drivers/iio/dac/ad5755.c                           |   3 +-
 drivers/iio/dac/ad5758.c                           |  19 +-
 drivers/iio/dac/ad5761.c                           |   3 +-
 drivers/iio/dac/ad5764.c                           |   6 +-
 drivers/iio/dac/ad5770r.c                          |   1 -
 drivers/iio/dac/ad5791.c                           |  11 +-
 drivers/iio/dac/ad7303.c                           |   1 -
 drivers/iio/dac/ad8801.c                           |   1 -
 drivers/iio/dac/cio-dac.c                          |   1 -
 drivers/iio/dac/dpot-dac.c                         |   1 -
 drivers/iio/dac/ds4424.c                           |   2 -
 drivers/iio/dac/lpc18xx_dac.c                      |   1 -
 drivers/iio/dac/ltc1660.c                          |   1 -
 drivers/iio/dac/ltc2632.c                          |   7 +-
 drivers/iio/dac/m62332.c                           |   3 -
 drivers/iio/dac/max517.c                           |   3 -
 drivers/iio/dac/max5821.c                          |   1 -
 drivers/iio/dac/mcp4725.c                          |   1 -
 drivers/iio/dac/mcp4922.c                          |   1 -
 drivers/iio/dac/stm32-dac.c                        |   1 -
 drivers/iio/dac/ti-dac082s085.c                    |  13 +-
 drivers/iio/dac/ti-dac5571.c                       |  20 +-
 drivers/iio/dac/ti-dac7311.c                       |   4 +-
 drivers/iio/dac/ti-dac7612.c                       |   1 -
 drivers/iio/dac/vf610_dac.c                        |   2 -
 drivers/iio/dummy/iio_simple_dummy.c               |  21 +-
 drivers/iio/dummy/iio_simple_dummy_buffer.c        |  18 +-
 drivers/iio/dummy/iio_simple_dummy_events.c        |   4 +-
 drivers/iio/frequency/ad9523.c                     |   1 -
 drivers/iio/frequency/adf4350.c                    |   1 -
 drivers/iio/frequency/adf4371.c                    |   1 -
 drivers/iio/gyro/adis16080.c                       |   1 -
 drivers/iio/gyro/adis16130.c                       |   1 -
 drivers/iio/gyro/adis16136.c                       |   1 -
 drivers/iio/gyro/adis16260.c                       |   1 -
 drivers/iio/gyro/adxrs450.c                        |   1 -
 drivers/iio/gyro/bmg160_core.c                     |   3 -
 drivers/iio/gyro/fxas21002c.h                      |  66 --
 drivers/iio/gyro/fxas21002c_core.c                 |  67 +-
 drivers/iio/gyro/hid-sensor-gyro-3d.c              |   1 -
 drivers/iio/gyro/itg3200_core.c                    |   1 -
 drivers/iio/gyro/mpu3050-core.c                    |   3 -
 drivers/iio/gyro/ssp_gyro_sensor.c                 |   1 -
 drivers/iio/gyro/st_gyro_buffer.c                  |  21 +-
 drivers/iio/health/afe4403.c                       |   3 +-
 drivers/iio/health/afe4404.c                       |   3 +-
 drivers/iio/health/afe440x.h                       |   2 +-
 drivers/iio/health/max30100.c                      |   1 -
 drivers/iio/health/max30102.c                      |   1 -
 drivers/iio/humidity/am2315.c                      |   1 -
 drivers/iio/humidity/dht11.c                       |   1 -
 drivers/iio/humidity/hdc100x.c                     |  23 +-
 drivers/iio/humidity/hid-sensor-humidity.c         |   1 -
 drivers/iio/humidity/hts221.h                      |   4 +-
 drivers/iio/humidity/hts221_buffer.c               |  11 +-
 drivers/iio/humidity/hts221_core.c                 |   5 +-
 drivers/iio/humidity/htu21.c                       |   1 -
 drivers/iio/humidity/si7005.c                      |   1 -
 drivers/iio/humidity/si7020.c                      |   1 -
 drivers/iio/iio_core_trigger.h                     |  17 +
 drivers/iio/imu/Kconfig                            |   1 +
 drivers/iio/imu/Makefile                           |   1 +
 drivers/iio/imu/adis16400.c                        |   1 -
 drivers/iio/imu/adis16460.c                        |   1 -
 drivers/iio/imu/adis16475.c                        |   1 -
 drivers/iio/imu/adis16480.c                        |   7 +-
 drivers/iio/imu/bmi160/bmi160.h                    |   3 +
 drivers/iio/imu/bmi160/bmi160_core.c               |  47 +-
 drivers/iio/imu/fxos8700_core.c                    |   1 -
 drivers/iio/imu/inv_icm42600/Kconfig               |  29 +
 drivers/iio/imu/inv_icm42600/Makefile              |  15 +
 drivers/iio/imu/inv_icm42600/inv_icm42600.h        | 395 ++++++++++
 drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c  | 787 +++++++++++++++++=
+++
 drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.c | 601 ++++++++++++++++
 drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.h |  98 +++
 drivers/iio/imu/inv_icm42600/inv_icm42600_core.c   | 786 +++++++++++++++++=
+++
 drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c   | 798 +++++++++++++++++=
++++
 drivers/iio/imu/inv_icm42600/inv_icm42600_i2c.c    | 101 +++
 drivers/iio/imu/inv_icm42600/inv_icm42600_spi.c    | 100 +++
 drivers/iio/imu/inv_icm42600/inv_icm42600_temp.c   |  84 +++
 drivers/iio/imu/inv_icm42600/inv_icm42600_temp.h   |  30 +
 .../iio/imu/inv_icm42600/inv_icm42600_timestamp.c  | 195 +++++
 .../iio/imu/inv_icm42600/inv_icm42600_timestamp.h  |  85 +++
 drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c         |   6 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |  15 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c         |   2 +-
 drivers/iio/imu/kmx61.c                            |  15 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |   8 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |  23 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |   3 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |   9 +-
 drivers/iio/industrialio-buffer.c                  |  58 +-
 drivers/iio/industrialio-core.c                    | 130 ++--
 drivers/iio/industrialio-event.c                   |  68 +-
 drivers/iio/industrialio-trigger.c                 |  22 +-
 drivers/iio/light/acpi-als.c                       |   1 -
 drivers/iio/light/adjd_s311.c                      |   1 -
 drivers/iio/light/adux1020.c                       |   1 -
 drivers/iio/light/al3010.c                         |   1 -
 drivers/iio/light/al3320a.c                        |   1 -
 drivers/iio/light/apds9300.c                       |   1 -
 drivers/iio/light/apds9960.c                       |   1 -
 drivers/iio/light/bh1750.c                         |   1 -
 drivers/iio/light/bh1780.c                         |   1 -
 drivers/iio/light/cm32181.c                        |   9 +-
 drivers/iio/light/cm3232.c                         |   1 -
 drivers/iio/light/cm3323.c                         |   1 -
 drivers/iio/light/cm3605.c                         |   1 -
 drivers/iio/light/cm36651.c                        |   1 -
 drivers/iio/light/cros_ec_light_prox.c             |   6 +-
 drivers/iio/light/gp2ap002.c                       |   1 -
 drivers/iio/light/gp2ap020a00f.c                   |  11 -
 drivers/iio/light/hid-sensor-als.c                 |   1 -
 drivers/iio/light/hid-sensor-prox.c                |   1 -
 drivers/iio/light/iqs621-als.c                     |   7 +-
 drivers/iio/light/isl29018.c                       |   1 -
 drivers/iio/light/isl29028.c                       |   1 -
 drivers/iio/light/isl29125.c                       |  21 +-
 drivers/iio/light/jsa1212.c                        |   1 -
 drivers/iio/light/lm3533-als.c                     |   2 +-
 drivers/iio/light/ltr501.c                         |   1 -
 drivers/iio/light/lv0104cs.c                       |   3 +-
 drivers/iio/light/max44000.c                       |   1 -
 drivers/iio/light/max44009.c                       |   1 -
 drivers/iio/light/noa1305.c                        |   1 -
 drivers/iio/light/opt3001.c                        |   3 +-
 drivers/iio/light/pa12203001.c                     |   1 -
 drivers/iio/light/rpr0521.c                        |   3 -
 drivers/iio/light/si1133.c                         |   1 -
 drivers/iio/light/si1145.c                         |   9 +-
 drivers/iio/light/st_uvis25_core.c                 |   3 -
 drivers/iio/light/stk3310.c                        |   5 +-
 drivers/iio/light/tcs3414.c                        |  21 +-
 drivers/iio/light/tcs3472.c                        |   1 -
 drivers/iio/light/tsl2563.c                        |  13 +-
 drivers/iio/light/tsl2583.c                        |   1 -
 drivers/iio/light/tsl2772.c                        |   1 -
 drivers/iio/light/tsl4531.c                        |   1 -
 drivers/iio/light/us5182d.c                        |   9 +-
 drivers/iio/light/vcnl4000.c                       |  36 +-
 drivers/iio/light/vcnl4035.c                       |   1 -
 drivers/iio/light/veml6030.c                       |   1 -
 drivers/iio/light/veml6070.c                       |   1 -
 drivers/iio/light/vl6180.c                         |   1 -
 drivers/iio/light/zopt2201.c                       |   1 -
 drivers/iio/magnetometer/ak8974.c                  |   2 +-
 drivers/iio/magnetometer/ak8975.c                  |  23 +-
 drivers/iio/magnetometer/bmc150_magn.c             |   3 -
 drivers/iio/magnetometer/bmc150_magn_i2c.c         |   3 +-
 drivers/iio/magnetometer/hid-sensor-magn-3d.c      |   1 -
 drivers/iio/magnetometer/hmc5843.h                 |   6 +-
 drivers/iio/magnetometer/hmc5843_core.c            |   1 -
 drivers/iio/magnetometer/mag3110.c                 |   1 -
 drivers/iio/magnetometer/mmc35240.c                |   5 +-
 drivers/iio/magnetometer/rm3100-core.c             |   3 -
 drivers/iio/magnetometer/st_magn_buffer.c          |  26 +-
 drivers/iio/multiplexer/iio-mux.c                  |   1 -
 drivers/iio/orientation/hid-sensor-incl-3d.c       |   1 -
 drivers/iio/orientation/hid-sensor-rotation.c      |   1 -
 drivers/iio/position/iqs624-pos.c                  |   7 +-
 drivers/iio/potentiometer/ad5272.c                 |   3 +-
 drivers/iio/potentiometer/ds1803.c                 |   1 -
 drivers/iio/potentiometer/max5432.c                |   1 -
 drivers/iio/potentiometer/max5481.c                |   3 +-
 drivers/iio/potentiometer/max5487.c                |   1 -
 drivers/iio/potentiometer/mcp4018.c                |   1 -
 drivers/iio/potentiometer/mcp41010.c               |   3 +-
 drivers/iio/potentiometer/mcp4131.c                |   3 +-
 drivers/iio/potentiometer/mcp4531.c                |   1 -
 drivers/iio/potentiometer/tpl0102.c                |   1 -
 drivers/iio/potentiostat/lmp91000.c                |  14 +-
 drivers/iio/pressure/abp060mg.c                    |   1 -
 drivers/iio/pressure/bmp280-core.c                 |   1 -
 drivers/iio/pressure/cros_ec_baro.c                |   8 +-
 drivers/iio/pressure/dlhl60d.c                     |   4 +-
 drivers/iio/pressure/dps310.c                      |   1 -
 drivers/iio/pressure/hid-sensor-press.c            |   1 -
 drivers/iio/pressure/hp03.c                        |   1 -
 drivers/iio/pressure/hp206c.c                      |   1 -
 drivers/iio/pressure/icp10100.c                    |   1 -
 drivers/iio/pressure/mpl115.c                      |   1 -
 drivers/iio/pressure/mpl3115.c                     |   1 -
 drivers/iio/pressure/ms5611_core.c                 |   1 -
 drivers/iio/pressure/ms5637.c                      |   1 -
 drivers/iio/pressure/st_pressure_buffer.c          |  26 +-
 drivers/iio/pressure/t5403.c                       |   1 -
 drivers/iio/pressure/zpa2326.c                     |  28 +-
 drivers/iio/proximity/as3935.c                     |   1 -
 drivers/iio/proximity/isl29501.c                   |   1 -
 drivers/iio/proximity/mb1232.c                     |   1 -
 drivers/iio/proximity/ping.c                       |   1 -
 drivers/iio/proximity/pulsedlight-lidar-lite-v2.c  |   1 -
 drivers/iio/proximity/rfd77402.c                   |   1 -
 drivers/iio/proximity/srf04.c                      |   3 +-
 drivers/iio/proximity/srf08.c                      |   7 +-
 drivers/iio/proximity/sx9310.c                     |   3 -
 drivers/iio/proximity/sx9500.c                     |  10 -
 drivers/iio/proximity/vcnl3020.c                   |   1 -
 drivers/iio/proximity/vl53l0x-i2c.c                |   1 -
 drivers/iio/resolver/ad2s1200.c                    |   1 -
 drivers/iio/resolver/ad2s90.c                      |   1 -
 drivers/iio/temperature/hid-sensor-temperature.c   |   1 -
 drivers/iio/temperature/iqs620at-temp.c            |   1 -
 drivers/iio/temperature/ltc2983.c                  |   1 -
 drivers/iio/temperature/max31856.c                 |   2 -
 drivers/iio/temperature/maxim_thermocouple.c       |   1 -
 drivers/iio/temperature/mlx90614.c                 |   1 -
 drivers/iio/temperature/mlx90632.c                 |   5 +-
 drivers/iio/temperature/tmp006.c                   |   1 -
 drivers/iio/temperature/tmp007.c                   |   1 -
 drivers/iio/temperature/tsys01.c                   |   1 -
 drivers/iio/temperature/tsys02d.c                  |   1 -
 drivers/iio/trigger/stm32-timer-trigger.c          |   2 -
 drivers/input/touchscreen/tsc2007_iio.c            |   1 -
 drivers/most/Kconfig                               |  11 +
 drivers/most/Makefile                              |   2 +
 drivers/most/core.c                                |   4 +-
 .../{staging/most/usb/usb.c =3D> most/most_usb.c}    |   0
 drivers/net/wireless/Kconfig                       |   1 +
 drivers/net/wireless/Makefile                      |   1 +
 drivers/net/wireless/microchip/Kconfig             |  15 +
 drivers/net/wireless/microchip/Makefile            |   2 +
 .../wireless/microchip}/wilc1000/Kconfig           |   0
 .../wireless/microchip}/wilc1000/Makefile          |   0
 .../wireless/microchip}/wilc1000/cfg80211.c        |   0
 .../wireless/microchip}/wilc1000/cfg80211.h        |   0
 .../wireless/microchip}/wilc1000/fw.h              |   0
 .../wireless/microchip}/wilc1000/hif.c             |   0
 .../wireless/microchip}/wilc1000/hif.h             |   0
 .../wireless/microchip}/wilc1000/mon.c             |   0
 .../wireless/microchip}/wilc1000/netdev.c          |   0
 .../wireless/microchip}/wilc1000/netdev.h          |   0
 .../wireless/microchip}/wilc1000/sdio.c            |   0
 .../wireless/microchip}/wilc1000/spi.c             |   0
 .../wireless/microchip}/wilc1000/wlan.c            |   0
 .../wireless/microchip}/wilc1000/wlan.h            |   0
 .../wireless/microchip}/wilc1000/wlan_cfg.c        |   0
 .../wireless/microchip}/wilc1000/wlan_cfg.h        |   0
 .../wireless/microchip}/wilc1000/wlan_if.h         |   0
 drivers/platform/x86/toshiba_acpi.c                |   3 +-
 drivers/staging/Kconfig                            |   4 -
 drivers/staging/Makefile                           |   2 -
 drivers/staging/android/ashmem.c                   |  12 +
 drivers/staging/android/ion/ion.c                  |  25 +-
 drivers/staging/android/ion/ion.h                  |   1 -
 drivers/staging/android/ion/ion_heap.c             |  53 +-
 drivers/staging/android/ion/ion_system_heap.c      |   2 +-
 drivers/staging/clocking-wizard/Kconfig            |   2 +-
 drivers/staging/clocking-wizard/dt-binding.txt     |   2 +-
 drivers/staging/comedi/comedi_fops.c               |   9 +-
 drivers/staging/comedi/comedi_pci.c                |   2 +-
 drivers/staging/comedi/comedi_pcmcia.c             |   2 +-
 drivers/staging/comedi/comedi_usb.c                |   2 +-
 drivers/staging/comedi/drivers/8255.c              |   2 +-
 drivers/staging/comedi/drivers/8255_pci.c          |   2 +-
 drivers/staging/comedi/drivers/addi_apci_1032.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_1500.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_1516.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_1564.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_16xx.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_2032.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_2200.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_3120.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_3501.c    |   2 +-
 drivers/staging/comedi/drivers/addi_apci_3xxx.c    |   2 +-
 drivers/staging/comedi/drivers/adl_pci6208.c       |   2 +-
 drivers/staging/comedi/drivers/adl_pci8164.c       |   2 +-
 drivers/staging/comedi/drivers/adl_pci9111.c       |   2 +-
 drivers/staging/comedi/drivers/adl_pci9118.c       |   2 +-
 drivers/staging/comedi/drivers/adq12b.c            |   2 +-
 drivers/staging/comedi/drivers/adv_pci1710.c       |   2 +-
 drivers/staging/comedi/drivers/adv_pci1723.c       |   2 +-
 drivers/staging/comedi/drivers/adv_pci1760.c       |   2 +-
 drivers/staging/comedi/drivers/adv_pci_dio.c       |   2 +-
 drivers/staging/comedi/drivers/aio_aio12_8.c       |   2 +-
 drivers/staging/comedi/drivers/aio_iiro_16.c       |   2 +-
 drivers/staging/comedi/drivers/amplc_dio200.c      |   4 +-
 drivers/staging/comedi/drivers/amplc_dio200.h      |   2 +-
 .../staging/comedi/drivers/amplc_dio200_common.c   |   4 +-
 drivers/staging/comedi/drivers/amplc_dio200_pci.c  |   4 +-
 drivers/staging/comedi/drivers/amplc_pc236.c       |   4 +-
 drivers/staging/comedi/drivers/amplc_pc236.h       |   2 +-
 .../staging/comedi/drivers/amplc_pc236_common.c    |   4 +-
 drivers/staging/comedi/drivers/amplc_pc263.c       |   4 +-
 drivers/staging/comedi/drivers/amplc_pci224.c      |   4 +-
 drivers/staging/comedi/drivers/amplc_pci230.c      |   2 +-
 drivers/staging/comedi/drivers/amplc_pci236.c      |   4 +-
 drivers/staging/comedi/drivers/amplc_pci263.c      |   4 +-
 drivers/staging/comedi/drivers/c6xdigio.c          |   2 +-
 drivers/staging/comedi/drivers/cb_pcidas.c         |   2 +-
 drivers/staging/comedi/drivers/cb_pcidas64.c       |   2 +-
 drivers/staging/comedi/drivers/cb_pcidda.c         |   2 +-
 drivers/staging/comedi/drivers/cb_pcimdas.c        |   6 +-
 drivers/staging/comedi/drivers/comedi_8255.c       |   2 +-
 drivers/staging/comedi/drivers/comedi_parport.c    |   2 +-
 drivers/staging/comedi/drivers/comedi_test.c       |   2 +-
 drivers/staging/comedi/drivers/contec_pci_dio.c    |   2 +-
 drivers/staging/comedi/drivers/daqboard2000.c      |   4 +-
 drivers/staging/comedi/drivers/das08.c             |   2 +-
 drivers/staging/comedi/drivers/das08_isa.c         |   2 +-
 drivers/staging/comedi/drivers/das08_pci.c         |   2 +-
 drivers/staging/comedi/drivers/das16.c             |   2 +-
 drivers/staging/comedi/drivers/das16m1.c           |   2 +-
 drivers/staging/comedi/drivers/das1800.c           |   2 +-
 drivers/staging/comedi/drivers/das800.c            |   2 +-
 drivers/staging/comedi/drivers/dmm32at.c           |   2 +-
 drivers/staging/comedi/drivers/dt2801.c            |   2 +-
 drivers/staging/comedi/drivers/dt2811.c            |   2 +-
 drivers/staging/comedi/drivers/dt2814.c            |   2 +-
 drivers/staging/comedi/drivers/dt2815.c            |   2 +-
 drivers/staging/comedi/drivers/dt2817.c            |   2 +-
 drivers/staging/comedi/drivers/dt282x.c            |   2 +-
 drivers/staging/comedi/drivers/dt3000.c            |   2 +-
 drivers/staging/comedi/drivers/fl512.c             |   2 +-
 drivers/staging/comedi/drivers/gsc_hpdi.c          |   2 +-
 drivers/staging/comedi/drivers/icp_multi.c         |   2 +-
 drivers/staging/comedi/drivers/ii_pci20kc.c        |   2 +-
 drivers/staging/comedi/drivers/jr3_pci.c           |   4 +-
 drivers/staging/comedi/drivers/ke_counter.c        |   2 +-
 drivers/staging/comedi/drivers/me4000.c            |   4 +-
 drivers/staging/comedi/drivers/me_daq.c            |   2 +-
 drivers/staging/comedi/drivers/mite.c              |   2 +-
 drivers/staging/comedi/drivers/mpc624.c            |   2 +-
 drivers/staging/comedi/drivers/multiq3.c           |   2 +-
 drivers/staging/comedi/drivers/ni_6527.c           |   2 +-
 drivers/staging/comedi/drivers/ni_65xx.c           |   2 +-
 drivers/staging/comedi/drivers/ni_660x.c           |   2 +-
 drivers/staging/comedi/drivers/ni_670x.c           |   2 +-
 drivers/staging/comedi/drivers/ni_at_a2150.c       |   2 +-
 drivers/staging/comedi/drivers/ni_at_ao.c          |   2 +-
 drivers/staging/comedi/drivers/ni_atmio.c          |   2 +-
 drivers/staging/comedi/drivers/ni_atmio16d.c       |   2 +-
 drivers/staging/comedi/drivers/ni_daq_700.c        |   4 +-
 drivers/staging/comedi/drivers/ni_labpc.c          |   4 +-
 drivers/staging/comedi/drivers/ni_labpc_common.c   |   2 +-
 drivers/staging/comedi/drivers/ni_labpc_isadma.c   |   2 +-
 drivers/staging/comedi/drivers/ni_labpc_pci.c      |   2 +-
 drivers/staging/comedi/drivers/ni_mio_common.c     |   2 +-
 drivers/staging/comedi/drivers/ni_pcidio.c         |   4 +-
 drivers/staging/comedi/drivers/ni_pcimio.c         |   2 +-
 drivers/staging/comedi/drivers/ni_routes.c         |   2 +-
 drivers/staging/comedi/drivers/ni_usb6501.c        |   2 +-
 drivers/staging/comedi/drivers/pcl711.c            |   2 +-
 drivers/staging/comedi/drivers/pcl724.c            |   2 +-
 drivers/staging/comedi/drivers/pcl726.c            |   2 +-
 drivers/staging/comedi/drivers/pcl730.c            |   2 +-
 drivers/staging/comedi/drivers/pcl812.c            |   2 +-
 drivers/staging/comedi/drivers/pcl816.c            |   2 +-
 drivers/staging/comedi/drivers/pcl818.c            |   2 +-
 drivers/staging/comedi/drivers/pcm3724.c           |   2 +-
 drivers/staging/comedi/drivers/pcmad.c             |   2 +-
 drivers/staging/comedi/drivers/pcmda12.c           |   2 +-
 drivers/staging/comedi/drivers/pcmmio.c            |   2 +-
 drivers/staging/comedi/drivers/pcmuio.c            |   2 +-
 drivers/staging/comedi/drivers/plx9052.h           |   2 +-
 drivers/staging/comedi/drivers/quatech_daqp_cs.c   |   2 +-
 drivers/staging/comedi/drivers/rtd520.c            |   2 +-
 drivers/staging/comedi/drivers/rti800.c            |   2 +-
 drivers/staging/comedi/drivers/rti802.c            |   2 +-
 drivers/staging/comedi/drivers/s526.c              |   4 +-
 drivers/staging/comedi/drivers/s626.c              |  18 +-
 drivers/staging/comedi/drivers/ssv_dnp.c           |   2 +-
 .../staging/comedi/drivers/tests/ni_routes_test.c  |   2 +-
 drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h         |  14 +
 drivers/staging/fsl-dpaa2/ethsw/dpsw.c             | 106 +++
 drivers/staging/fsl-dpaa2/ethsw/dpsw.h             |   9 +
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            | 216 +++++-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h            |   4 +
 drivers/staging/gasket/gasket_core.c               |  29 +-
 drivers/staging/gasket/gasket_page_table.c         |   6 +-
 drivers/staging/gasket/gasket_sysfs.h              |   2 +-
 drivers/staging/gdm724x/gdm_lte.c                  |   2 +-
 drivers/staging/greybus/Kconfig                    |  14 +-
 drivers/staging/greybus/Makefile                   |   6 +-
 drivers/staging/greybus/audio_codec.c              | 178 +++--
 drivers/staging/greybus/audio_codec.h              |  12 +-
 drivers/staging/greybus/audio_helper.c             | 198 +++++
 drivers/staging/greybus/audio_helper.h             |  17 +
 drivers/staging/greybus/audio_module.c             |  15 +-
 drivers/staging/greybus/audio_topology.c           | 131 ++--
 drivers/staging/greybus/gpio.c                     |  19 +-
 drivers/staging/gs_fpgaboot/README                 |   2 +-
 drivers/staging/iio/Documentation/device.txt       |   4 +-
 drivers/staging/iio/accel/adis16203.c              |   1 -
 drivers/staging/iio/accel/adis16240.c              |   1 -
 drivers/staging/iio/adc/ad7280a.c                  |   1 -
 drivers/staging/iio/adc/ad7816.c                   |   1 -
 drivers/staging/iio/addac/adt7316.c                |   1 -
 drivers/staging/iio/cdc/ad7150.c                   |   2 -
 drivers/staging/iio/cdc/ad7746.c                   |   2 -
 drivers/staging/iio/frequency/ad9832.c             |   1 -
 drivers/staging/iio/frequency/ad9834.c             |   1 -
 drivers/staging/iio/impedance-analyzer/ad5933.c    |   1 -
 drivers/staging/iio/resolver/ad2s1210.c            |   1 -
 drivers/staging/kpc2000/kpc_dma/fileops.c          |  39 +-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c   |   1 +
 drivers/staging/ks7010/ks_hostif.c                 |  11 +-
 drivers/staging/ks7010/ks_wlan_net.c               |  22 +-
 drivers/staging/most/Kconfig                       |   2 -
 drivers/staging/most/Makefile                      |   1 -
 drivers/staging/most/cdev/cdev.c                   |  49 +-
 drivers/staging/most/net/net.c                     |   6 +-
 drivers/staging/most/sound/sound.c                 |  58 +-
 drivers/staging/most/usb/Kconfig                   |  14 -
 drivers/staging/most/usb/Makefile                  |   4 -
 drivers/staging/netlogic/xlr_net.c                 |   2 +-
 drivers/staging/nvec/README                        |   2 +-
 drivers/staging/octeon/ethernet-defines.h          |  10 +-
 drivers/staging/octeon/octeon-stubs.h              |   1 +
 drivers/staging/qlge/qlge.h                        |   7 +-
 drivers/staging/qlge/qlge_dbg.c                    | 590 +++++++--------
 drivers/staging/qlge/qlge_ethtool.c                |   8 +-
 drivers/staging/qlge/qlge_main.c                   |  69 +-
 drivers/staging/qlge/qlge_mpi.c                    |  59 +-
 drivers/staging/rtl8188eu/core/rtw_ap.c            |  12 +-
 drivers/staging/rtl8188eu/core/rtw_cmd.c           |   4 +-
 drivers/staging/rtl8188eu/core/rtw_debug.c         |  20 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |  89 +--
 drivers/staging/rtl8188eu/core/rtw_ioctl_set.c     |  16 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |  14 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |  50 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c       |  10 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c          | 125 ++--
 drivers/staging/rtl8188eu/core/rtw_security.c      | 157 ++--
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c       |   2 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |   4 +-
 drivers/staging/rtl8188eu/core/rtw_xmit.c          |  74 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c  |   2 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c     |  20 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c        |   2 +-
 drivers/staging/rtl8188eu/include/drv_types.h      |   1 -
 .../staging/rtl8188eu/include/hal8188e_phy_cfg.h   |  25 -
 .../rtl8188eu/include/hal8188e_rate_adaptive.h     |  16 +-
 drivers/staging/rtl8188eu/include/hal_com.h        |   3 +-
 drivers/staging/rtl8188eu/include/ieee80211.h      |  11 -
 drivers/staging/rtl8188eu/include/odm.h            |   6 +-
 drivers/staging/rtl8188eu/include/odm_debug.h      |   2 -
 drivers/staging/rtl8188eu/include/odm_types.h      |   6 +-
 drivers/staging/rtl8188eu/include/osdep_service.h  |   9 +-
 drivers/staging/rtl8188eu/include/pwrseq.h         |   3 -
 drivers/staging/rtl8188eu/include/pwrseqcmd.h      |   1 -
 drivers/staging/rtl8188eu/include/recv_osdep.h     |   2 -
 drivers/staging/rtl8188eu/include/rtl8188e_hal.h   |  19 +-
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h  |   1 -
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h  |  13 +-
 drivers/staging/rtl8188eu/include/rtw_cmd.h        |   2 +-
 drivers/staging/rtl8188eu/include/rtw_debug.h      |   1 -
 drivers/staging/rtl8188eu/include/rtw_efuse.h      |   2 +-
 drivers/staging/rtl8188eu/include/rtw_ioctl.h      |   2 -
 drivers/staging/rtl8188eu/include/rtw_ioctl_set.h  |   1 -
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h   |   3 -
 drivers/staging/rtl8188eu/include/rtw_pwrctrl.h    |   2 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h       |   5 +-
 drivers/staging/rtl8188eu/include/rtw_rf.h         |   1 -
 drivers/staging/rtl8188eu/include/rtw_security.h   |  25 +-
 drivers/staging/rtl8188eu/include/rtw_xmit.h       |  18 +-
 drivers/staging/rtl8188eu/include/wifi.h           |  57 +-
 drivers/staging/rtl8188eu/include/wlan_bssdef.h    |   5 +-
 drivers/staging/rtl8188eu/include/xmit_osdep.h     |   3 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |  58 +-
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c   |   2 +-
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c      |   4 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     |  12 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |  76 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.c         |  26 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.h         |   4 +-
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c       |   4 +-
 drivers/staging/rtl8192e/rtllib_wx.c               |   2 +-
 drivers/staging/rtl8192u/copying                   | 340 ---------
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  |  16 -
 drivers/staging/rtl8192u/r8192U_core.c             |   2 +-
 drivers/staging/rtl8192u/r8192U_dm.c               |   4 +-
 drivers/staging/rtl8712/Kconfig                    |   2 +-
 drivers/staging/rtl8712/basic_types.h              |   8 -
 drivers/staging/rtl8712/hal_init.c                 |  25 +-
 drivers/staging/rtl8712/ieee80211.h                | 584 +--------------
 drivers/staging/rtl8712/osdep_intf.h               |   2 +-
 drivers/staging/rtl8712/rtl8712_recv.c             |  44 +-
 drivers/staging/rtl8712/rtl871x_cmd.c              |   7 +-
 drivers/staging/rtl8712/rtl871x_ht.h               |   2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |  22 +-
 drivers/staging/rtl8712/rtl871x_mlme.c             |  30 +-
 drivers/staging/rtl8712/rtl871x_recv.c             |   7 +-
 drivers/staging/rtl8712/rtl871x_recv.h             |   2 -
 drivers/staging/rtl8712/rtl871x_security.c         |   2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |   2 +-
 drivers/staging/rtl8712/usb_intf.c                 |  11 +-
 drivers/staging/rtl8712/usb_ops_linux.c            |   2 +-
 drivers/staging/rtl8712/wifi.h                     |  76 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |   2 +-
 drivers/staging/rtl8723bs/core/rtw_security.c      |   6 +-
 drivers/staging/rtl8723bs/include/HalPwrSeqCmd.h   |   6 +-
 drivers/staging/rtl8723bs/include/HalVerDef.h      |  18 +-
 drivers/staging/rtl8723bs/include/drv_types.h      |   6 +-
 drivers/staging/rtl8723bs/include/drv_types_sdio.h |   3 +-
 drivers/staging/rtl8723bs/include/hal_btcoex.h     |   3 +-
 drivers/staging/rtl8723bs/include/hal_com.h        |   3 +-
 drivers/staging/rtl8723bs/include/hal_phy_cfg.h    | 116 +--
 drivers/staging/rtl8723bs/include/ieee80211.h      |   3 +-
 drivers/staging/rtl8723bs/include/ioctl_cfg80211.h |   3 +-
 drivers/staging/rtl8723bs/include/osdep_service.h  |   3 -
 drivers/staging/rtl8723bs/include/rtl8192c_recv.h  |   3 +-
 drivers/staging/rtl8723bs/include/rtl8723b_recv.h  |   6 +-
 drivers/staging/rtl8723bs/include/rtl8723b_xmit.h  |   3 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h        |  30 +-
 drivers/staging/rtl8723bs/include/rtw_eeprom.h     |   6 +-
 drivers/staging/rtl8723bs/include/rtw_event.h      |   6 +-
 drivers/staging/rtl8723bs/include/rtw_ht.h         |   3 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h       |   6 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h   |  51 +-
 drivers/staging/rtl8723bs/include/rtw_mp.h         |  15 +-
 drivers/staging/rtl8723bs/include/rtw_pwrctrl.h    |  12 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h       |  12 +-
 drivers/staging/rtl8723bs/include/rtw_security.h   |   9 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h       |  12 +-
 drivers/staging/rtl8723bs/include/wifi.h           |  29 +-
 drivers/staging/rtl8723bs/include/wlan_bssdef.h    |   9 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |  70 +-
 drivers/staging/rtl8723bs/os_dep/osdep_service.c   |  11 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c      |   2 +-
 drivers/staging/rts5208/ms.c                       |   6 +-
 drivers/staging/rts5208/rtsx.c                     |  43 +-
 drivers/staging/rts5208/rtsx_chip.c                |  12 +-
 drivers/staging/rts5208/rtsx_transport.c           |   2 +-
 drivers/staging/sm750fb/sm750.c                    |  91 +--
 drivers/staging/speakup/TODO                       |  47 --
 drivers/staging/unisys/visorhba/visorhba_main.c    |   4 +-
 drivers/staging/vc04_services/Kconfig              |   2 +
 drivers/staging/vc04_services/Makefile             |   9 +-
 .../staging/vc04_services/bcm2835-audio/Makefile   |   2 +-
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    | 100 ++-
 .../staging/vc04_services/bcm2835-audio/bcm2835.h  |   4 +-
 .../bcm2835-audio/vc_vchi_audioserv_defs.h         |   5 +-
 .../staging/vc04_services/bcm2835-camera/Kconfig   |   1 +
 .../staging/vc04_services/bcm2835-camera/Makefile  |   4 +-
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |  66 +-
 .../linux/raspberrypi/vchiq.h}                     |  67 +-
 .../vc04_services/interface/{vchi =3D> }/TODO        |   0
 .../staging/vc04_services/interface/vchi/vchi.h    | 159 ----
 .../vc04_services/interface/vchi/vchi_cfg.h        | 238 ------
 .../vc04_services/interface/vchi/vchi_common.h     | 138 ----
 .../vc04_services/interface/vchiq_arm/vchiq.h      |  21 -
 .../interface/vchiq_arm/vchiq_2835_arm.c           |  17 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |  88 ++-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 121 +++-
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |  46 +-
 .../interface/vchiq_arm/vchiq_ioctl.h              |   2 +-
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c | 617 ----------------
 .../vc04_services/interface/vchiq_arm/vchiq_util.c |  85 ---
 .../vc04_services/interface/vchiq_arm/vchiq_util.h |  50 --
 drivers/staging/vc04_services/vchiq-mmal/Kconfig   |   7 +
 drivers/staging/vc04_services/vchiq-mmal/Makefile  |   9 +
 .../{bcm2835-camera =3D> vchiq-mmal}/mmal-common.h   |   5 +
 .../mmal-encodings.h                               |   0
 .../mmal-msg-common.h                              |   0
 .../mmal-msg-format.h                              |   0
 .../{bcm2835-camera =3D> vchiq-mmal}/mmal-msg-port.h |   0
 .../{bcm2835-camera =3D> vchiq-mmal}/mmal-msg.h      |   2 +-
 .../mmal-parameters.h                              |  32 +-
 .../{bcm2835-camera =3D> vchiq-mmal}/mmal-vchiq.c    | 276 ++++---
 .../{bcm2835-camera =3D> vchiq-mmal}/mmal-vchiq.h    |   6 +-
 drivers/staging/vt6655/channel.c                   |   2 +-
 drivers/staging/vt6655/device_main.c               |  25 +-
 drivers/staging/vt6655/key.c                       |   6 +-
 drivers/staging/vt6655/rxtx.c                      |  80 +--
 drivers/staging/vt6656/channel.c                   |   2 +-
 drivers/staging/vt6656/key.c                       |   2 +-
 drivers/staging/wfx/bh.c                           |  34 +-
 drivers/staging/wfx/bus_spi.c                      |  14 +-
 drivers/staging/wfx/data_rx.c                      |  85 +--
 drivers/staging/wfx/data_tx.c                      | 127 ++--
 drivers/staging/wfx/data_tx.h                      |   3 +-
 drivers/staging/wfx/debug.c                        |  23 +
 drivers/staging/wfx/fwio.c                         |  22 +-
 drivers/staging/wfx/hif_rx.c                       |  22 +-
 drivers/staging/wfx/hif_tx_mib.c                   |   2 +-
 drivers/staging/wfx/main.c                         |  51 +-
 drivers/staging/wfx/main.h                         |   2 -
 drivers/staging/wfx/queue.c                        | 150 ++--
 drivers/staging/wfx/queue.h                        |  13 +-
 drivers/staging/wfx/sta.c                          |  36 +-
 drivers/staging/wfx/sta.h                          |   4 +-
 drivers/staging/wfx/traces.h                       |  51 ++
 drivers/staging/wfx/wfx.h                          |   5 +-
 drivers/staging/wilc1000/TODO                      |   3 -
 drivers/staging/wlan-ng/cfg80211.c                 |  19 +-
 include/dt-bindings/iio/adc/ingenic,adc.h          |   6 +
 include/dt-bindings/iio/qcom,spmi-adc7-pm8350.h    |  67 ++
 include/dt-bindings/iio/qcom,spmi-adc7-pm8350b.h   |  88 +++
 include/dt-bindings/iio/qcom,spmi-adc7-pmk8350.h   |  46 ++
 include/dt-bindings/iio/qcom,spmi-adc7-pmr735a.h   |  28 +
 include/dt-bindings/iio/qcom,spmi-adc7-pmr735b.h   |  28 +
 include/dt-bindings/iio/qcom,spmi-vadc.h           |  78 +-
 include/linux/iio/common/cros_ec_sensors_core.h    |  11 +-
 include/linux/iio/iio-opaque.h                     |  36 +
 include/linux/iio/iio.h                            |  61 +-
 include/linux/iio/trigger_consumer.h               |   7 -
 include/soc/at91/atmel_tcb.h                       |   5 +
 853 files changed, 12376 insertions(+), 7237 deletions(-)
 rename {drivers/staging/speakup =3D> Documentation/ABI/stable}/sysfs-drive=
r-speakup (100%)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-icm42600
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-scd30
 rename {drivers/staging/speakup =3D> Documentation/admin-guide}/spkguide.t=
xt (99%)
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/kionix,kxsd=
9.txt
 create mode 100644 Documentation/devicetree/bindings/iio/accel/kionix,kxsd=
9.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ingenic,adc.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ingenic,adc.y=
aml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-vad=
c.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-vad=
c.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads8688.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-ads8688.txt
 create mode 100644 Documentation/devicetree/bindings/iio/chemical/sensirio=
n,scd30.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,ic=
m42600.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/magnetometer/ak89=
75.txt
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/asah=
i-kasei,ak8975.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
 rename {drivers/staging/wilc1000 =3D> Documentation/devicetree/bindings/ne=
t/wireless}/microchip,wilc1000.yaml (100%)
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,a=
t91rm9200-tcb.yaml
 rename drivers/{staging =3D> accessibility}/speakup/DefaultKeyAssignments =
(100%)
 rename drivers/{staging =3D> accessibility}/speakup/Kconfig (100%)
 rename drivers/{staging =3D> accessibility}/speakup/Makefile (100%)
 create mode 100644 drivers/accessibility/speakup/TODO
 rename drivers/{staging =3D> accessibility}/speakup/buffers.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/devsynth.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/fakekey.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/i18n.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/i18n.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/keyhelp.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/kobjects.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/main.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/selection.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/serialio.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/serialio.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_acnt.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_acntpc.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_acntsa.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_apollo.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_audptr.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_bns.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_decext.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_decpc.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_dectlk.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_dtlk.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_dtlk.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_dummy.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_keypc.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_ltlk.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_soft.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_spkout.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakup_txprt.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakupmap.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/speakupmap.map (100%)
 rename drivers/{staging =3D> accessibility}/speakup/spk_priv.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/spk_priv_keyinfo.h (10=
0%)
 rename drivers/{staging =3D> accessibility}/speakup/spk_ttyio.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/spk_types.h (100%)
 rename drivers/{staging =3D> accessibility}/speakup/synth.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/thread.c (100%)
 rename drivers/{staging =3D> accessibility}/speakup/varhandlers.c (100%)
 create mode 100644 drivers/counter/microchip-tcb-capture.c
 create mode 100644 drivers/iio/accel/bma400_spi.c
 create mode 100644 drivers/iio/chemical/scd30.h
 create mode 100644 drivers/iio/chemical/scd30_core.c
 create mode 100644 drivers/iio/chemical/scd30_i2c.c
 create mode 100644 drivers/iio/chemical/scd30_serial.c
 create mode 100644 drivers/iio/imu/inv_icm42600/Kconfig
 create mode 100644 drivers/iio/imu/inv_icm42600/Makefile
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600.h
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_accel.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_buffer.h
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_core.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_gyro.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_i2c.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_spi.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_temp.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_temp.h
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_timestamp.c
 create mode 100644 drivers/iio/imu/inv_icm42600/inv_icm42600_timestamp.h
 rename drivers/{staging/most/usb/usb.c =3D> most/most_usb.c} (100%)
 create mode 100644 drivers/net/wireless/microchip/Kconfig
 create mode 100644 drivers/net/wireless/microchip/Makefile
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/Kconfig (100=
%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/Makefile (10=
0%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/cfg80211.c (=
100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/cfg80211.h (=
100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/fw.h (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/hif.c (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/hif.h (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/mon.c (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/netdev.c (10=
0%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/netdev.h (10=
0%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/sdio.c (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/spi.c (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/wlan.c (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/wlan.h (100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/wlan_cfg.c (=
100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/wlan_cfg.h (=
100%)
 rename drivers/{staging =3D> net/wireless/microchip}/wilc1000/wlan_if.h (1=
00%)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h
 delete mode 100644 drivers/staging/most/usb/Kconfig
 delete mode 100644 drivers/staging/most/usb/Makefile
 delete mode 100644 drivers/staging/rtl8192u/copying
 delete mode 100644 drivers/staging/speakup/TODO
 rename drivers/staging/vc04_services/{interface/vchiq_arm/vchiq_if.h =3D> =
include/linux/raspberrypi/vchiq.h} (56%)
 rename drivers/staging/vc04_services/interface/{vchi =3D> }/TODO (100%)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_commo=
n.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq=
.h
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq=
_shim.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq=
_util.c
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq=
_util.h
 create mode 100644 drivers/staging/vc04_services/vchiq-mmal/Kconfig
 create mode 100644 drivers/staging/vc04_services/vchiq-mmal/Makefile
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-common.h (96%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-encodings.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-msg-common.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-msg-format.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-msg-port.h (100%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-msg.h (99%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-parameters.h (96%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-vchiq.c (88%)
 rename drivers/staging/vc04_services/{bcm2835-camera =3D> vchiq-mmal}/mmal=
-vchiq.h (97%)
 delete mode 100644 drivers/staging/wilc1000/TODO
 create mode 100644 include/dt-bindings/iio/qcom,spmi-adc7-pm8350.h
 create mode 100644 include/dt-bindings/iio/qcom,spmi-adc7-pm8350b.h
 create mode 100644 include/dt-bindings/iio/qcom,spmi-adc7-pmk8350.h
 create mode 100644 include/dt-bindings/iio/qcom,spmi-adc7-pmr735a.h
 create mode 100644 include/dt-bindings/iio/qcom,spmi-adc7-pmr735b.h
 create mode 100644 include/linux/iio/iio-opaque.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
