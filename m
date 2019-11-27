Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C493C10B381
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 17:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C35152277A;
	Wed, 27 Nov 2019 16:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xJUBi5gAMQ4d; Wed, 27 Nov 2019 16:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52CBF2001F;
	Wed, 27 Nov 2019 16:35:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECCFE1BF841
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 16:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7A7086C4D
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 16:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r+T6WwHvQvxf for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 16:35:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E61BE86C46
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 16:35:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB568206E0;
 Wed, 27 Nov 2019 16:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574872517;
 bh=qWwFPstjYCzfx0SC4Mz/VcH9PdIKlFwIA0IGEapihr8=;
 h=Date:From:To:Cc:Subject:From;
 b=zQOaLssdtpEEOb4ch7BOCQ1QE+QPt8x6roUT+OrcTjexboDNSahz1OL/Xr9EKxa5+
 h6ABYIVFj1mWiy2PDI/KwSnAYa+QfdqTjTCBpG9PI1sIv45uyHboZRLQIIpmpCfEVc
 1ikRbrmuUBFfzyLt0TWgHcB25QUJAj9qxZgi8D0E=
Date: Wed, 27 Nov 2019 17:35:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging / IIO driver patches for 5.5-rc1
Message-ID: <20191127163515.GA3087498@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
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

The following changes since commit 31f4f5b495a62c9a8b15b1c3581acd5efeb9af8c:

  Linux 5.4-rc7 (2019-11-10 16:17:15 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.5-rc1

for you to fetch changes up to 0f6f8749872e7be6c083dc845bf4d45a7018b79c:

  staging: vchiq: Have vchiq_dump_* functions return an error code (2019-11=
-22 11:40:31 +0100)

----------------------------------------------------------------
Staging / IIO patches for 5.5-rc1

Here is the big staging and iio set of patches for the 5.5-rc1 release.

It's the usual huge collection of cleanup patches all over the
drivers/staging/ area, along with a new staging driver, and a bunch of
new IIO drivers as well.

Full details are in the shortlog, but all of these have been in
linux-next for a long time with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Adham Abozaeid (4):
      staging: wilc1000: look for rtc_clk clock in spi mode
      staging: wilc1000: don't use wdev while setting tx power
      staging: wilc1000: store bss object and use cfg80211_connect_bss()
      staging: wilc1000: check if device is initialzied before changing vif

Ajay Singh (11):
      staging: wilc1000: remove unnecessary netdev validation check in del_=
key()
      staging: wilc1000: move wlan_deinit_locks() in wilc_netdev_cleanup()
      staging: wilc1000: use RCU list to maintain vif interfaces list
      staging: wilc1000: handle mgmt frames for both interfaces during conc=
urrent mode
      staging: wilc1000: avoid 'bool' datatype in struct sent to firmware
      staging: wilc1000: remove 'wilc_' prefix from filenames
      staging: wilc1000: added 'WILC_' prefix in header guard macro
      staging: wilc1000: avoid use of C++ style comments
      staging: wilc1000: added proper spacing for comments
      staging: wilc1000: use defines for msg types received from firmware
      staging: wilc1000: fix illegal memory access in wilc_parse_join_bss_p=
aram()

Alexandru Ardelean (20):
      iio: tcs3414: fix iio_triggered_buffer_{pre,post}enable positions
      iio: gyro: adis16130: remove mlock usage
      iio: gyro: adis16080: replace mlock with own lock
      iio: proximity: sx9500: fix iio_triggered_buffer_{predisable,postenab=
le} positions
      iio: chemical: atlas-ph-sensor: fix iio_triggered_buffer_predisable()=
 position
      iio: dac: ad7303: replace mlock with own lock
      iio: pressure: zpa2326: fix iio_triggered_buffer_postenable position
      staging: rtl8188eu: make efuse_power_switch() function static
      iio: dln2-adc: fix iio_triggered_buffer_postenable() position
      iio: hdc100x: fix iio_triggered_buffer_{predisable,postenable} positi=
ons
      iio: gyro: adis16136: check ret val for non-zero vs less-than-zero
      iio: imu: adis16400: check ret val for non-zero vs less-than-zero
      iio: imu: adis16460: check ret val for non-zero vs less-than-zero
      iio: imu: adis16480: check ret val for non-zero vs less-than-zero
      iio: imu: adis: check ret val for non-zero vs less-than-zero
      iio: imu: adis16480: fix indentation of return statement
      iio: imu: adis16480: prefer `unsigned int` over `unsigned`
      iio: imu: adis16480: assign bias value only if operation succeeded
      iio: imu: adis: assign read val in debugfs hook only if op successful
      iio: imu: adis: assign value only if return code zero in read funcs

Aliasgar Surti (3):
      staging: rtl8723bs: Removed unneeded variables
      staging: qlge: Removed unnecessary variable
      staging: rtl8723bs: removed unwanted if..else condition

Andrea Merello (3):
      iio: ad7949: kill pointless "readback"-handling code
      iio: max31856: add missing of_node and parent references to iio_dev
      iio: ad7949: fix incorrect SPI xfer len

Andreas Klinger (2):
      dt-bindings: iio: maxbotix,mb1232.yaml: transform to yaml
      iio: adc: hx711: optimize performance in read cycle

Andy Shevchenko (5):
      fbtft: Make sure string is NULL terminated
      fbtft: Describe function parameters in kernel-doc
      fbtft: Drop useless #ifdef CONFIG_OF and dead code
      fbtft: Make use of device property API
      fbtft: Drop OF dependency

Antonio Borneo (1):
      staging: rtl8723bs: fix typo of "mechanism" in comment

Arnd Bergmann (1):
      staging: exfat: use prandom_u32() for i_generation

Artur Rojek (3):
      dt-bindings: iio/adc: Add a compatible string for JZ4770 SoC ADC
      dt-bindings: iio/adc: Add AUX2 channel idx for JZ4770 SoC ADC
      IIO: Ingenic JZ47xx: Add support for JZ4770 SoC ADC.

Aurabindo Jayamohanan (1):
      staging: board: use appropriate macro to initialize struct

Baolin Wang (1):
      iio: adc: sc27xx: Use devm_hwspin_lock_request_specific() to simplify=
 code

Bartosz Golaszewski (3):
      iio: pressure: bmp280: remove stray newline
      iio: pressure: bmp280: use bulk regulator ops
      iio: pressure: bmp280: use devm action and remove labels from probe

Benjamin Poirier (17):
      staging: qlge: Fix irq masking in INTx mode
      staging: qlge: Remove irq_cnt
      staging: qlge: Remove page_chunk.last_flag
      staging: qlge: Deduplicate lbq_buf_size
      staging: qlge: Remove bq_desc.maplen
      staging: qlge: Remove rx_ring.sbq_buf_size
      staging: qlge: Remove useless dma synchronization calls
      staging: qlge: Deduplicate rx buffer queue management
      staging: qlge: Fix dma_sync_single calls
      staging: qlge: Remove rx_ring.type
      staging: qlge: Factor out duplicated expression
      staging: qlge: Remove qlge_bq.len & size
      staging: qlge: Remove useless memset
      staging: qlge: Replace memset with assignment
      staging: qlge: Update buffer queue prod index despite oom
      staging: qlge: Refill rx buffers up to multiple of 16
      staging: qlge: Refill empty buffer queues from wq

Bernd Porr (1):
      staging: comedi: usbduxfast: usbduxfast_ai_cmdtest rounding error

Chandra Annamaneni (4):
      staging: KPC2000: kpc2000_spi.c: Fix style issues (missing blank line)
      staging: KPC2000: kpc2000_spi.c: Fix style issues (misaligned brace)
      staging: KPC2000: kpc2000_spi.c: Fix style issues (alignment)
      staging: KPC2000: kpc2000_spi.c: Fix style issues (Unnecessary parent=
hesis)

Christian Gromm (5):
      staging: most: remove string termination dependency from user space d=
ata
      staging: most: configfs: move configfs subsystems to container struct
      staging: most: block module removal while having active configfs items
      staging: most: core: add comments to mutex and spinlock definitions
      staging: most: core: remove sysfs attr remove_link

Christophe JAILLET (1):
      staging: wfx: Fix a memory leak in 'wfx_upload_beacon'

Chuhong Yuan (1):
      staging: iio: ad9834: add a check for devm_clk_get

Colin Ian King (14):
      iio: light: cm36651: redundant assignment to variable ret
      staging: rtl8723bs: os_dep: fix spelling mistake "offet" -> "offset"
      staging: rtl8723bs: core: make array op_class static const, makes obj=
ect smaller
      staging: rtl8192e: clean up indentation issue
      staging: vt6656: clean up an indentation issue
      counter: stm32: clean up indentation issue
      iio: gyro: clean up indentation issue
      staging: wfx: fix spelling mistake "hexdecimal" -> "hexadecimal"
      staging: wfx: fix swapped arguments in memset call
      staging: wfx: fix spelling mistake "non existant" -> "non-existent"
      staging: exfat: fix indentation issue
      staging: rtl8192u: fix indentation issue
      staging: rtl8723bs: fix indentation issue
      staging: exfat: fix spelling mistake "maont" -> "mount"

Connor Kuehl (3):
      staging: rtl8188eu: remove unnecessary self-assignment
      staging: rtl8188eu: remove dead code/vestigial do..while loop
      staging: rtl8188eu: fix possible null dereference

Cristiane Naves (7):
      staging: gasket: Fix lines ending with a '('
      staging: octeon: Remove unneeded variable
      staging: media: allegro-dvt: remove bool comparison
      staging: fieldbus: anybuss: use devm_platform_ioremap_resource helper
      staging: rtl8712: Remove lines before a close brace
      staging: rtl8712: Fix Alignment of open parenthesis
      staging: vt6655: Fix lines ending with parentheses

CristianeNaves (1):
      staging: gasket: Fix lines ending with a '('

Dan Carpenter (1):
      staging: wilc1000: potential corruption in wilc_parse_join_bss_param()

David Lechner (3):
      bus/ti-pwmss: move TI PWMSS driver from PWM to bus subsystem
      dt-bindings: counter: new bindings for TI eQEP
      counter: new TI eQEP driver

Davidlohr Bueso (3):
      drivers/staging/exfat: Replace binary semaphores for mutexes
      drivers/staging/exfat: Replace more binary semaphores with mutexes
      staging: exfat: Ensure we unlock upon error in ffsReadFile

Evan Chime (2):
      Staging: Netlogic: Fix grammatical error
      Staging: Netlogic: Fix spelling mistake

Fabrice Gasnier (6):
      counter: stm32-timer-cnt: fix a kernel-doc warning
      counter: stm32-lptimer-cnt: fix a kernel-doc warning
      iio: dac: stm32: add power management support
      iio: adc: stm32-adc: fix kernel-doc warnings
      dt-bindings: iio: stm32-adc: add max clock rate property
      iio: adc: stm32: allow to tune analog clock

Frank A. Cancio Bello (10):
      staging: octeon-usb: Fix line ending with a '('
      staging: mt7621-dma: Remove unnecessary line continuations
      staging: rts5208: Fix alignment and a line ending with a '('
      staging: emxx_udc: Fix the format of a parameter list
      staging: vt6655: Fix parameter alignment issues
      staging: vt6655: Fix the spacing around operators
      staging: vt6655: Fix open ended lines
      staging: vt6655: Fix long lines
      staging: exfat: Fix parameter alignment issues
      staging: exfat: Fix logical operation continuation

Gabriela Bittencourt (13):
      staging: vt6656: remove duplicated blank line
      staging: vt6656: reorganize characters so the lines are under 80 ch
      staging: rtl8712: align arguments with open parenthesis in file rtl87=
12_led.c
      staging: sm750fb: format description of parameters in accel.c
      staging: sm750fb: format description of parameters in accel.h
      staging: sm750fb: align arguments with open parenthesis in ddk750_sii=
164.c
      staging: sm750fb: align arguments with open parenthesis in file sm750=
_accel.h
      staging: sm750fb: align arguments with open parenthesis in file sm750=
_cursor.h
      staging: sm750fb: Fix typo in comment
      staging: sm750fb: Replace multiple spaces with tabs when it suits
      staging: rts5208: Eliminate the use of Camel Case in files ms.{h, c}
      staging: rts5208: Eliminate the use of Camel Case in files xd.{h, c}
      staging: rts5208: Eliminate the use of Camel Case in file sd.h

Giovanni Gherdovich (1):
      staging: octeon: indent with tabs instead of spaces

Greg Kroah-Hartman (6):
      Merge tag 'iio-for-5.5a-take3' of https://git.kernel.org/.../jic23/ii=
o into staging-next
      Merge 5.4-rc3 into staging-next
      Merge 5.4-rc5 into staging-next
      Merge tag 'iio-for-5.5b' of https://git.kernel.org/.../jic23/iio into=
 staging-next
      Merge 5.4-rc7 into staging-next
      Merge tag 'iio-for-5.5c' of https://git.kernel.org/.../jic23/iio into=
 staging-next

Gwendal Grignou (1):
      iio: cros_ec_baro: set info_mask_shared_by_all_available field

Hans de Goede (7):
      staging: rtl8723bs: Remove phy_Config*With*ParaFile() calls
      staging: rtl8723bs: Remove phy_Config*WithParaFile() functions
      staging: rtl8723bs: Remove phy_Config*WithParaFile() configuration le=
ftovers
      staging: rtl8723bs: Remove rtw_merge_string() function
      staging: rtl8723bs: Remove File operation APIs
      staging: rtl8723bs: Add 024c:0525 to the list of SDIO device-ids
      staging: rtl8723bs: Drop ACPI device ids

Hariprasad Kelam (1):
      staging: vc04_services: make use of devm_platform_ioremap_resource

Ido Tamir (1):
      staging: sm750fb: CHECK: Avoid CamelCase

Ioana Ciornei (4):
      staging: dpaa2-ethsw: move port notifier per ethsw
      staging: dpaa2-ethsw: move port switchdev notifier per ethsw
      staging: dpaa2-ethsw: move port switchdev blocking notifier per ethsw
      staging: dpaa2-ethsw: ordered workqueue should be per ethsw

Jamal Shareef (21):
      staging: sm750fb: Fix lines over 80 characters
      staging: most: Change bool init to true/false
      staging: fbtft: Fix duplicate arguments to bitwise AND
      staging: kpc2000: kpc_i2c: Fix lines over 80 chars
      staging: kpc2000: kpc_i2c: Remove commented code
      staging: vc04_services: Remove unused structs
      staging: vc04_services: Remove enum typedefs in vchi
      staging: vc04_services: Replace VCHI_INSTANCE_T with struct vhci_inst=
ance_handle
      staging: vc04_services: Replace VCHI_SERVICE_HANDLE_T typedef with st=
ruct vchi_service_handle
      staging: vc04_services: Rename callback VCHI_CALLBACK_T to vchi_callb=
ack
      staging: vc04_services: Replace VCHIQ_STATUS_T enum typedef with enum=
 vchiq_status
      staging: vc04_services: Replace VCHIQ_BULK_MODE_T enum typedef with e=
num vchiq_bulk_mode
      staging: vc04_services: Replace VCHIQ_SERVICE_OPTION_T enum typedef w=
ith enum vchiq_service_option
      staging: vc04_services: Replace VCHIQ_CONNSTATE_T enum typedef with e=
num vchiq_connstate
      staging: vc04_services: Replace VCHIQ_BULK_DIR_T enum typedef with en=
um vchiq_bulk_dir
      staging: vc04_services: Rename callback VCHIQ_USERDATA_TERM_T to vchi=
q_userdata_term
      staging: vc04_services: Rename VCHIQ_CALLBACK_T to vchiq_callback
      staging: vc04_services: Rename VCHIQ_REMOTE_USE_CALLBACK_T to vchiq_r=
emote_callback
      staging: vc04_services: Replace VCHIQ_SERVICE_HANDLE_T typedef with u=
nsigned int
      staging: vc04_services: Replace VCHIQ_INSTANCE_T typedef with struct =
vchiq_instance
      staging: vc04_services: Replace VCHIQ_PLATFORM_STATE_T typedef with s=
truct opaque_platform_state

Javier F. Arias (31):
      staging: rtl8723bs: Remove unnecessary braces
      staging: rtl8723bs: Remove unnecessary braces
      staging: rtl8723bs: Switch constant place in test
      staging: rtl8723bs: Remove commented code
      staging: rtl8723bs: Replace string with identifier
      staging: rtl8723bs: Remove space before tab
      staging: rtl8723bs: Fix line over 80 characters
      staging: rtl8723bs: Fix function call wrapping style
      staging: rtl8723bs: Add space between elements
      staging: rtl8723bs: Fix incorrect type in declaration
      staging: rtl8723bs: Remove commented code
      staging: rtl8723bs: Remove duplicate blank lines
      staging: rtl8723bs: Remove space before tabs
      staging: rtl8723bs: Fix style in definitions
      staging: rtl8723bs: Replace string with identifier
      staging: rtl8723bs: Fix lines over 80 characters
      staging: rtl8723bs: Add spaces between operators
      staging: rtl8723bs: Remove commented code
      staging: rtl8723bs: Fix indentation warnings
      staging: rtl8723bs: Fix function call format
      staging: rtl8723bs: Change tabs for spaces
      staging: emxx_udc: Fix invalid reference error
      staging: rtl8723bs: Remove unnecessary parentheses
      staging: rtl8723bs: Fix lines over 80 characters
      staging: rtl8723bs: Fix line over 80 characters
      staging: rtl8723bs: Simplify boolean expression
      staging: rtl8723bs: Remove commented code
      staging: rtl8723bs: Remove multiple blank lines
      staging: rtl8723bs: Remove blank lines before a close brace
      staging: rtl8723bs: Remove blank lines after an open brace
      staging: rtl8723bs: Remove unnecessary braces

Jean-Baptiste Maneyrol (7):
      iio: imu: inv_mpu6050: disable i2c mux for MPU925x
      iio: imu: inv_mpu6050: add header include protection macro
      iio: imu: inv_mpu6050: add defines for supporting 9-axis chips
      iio: imu: inv_mpu6050: fix objects syntax in Makefile
      iio: imu: inv_mpu6050: helpers for using i2c master on auxiliary bus
      iio: imu: inv_mpu6050: add MPU925x magnetometer support
      iio: imu: inv_mpu6050: add fifo support for magnetometer data

Jerry Lin (2):
      staging: olpc_dcon: allow simultaneous XO-1 and XO-1.5 support
      staging: olpc_dcon: fix wrong dependencies in Kconfig file

Jonathan Cameron (29):
      Merge branch 'ib-ti-eqep-5.4-rc1' into togreg
      Merge branch 'ib-ab8500-5.4-rc1' into HEAD
      iio: adc: at91-sama5d2: Replace 0 with NULL when clearing some pointe=
rs.
      iio: adc: mcp320x: Tidy up endian types in type cast.
      iio: adc: stmpe-adc: Cleanup endian type of local variable
      iio: chemical: sps30: Explicity truncate constant by masking
      iio: gyro: mpu3050: Explicity make a 'poison' value big endian
      iio: pressure: bmp280 endian tidy ups
      iio: proximity: pulsedlight v2: Tidy up an endian issue
      iio: adc: exynos: Drop a stray semicolon
      iio: adc: exynos: use devm_platform_ioremap_resource
      iio: adc: meson_saradc: use devm_platform_ioremap_resource
      iio: adc: cpcap-adc: Fix missing IRQF_ONESHOT as only threaded handle=
r.
      iio: temp: maxim thermocouple: Drop unneeded semi colon.
      iio: adc: xilinx-xadc: use devm_platform_ioremap_resource
      iio: adc: twl4030: Use false / true instead of 0 / 1 with booleans
      iio: chemical: sgp30: drop excess semicolon
      iio: adc: aspeed: use devm_platform_ioremap_resource
      iio: adc: mt6577_auxdac: use devm_platform_ioremap_resource
      iio: adc: bcm_iproc_adc: drop a stray semicolon
      iio: adc: cc10001: use devm_platform_ioremap_resource
      iio: adc: ingenic: Use devm_platform_ioremap_resource
      iio: adc: lpc18xx: use devm_platform_ioremap_resource
      iio: adc: npcm: use devm_platform_ioremap_resource
      iio: adc: rcar-gyroadc: use devm_platform_ioremap_resource
      iio: adc: spear_adc: Use devm_platform_ioremap_resource
      iio: adc: vf610: use devm_platform_ioremap_resource
      iio: dac: lpc18xx: Use devm_platform_ioremap_resource
      iio: dac: vf610: Use devm_platform_ioremap_resource

Jules Irenge (20):
      staging: qlge: correct a misspelled word
      staging: qlge: fix "alignment should match open parenthesis" checks
      staging: qlge: Fix multiple assignments warning by replacing integer =
variables to bool
      staging: qlge: add space to fix check warning
      staging: qlge: fix comparison to NULL warning
      staging: vc04_services: place the AND operator at the end of the prev=
ious line
      staging: uwb: fix coccinelle warnings of comparison to bool
      staging: vc04_services: fix check warnings of line over 80 characters
      staging: vc04_services: fix warnings of scpace required between opera=
tor
      staging: vc04_services: fix warnings of Block comments use of *
      staging: wfx: fix warnings of no space is necessary
      staging: wfx: fix warning of line over 80 characters
      staging: wfx: fix warnings of logical continuation
      staging: wfx: correct misspelled words
      staging: wfx: fix warnings of alignment should match open parenthesis
      staging: wfx: replace 0 by NULL
      staging: wfx: replace 1 by true
      staging: mt7621-dma: align to match open parenthesis
      staging: wfx: replace uintXX_t to uXX and intXX_t to sXX
      staging: align to fix warnings of line over 80 characters

J=E9r=F4me Pouiller (35):
      staging: wfx: add infrastructure for new driver
      staging: wfx: add support for I/O access
      staging: wfx: add I/O API
      staging: wfx: add tracepoints for I/O access
      staging: wfx: load firmware
      staging: wfx: import HIF API headers
      staging: wfx: add IRQ handling
      staging: wfx: add tracepoints for HIF
      staging: wfx: add support for start-up indication
      staging: wfx: instantiate mac80211 data
      staging: wfx: allow to send commands to chip
      staging: wfx: add HIF commands helpers
      staging: wfx: introduce "secure link"
      staging: wfx: setup initial chip configuration
      staging: wfx: add debug files and trace debug events
      staging: wfx: allow to send 802.11 frames
      staging: wfx: allow to receive 802.11 frames
      staging: wfx: allow to scan networks
      staging: wfx: implement 802.11 key handling
      staging: wfx: implement the rest of mac80211 API
      staging: wfx: simplify memory allocation in wfx_update_filtering()
      staging: wfx: remove misused call to cpu_to_le16()
      staging: wfx: le16_to_cpus() takes a reference as parameter
      staging: wfx: correctly cast data on big-endian targets
      staging: wfx: fix copy_{to,from}_user() usage
      staging: wfx: drop calls to BUG_ON()
      staging: wfx: avoid namespace contamination
      staging: wfx: fix error handling in wfx_tx_get_raw_link_id()
      staging: wfx: fix potential vulnerability to spectre
      staging: wfx: drop module version
      staging: wfx: relocate wfx_fill_sl_key() in secure_link.h
      staging: wfx: fix CONFIG_MMC=3Dm with CONFIG_WFX=3Dy
      staging: wfx: fix Oops when CONFIG_OF_NET is not set
      staging: wfx: fix setting MAC address from DT
      staging: wfx: fix number of available tx_policies

Kees Cook (1):
      staging: rtl*: Remove tasklet callback casts

Kefeng Wang (1):
      staging: Use pr_warn instead of pr_warning

Krzysztof Kozlowski (7):
      staging: fbtft: Fix Kconfig indentation
      staging: fwserial: Fix Kconfig indentation
      staging: most: Fix Kconfig indentation
      staging: nvec: Fix Kconfig indentation
      staging: pi433: Fix Kconfig indentation
      staging: vc04: Fix Kconfig indentation
      staging: fwserial: Fix Kconfig indentation (seven spaces)

Krzysztof Wilczynski (1):
      iio: light: bh1750: Resolve compiler warning and make code more reada=
ble

Laura Abbott (1):
      tools: iio: Correctly add make dependency for iio_utils

Linus Walleij (8):
      power: supply: ab8500_btemp: Convert to IIO ADC
      power: supply: ab8500_charger: Convert to IIO ADC
      power: supply: ab8500_fg: Convert to IIO ADC
      hwmon: ab8500: Convert to IIO ADC
      mfd: ab8500: Augment DT bindings
      iio: adc: New driver for the AB8500 GPADC
      mfd: Switch the AB8500 GPADC to IIO
      iio: st: Drop GPIO include

Lorenzo Bianconi (24):
      iio: imu: st_lsm6dsx: enable LIR for sensor events
      iio: imu: st_lsm6dsx: enable clear on read for latched interrupts
      iio: imu: st_lsm6dsx: use st_lsm6dsx_read_locked in st_lsm6dsx_report=
_motion_event
      iio: imu: st_lsm6dsx: add sanity check for read_fifo pointer
      iio: imu: st_lsm6dsx: move irq related definitions in irq_config
      iio: imu: st_lsm6dsx: do not access active-low/open-drain regs if not=
 supported
      iio: imu: st_lsm6dsx: move bdu/boot and reset register info in hw_set=
tings
      iio: imu: st_lsm6dsx: always check enable_reg in st_lsm6dsx_event_set=
up
      iio: imu: st_lsm6dsx: rely on st_lsm6dsx_update_bits_locked configuri=
ng events
      iio: imu: st_lsm6dsx: grab conf mutex in st_lsm6dsx_write_event_config
      iio: imu: st_lsm6dsx: fix checkpatch warning
      iio: imu: st_lsm6dsx: add wakeup_source in st_sensors_platform_data
      iio: imu: st_lsm6dsx: add missing kernel documenation
      dt-bindings: iio: imu: st_lsm6dsx: document missing wakeup-source pro=
perty
      iio: imu: st_lsm6dsx: enable wake-up event for LSM6DSO
      iio: imu: st_lsm6dsx: enable drdy-mask if available
      iio: imu: st_lsm6dsx: fix gyro gain definitions for LSM9DS1
      iio: imu: st_lsm6dsx: add support to LSM6DS0
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6ds0 device bindings
      iio: imu: st_lsm6dsx: add support to LSM6DSRX
      dt-bindings: iio: imu: st_lsm6dsx: add lsm6dsrx device bindings
      iio: imu: st_lsm6dsx: explicitly define odr table size
      iio: imu: st_lsm6dsx: fix ODR check in st_lsm6dsx_write_raw
      iio: imu: st_lsm6dsx: express odr in mHZ

Manivannan Sadhasivam (2):
      dt-bindings: iio: light: Add binding for ADUX1020
      iio: light: Add support for ADUX1020 sensor

Marcelo Diop-Gonzalez (6):
      staging: vchiq: Have vchiu_queue_init() return 0 on success.
      staging: vchiq: Refactor indentation in vchiq_platform_conn_state_cha=
nged()
      staging: vchiq: Fix block comment format in vchiq_dump()
      staging: vchiq_dump: Replace min with min_t
      staging: vchiq: Refactor indentation in vchiq_dump_* functions
      staging: vchiq: Have vchiq_dump_* functions return an error code

Marcelo Schmitt (2):
      dt-bindings: iio: adc: Add dt-schema for AD7292
      iio: adc: Add driver support for AD7292

Marcus Folkesson (2):
      dt-bindings: iio: dac: Migrate LTC1660 documentation to yaml
      dt-bindings: iio: adc: Migrate MCP3911 documentation to yaml

Mario Tesi (1):
      iio: imu: st_lsm6dsx: add odr calibration feature

Matteo Croce (1):
      staging: vchiq: don't print pointless kernel address

Michael Hennerich (2):
      staging: fbtft: fbtft-core: Fix last line displayed on fbcon
      drivers/staging/fbtft/fb_seps525: New driver for SEPS525 (Syncoam) LC=
D Controllers

Michael Straube (25):
      staging: rtl8723bs: remove return statements from void functions
      staging: rtl8188eu: cleanup long line in rtw_mlme_ext.c
      staging: rtl8723bs: remove unused function write_cam_from_cache
      staging: rtl8188eu: convert variables from unsigned char to u8
      staging: rtl8188eu: rename variables to avoid mixed case
      staging: rtl8188eu: cleanup whitespace in update_hw_ht_param
      staging: rtl8188eu: cleanup comments in update_hw_ht_param
      staging: rtl8188eu: remove unnecessary asignment and initialization
      staging: rtl8188eu: remove braces from single statement if block
      staging: rtl8188eu: remove unnecessary conversion to bool
      staging: rtl8188eu: rename variables to avoid mixed case
      staging: rtl8188eu: convert variables from unsigned char to u8
      staging: rtl8188eu: remove blank lines
      staging: rtl8188eu: remove code valid only for 5 GHz
      staging: rtl8188eu: cleanup comments in rtw_sta_mgt.c
      staging: rtl8188eu: convert unsigned char array to u8
      staging: rtl8188eu: rename array bcast_addr
      staging: rtl8188eu: convert rtw_access_ctrl to return bool
      staging: rtl8188eu: remove ternary operator
      staging: rtl8188eu: cleanup long lines in rtw_sta_mgt.c
      staging: rtl8188eu: reduce indentation level in rtw_alloc_stainfo
      staging: rtl8188eu: remove exit label from rtw_alloc_stainfo
      staging: rtl8188eu: reduce indentation level in _rtw_free_sta_priv
      staging: rtl8188eu: remove return variable from rtw_init_bcmc_stainfo
      staging: rtl8188eu: replace tabs with spaces - style

Miquel Raynal (8):
      iio: adc: max1027: Add debugfs register read support
      iio: adc: max1027: Make it optional to use interrupts
      iio: adc: max1027: Reset the device at probe time
      iio: adc: max1027: Prepare the introduction of different resolutions
      iio: adc: max1027: Introduce 12-bit devices support
      dt-bindings: iio: adc: max1027: Mark interrupts as optional
      dt-bindings: Add 1027/1029/1031 SPI ADCs as trivial devices
      dt-bindings: Add max12xx SPI ADC series as trivial devices

Mircea Caprioru (3):
      iio: adc: ad7192: Add sysfs ABI documentation
      iio: adc: ad_sigma_delta: Export ad_sd_calibrate
      staging: iio: adc: ad7192: Add system calibration support

Nachammai Karuppiah (8):
      staging: vc04_services: Avoid typedef
      staging: rtl8723bs: os_dep: Remove typecast in kfree
      staging: rtl8723bs: core: Remove typecast in call to kfree
      staging: vc04_services: Avoid NULL comparison
      staging: qlge: Avoid NULL comparison
      staging: wfx: Remove local variable used only in return statement.
      staging: rtl8723bs: os_dep: Remove unnecessary variable used in retur=
n statement
      staging: rtl8723bs: hal: Remove unnecessary typecast in kfree.

Navid Emamdoost (2):
      staging: rtl8192u: release memory on error path
      staging: rtl8192u: fix multiple memory leaks on error path

Nuno S=E1 (4):
      iio: temperature: Add support for LTC2983
      dt-bindings: iio: Add ltc2983 documentation
      iio: adis16480: Fix scales factors
      iio: adis16480: Add debugfs_reg_access entry

Pan Bian (1):
      staging: rtl8192e: fix potential use after free

Paul Burton (1):
      staging/octeon: Use stubs for MIPS && !CAVIUM_OCTEON_SOC

Phil Reid (2):
      dt-binding: iio: Add optional label property
      iio: core: Add optional symbolic label to device attributes

Quentin Deslandes (3):
      staging: axis-fifo: avoid parsing ignored device tree properties
      staging: axis-fifo: request resources using managed functions
      staging: axis-fifo: remove unused pointer to memory resource

Rishi Gupta (3):
      iio: light: add driver for veml6030 ambient light sensor
      dt-bindings: iio: light: add veml6030 ALS bindings
      iio: documentation: light: Add veml6030 sysfs documentation

Robert Jones (2):
      dt-bindings: iio: imu: add fxos8700 imu binding
      iio: imu: Add support for the FXOS8700 IMU

Rohit Sarkar (4):
      staging: iio: ADIS16240: Remove unused include
      staging: rtl8192u: ieee80211: Replace snprintf with scnprintf
      staging: rtl8712: Replace snprintf with scnprintf
      staging: rtl8712: fix boundary condition for n

Roi Martin (6):
      staging: exfat: remove unnecessary parentheses
      staging: exfat: make alignment match open parenthesis
      staging: exfat: remove unnecessary new line in if condition
      staging: exfat: replace printk(KERN_INFO ...) with pr_info()
      staging: exfat: avoid multiple assignments
      staging: exfat: replace kmalloc with kmalloc_array

Saiyam Doshi (1):
      staging: rtl8723bs: remove unneeded conversion to bool

Samuil Ivanov (1):
      Staging: qlge: Rewrite two while loops as simple for loops

Sean Nyekjaer (5):
      iio: imu: st_lsm6dsx: move interrupt thread to core
      iio: imu: st_lsm6dsx: add motion events
      iio: imu: st_lsm6dsx: add wakeup-source option
      iio: imu: st_lsm6dsx: always enter interrupt thread
      iio: imu: st_lsm6dsx: add motion report function and call from interr=
upt

Sergio Paracuellos (2):
      staging: mt7621-pci: add quirks for 'E2' revision using 'soc_device_a=
ttribute'
      MIPS: ralink: enable PCI support only if driver for mt7621 SoC is sel=
ected

Stefan Popa (1):
      iio: dac: ad5446: Add support for new AD5600 DAC

Stephan Gerhold (2):
      dt-bindings: iio: imu: mpu6050: add vdd-supply
      iio: imu: mpu6050: Add support for vdd-supply regulator

Sudip Mukherjee (2):
      staging: rtl8723bs: reduce stack usage of rtw_cfg80211_unlink_bss
      staging: rtl8723bs: reduce stack usage of cfg80211_rtw_scan

Sumera Priyadarsini (4):
      staging: rtl8192u: Remove unnecessary blank lines
      staging: rtl8192u: Fix alignment to match open parenthesis
      staging: rtl8192u: Remove unnecessary line-breaks in function signatu=
res
      staging: rtl8192u: Fix indentation for cleaner code

Sven Van Asbroeck (2):
      staging: fieldbus core: remove unused strings
      staging: fieldbus: move "offline mode" definition to fieldbus core

Thomas Meyer (1):
      staging: wlan-ng: p80211wep.c: use lib/crc32

Tim Collier (5):
      staging: wlan-ng: remove unnecessary casts from prism2usb.c
      staging: wlan-ng: shorten lines over 80 characters in hfa384x.h
      staging: wlan-ng: correct parameter alignment in hfa384x.h
      staging: wlan-ng: fix compilation for USB debugging
      staging: wlan-ng: remove unused field from struct hfa384x_usbctlx

Tomasz Duszynski (2):
      dt-bindings: iio: light: bh1750: convert bindings to yaml
      MAINTAINERS: add entry for ROHM BH1750 driver

Valdis Kletnieks (33):
      staging: exfat: fix fs_sync() calls.
      staging: exfat: explain the fs_sync() issue in TODO
      staging: exfat: Clean up return codes - FFS_FULL
      staging: exfat: Clean up return codes - FFS_NOTFOUND
      staging: exfat: Clean up return codes - FFS_DIRBUSY
      staging: exfat: Clean up return codes - FFS_PERMISSIONERR
      staging: exfat: Clean up return codes - FFS_NAMETOOLONG
      staging: exfat: Clean up return codes - FFS_FILEEXIST
      staging: exfat: Clean up return codes - FFS_INVALIDPATH
      staging: exfat: Clean up return code - FFS_MEMORYERR
      staging: exfat: Update MAINTAINERS file
      staging: exfat: Clean up return codes - FFS_FORMATERR
      staging: exfat: Clean up return codes - FFS_MEDIAERR
      staging: exfat: Clean up return codes - FFS_EOF
      staging: exfat: Clean up return codes - FFS_INVALIDFID
      staging: exfat: Clean up return codes - FFS_ERROR
      staging: exfat: Clean up return codes - remove unused codes
      staging: exfat: Clean up return codes - FFS_SUCCESS
      staging: exfat: Collapse redundant return code translations
      staging: exfat: Correct return code
      staging: exfat: Remove FAT/VFAT mount support, part 1
      staging: exfat: Remove FAT/VFAT mount support, part 2
      staging: exfat: Remove FAT/VFAT mount support, part 3
      staging: exfat: Remove FAT/VFAT mount support, part 4
      staging: exfat: Clean up the namespace pollution part 1
      staging: exfat: Clean up the namespace pollution part 2
      staging: exfat: Clean up the namespace pollution part 3
      staging: exfat: Clean up the namespace pollution part 4
      staging: exfat: Clean up the namespace pollution part 5
      staging: exfat: Clean up the namespace pollution part 6
      staging: exfat: Clean up the namespace pollution part 7
      staging: exfat: Clean up the namespace pollution part 8
      staging: exfat: Update the TODO file

Valery Ivanov (1):
      staging: octeon: fix missing a blank line after declaration

Vincent Pelletier (1):
      iio: adc: intel_mrfld_adc: Add Basin Cove ADC driver

Wambui Karuga (21):
      staging: octeon: Remove typedef declaration
      staging: kpc2000: Remove unnecessary return variable
      staging: rtl8712: Align function arguments with opening paranthesis
      staging: octeon: Fix incorrect type in assignment
      staging: rtl8723bs: Remove comparisons to NULL in conditionals
      staging: rtl8723bs: Remove unnecessary braces for single statements
      staging: rtl8723bs: Remove comparisons to booleans in conditionals.
      staging: rtl8723bs: Remove unnecessary blank lines
      staging: isdn: remove assignment in if conditionals
      staging: rtl8723bs: Remove comparison to NULL
      staging: octeon: remove typedef declaration for cvmx_wqe
      staging: octeon: remove typedef declaration for cvmx_helper_link_info
      staging: octeon: remove typedef declaration for cvmx_fau_reg_32
      staging: octeon: remove typedef declartion for cvmx_pko_command_word0
      staging: octeon: remove typedef declaration for cvmx_fau_op_size
      staging: rtl8712: remove unnecessary return variables
      staging: rtl8712: clean up function headers
      staging: vc04_services: use DIV_ROUND_UP helper macro
      staging: rtl8723bs: use DIV_ROUND_UP helper macro
      staging: rtl8723bs: remove casts to pointers in kfree
      staging: octeon: fix restricted __be16 degrades to integer

William Breathitt Gray (3):
      counter: Simplify the count_read and count_write callbacks
      docs: driver-api: generic-counter: Update Count and Signal data types
      counter: Fix typo in action_get description

Xianting Tian (1):
      staging: rtl8192u: Fix typo in comment

YueHaibing (9):
      staging: clocking-wizard: use devm_platform_ioremap_resource() to sim=
plify code
      staging: emxx_udc: use devm_platform_ioremap_resource() to simplify c=
ode
      staging: rtl8723bs: Remove unnecessary null check
      staging: rtl8723bs: remove unnecessary null check
      staging: ralink-gdma: use devm_platform_ioremap_resource() to simplif=
y code
      staging: netlogic: use devm_platform_ioremap_resource() to simplify c=
ode
      staging: mt7621-dma: use devm_platform_ioremap_resource() to simplify=
 code
      staging: comedi: remove unused variable 'route_table_size'
      staging: exfat: remove two unused functions

zhengbin (19):
      staging: rtl8723bs: Remove set but not used variable 'oldcnt'
      staging: rtl8723bs: Remove set but not used variable 'tmp_aid'
      staging: rtl8723bs: Remove set but not used variable 'prwskeylen'
      staging: rtl8723bs: Remove set but not used variables 'ppp', 'type', =
'data'
      staging: rtl8723bs: Remove set but not used variable 'adapter'
      staging: bcm2835-audio: Need to judge the return value of vchi_msg_de=
queue in audio_vchi_callback
      staging: sm750fb: Remove set but not used variable 'uiActualPixelClk'
      staging: sm750fb: Remove set but not used variable 'actual_mx_clk'
      staging: comedi: Remove set but not used variable 'aref'
      staging: wfx: Make function 'sram_write_dma_safe', 'load_firmware_sec=
ure' static
      staging: wfx: Make function 'wfx_tx_queue_get' static
      staging: wfx: Make some functions static in sta.c
      staging: rtl8723bs: Remove set but not used variable 'i'
      staging: rtl8192e: remove set but not used variable 'frag'
      staging: rtl8723bs: remove set but not used variable 'pHalData', 'pre=
gistrypriv'
      staging: rtl8723bs: remove set but not used variable 'pHalData', 'pdm=
priv'
      staging: rtl8723bs: remove set but not used variable 'pmlmeinfo', 'pH=
alData'
      staging: rtl8723bs: remove set but not used variable 'notify_ielen', =
'notify_ie', 'notify_interval', 'notify_capability'
      staging: rtl8723bs: remove set but not used variable 'change', 'pos'

 Documentation/ABI/testing/sysfs-bus-iio            |   11 +
 Documentation/ABI/testing/sysfs-bus-iio-adc-ad7192 |   39 +
 .../devicetree/bindings/counter/ti-eqep.yaml       |   50 +
 .../devicetree/bindings/iio/adc/adi,ad7292.yaml    |  104 +
 .../devicetree/bindings/iio/adc/ingenic,adc.txt    |    1 +
 .../devicetree/bindings/iio/adc/max1027-adc.txt    |   20 -
 .../devicetree/bindings/iio/adc/mcp3911.txt        |   30 -
 .../bindings/iio/adc/microchip,mcp3911.yaml        |   71 +
 .../devicetree/bindings/iio/adc/st,stm32-adc.txt   |    2 +
 .../devicetree/bindings/iio/dac/lltc,ltc1660.yaml  |   49 +
 .../devicetree/bindings/iio/dac/ltc1660.txt        |   21 -
 .../devicetree/bindings/iio/iio-bindings.txt       |    5 +
 .../devicetree/bindings/iio/imu/inv_mpu6050.txt    |    1 +
 .../devicetree/bindings/iio/imu/nxp,fxos8700.yaml  |   76 +
 .../devicetree/bindings/iio/imu/st_lsm6dsx.txt     |    3 +
 .../devicetree/bindings/iio/light/adux1020.yaml    |   47 +
 .../devicetree/bindings/iio/light/bh1750.txt       |   18 -
 .../devicetree/bindings/iio/light/bh1750.yaml      |   43 +
 .../devicetree/bindings/iio/light/veml6030.yaml    |   62 +
 .../bindings/iio/proximity/maxbotix,mb1232.txt     |   29 -
 .../bindings/iio/proximity/maxbotix,mb1232.yaml    |   60 +
 .../bindings/iio/temperature/adi,ltc2983.yaml      |  480 +++++
 Documentation/devicetree/bindings/mfd/ab8500.txt   |  119 ++
 .../devicetree/bindings/trivial-devices.yaml       |   12 +
 Documentation/driver-api/generic-counter.rst       |  162 +-
 MAINTAINERS                                        |   47 +-
 arch/mips/ralink/Kconfig                           |    1 +
 drivers/bus/Kconfig                                |    9 +
 drivers/bus/Makefile                               |    1 +
 drivers/{pwm/pwm-tipwmss.c =3D> bus/ti-pwmss.c}      |    0
 drivers/counter/104-quad-8.c                       |   33 +-
 drivers/counter/Kconfig                            |   11 +
 drivers/counter/Makefile                           |    1 +
 drivers/counter/counter.c                          |  101 +-
 drivers/counter/ftm-quaddec.c                      |   14 +-
 drivers/counter/stm32-lptimer-cnt.c                |    7 +-
 drivers/counter/stm32-timer-cnt.c                  |   23 +-
 drivers/counter/ti-eqep.c                          |  466 +++++
 drivers/hwmon/Kconfig                              |    3 +-
 drivers/hwmon/ab8500.c                             |   65 +-
 drivers/iio/accel/st_accel_core.c                  |    1 -
 drivers/iio/adc/Kconfig                            |   35 +-
 drivers/iio/adc/Makefile                           |    3 +
 drivers/iio/adc/ab8500-gpadc.c                     | 1218 +++++++++++
 drivers/iio/adc/ad7292.c                           |  350 ++++
 drivers/iio/adc/ad7949.c                           |   33 +-
 drivers/iio/adc/ad_sigma_delta.c                   |    3 +-
 drivers/iio/adc/aspeed_adc.c                       |    4 +-
 drivers/iio/adc/at91-sama5d2_adc.c                 |    4 +-
 drivers/iio/adc/bcm_iproc_adc.c                    |    2 +-
 drivers/iio/adc/cc10001_adc.c                      |    4 +-
 drivers/iio/adc/cpcap-adc.c                        |    2 +-
 drivers/iio/adc/dln2-adc.c                         |   20 +-
 drivers/iio/adc/exynos_adc.c                       |    6 +-
 drivers/iio/adc/hx711.c                            |   22 +-
 drivers/iio/adc/ingenic-adc.c                      |  153 +-
 drivers/iio/adc/intel_mrfld_adc.c                  |  262 +++
 drivers/iio/adc/lpc18xx_adc.c                      |    4 +-
 drivers/iio/adc/max1027.c                          |  180 +-
 drivers/iio/adc/mcp320x.c                          |    2 +-
 drivers/iio/adc/meson_saradc.c                     |    4 +-
 drivers/iio/adc/mt6577_auxadc.c                    |    4 +-
 drivers/iio/adc/npcm_adc.c                         |    4 +-
 drivers/iio/adc/rcar-gyroadc.c                     |    4 +-
 drivers/iio/adc/sc27xx_adc.c                       |   16 +-
 drivers/iio/adc/spear_adc.c                        |    4 +-
 drivers/iio/adc/stm32-adc-core.c                   |   27 +-
 drivers/iio/adc/stm32-adc.c                        |   21 +-
 drivers/iio/adc/stmpe-adc.c                        |    2 +-
 drivers/iio/adc/twl4030-madc.c                     |   18 +-
 drivers/iio/adc/vf610_adc.c                        |    4 +-
 drivers/iio/adc/xilinx-xadc-core.c                 |    4 +-
 drivers/iio/chemical/atlas-ph-sensor.c             |    8 +-
 drivers/iio/chemical/sgp30.c                       |    2 +-
 drivers/iio/chemical/sps30.c                       |    2 +-
 drivers/iio/dac/Kconfig                            |    4 +-
 drivers/iio/dac/ad5446.c                           |    6 +
 drivers/iio/dac/ad7303.c                           |   13 +-
 drivers/iio/dac/lpc18xx_dac.c                      |    4 +-
 drivers/iio/dac/stm32-dac-core.c                   |  138 +-
 drivers/iio/dac/stm32-dac.c                        |   94 +-
 drivers/iio/dac/vf610_dac.c                        |    4 +-
 drivers/iio/gyro/adis16080.c                       |    8 +-
 drivers/iio/gyro/adis16130.c                       |    2 -
 drivers/iio/gyro/adis16136.c                       |   24 +-
 drivers/iio/gyro/itg3200_core.c                    |    2 +-
 drivers/iio/gyro/mpu3050-core.c                    |    2 +-
 drivers/iio/gyro/st_gyro_core.c                    |    1 -
 drivers/iio/humidity/hdc100x.c                     |   19 +-
 drivers/iio/imu/Kconfig                            |   27 +
 drivers/iio/imu/Makefile                           |    5 +
 drivers/iio/imu/adis.c                             |    5 +-
 drivers/iio/imu/adis16400.c                        |   22 +-
 drivers/iio/imu/adis16460.c                        |    8 +-
 drivers/iio/imu/adis16480.c                        |  116 +-
 drivers/iio/imu/fxos8700.h                         |   10 +
 drivers/iio/imu/fxos8700_core.c                    |  649 ++++++
 drivers/iio/imu/fxos8700_i2c.c                     |   71 +
 drivers/iio/imu/fxos8700_spi.c                     |   59 +
 drivers/iio/imu/inv_mpu6050/Makefile               |    7 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c          |  204 ++
 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.h          |   19 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |  195 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_i2c.c          |   60 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h          |   74 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c         |  356 ++++
 drivers/iio/imu/inv_mpu6050/inv_mpu_magn.h         |   36 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c         |   11 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_trigger.c      |   86 +-
 drivers/iio/imu/st_lsm6dsx/Kconfig                 |    3 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |   87 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |  109 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       | 1056 ++++++++--
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c        |   10 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |   45 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c        |   10 +
 drivers/iio/industrialio-core.c                    |   17 +
 drivers/iio/light/Kconfig                          |   22 +
 drivers/iio/light/Makefile                         |    2 +
 drivers/iio/light/adux1020.c                       |  849 ++++++++
 drivers/iio/light/bh1750.c                         |    4 +-
 drivers/iio/light/cm36651.c                        |    2 +-
 drivers/iio/light/tcs3414.c                        |   30 +-
 drivers/iio/light/veml6030.c                       |  908 +++++++++
 drivers/iio/magnetometer/st_magn_core.c            |    1 -
 drivers/iio/pressure/bmp280-core.c                 |  130 +-
 drivers/iio/pressure/bmp280-i2c.c                  |    6 -
 drivers/iio/pressure/bmp280-spi.c                  |    6 -
 drivers/iio/pressure/bmp280.h                      |    1 -
 drivers/iio/pressure/cros_ec_baro.c                |    3 +
 drivers/iio/pressure/st_pressure_core.c            |    1 -
 drivers/iio/pressure/zpa2326.c                     |   16 +-
 drivers/iio/proximity/pulsedlight-lidar-lite-v2.c  |    5 +-
 drivers/iio/proximity/sx9500.c                     |   16 +-
 drivers/iio/temperature/Kconfig                    |   11 +
 drivers/iio/temperature/Makefile                   |    1 +
 drivers/iio/temperature/ltc2983.c                  | 1557 ++++++++++++++
 drivers/iio/temperature/max31856.c                 |    2 +
 drivers/iio/temperature/maxim_thermocouple.c       |    2 +-
 drivers/mfd/Kconfig                                |    7 -
 drivers/mfd/Makefile                               |    1 -
 drivers/mfd/ab8500-debugfs.c                       |  715 -------
 drivers/mfd/ab8500-gpadc.c                         | 1075 ----------
 drivers/power/supply/Kconfig                       |    2 +-
 drivers/power/supply/ab8500_btemp.c                |   41 +-
 drivers/power/supply/ab8500_charger.c              |   78 +-
 drivers/power/supply/ab8500_fg.c                   |   23 +-
 drivers/pwm/Kconfig                                |    9 -
 drivers/pwm/Makefile                               |    1 -
 drivers/staging/Kconfig                            |    2 +
 drivers/staging/Makefile                           |    1 +
 drivers/staging/axis-fifo/axis-fifo.c              |  301 +--
 drivers/staging/axis-fifo/axis-fifo.txt            |   18 +-
 drivers/staging/board/armadillo800eva.c            |   12 +-
 .../clocking-wizard/clk-xlnx-clock-wizard.c        |    4 +-
 drivers/staging/comedi/drivers/dt3000.c            |    3 +-
 drivers/staging/comedi/drivers/ni_routes.c         |    2 -
 drivers/staging/comedi/drivers/usbduxfast.c        |   21 +-
 drivers/staging/emxx_udc/emxx_udc.c                |   27 +-
 drivers/staging/exfat/Kconfig                      |    9 -
 drivers/staging/exfat/TODO                         |   61 +-
 drivers/staging/exfat/exfat.h                      |  186 +-
 drivers/staging/exfat/exfat_blkdev.c               |   28 +-
 drivers/staging/exfat/exfat_cache.c                |  303 +--
 drivers/staging/exfat/exfat_core.c                 | 2124 +++++-----------=
----
 drivers/staging/exfat/exfat_nls.c                  |  192 --
 drivers/staging/exfat/exfat_super.c                |  896 ++++-----
 drivers/staging/fbtft/Kconfig                      |   21 +-
 drivers/staging/fbtft/Makefile                     |    1 +
 drivers/staging/fbtft/fb_seps525.c                 |  213 ++
 drivers/staging/fbtft/fb_uc1611.c                  |   22 +-
 drivers/staging/fbtft/fbtft-core.c                 |  129 +-
 drivers/staging/fbtft/fbtft.h                      |    4 +-
 drivers/staging/fieldbus/anybuss/anybuss-client.h  |   11 +-
 drivers/staging/fieldbus/anybuss/arcx-anybus.c     |    8 +-
 drivers/staging/fieldbus/anybuss/hms-profinet.c    |    2 +-
 drivers/staging/fieldbus/anybuss/host.c            |    6 +-
 drivers/staging/fieldbus/dev_core.c                |    3 -
 drivers/staging/fieldbus/fieldbus_dev.h            |    6 +
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |   50 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h            |    5 +
 drivers/staging/fwserial/Kconfig                   |   26 +-
 drivers/staging/gasket/gasket_ioctl.c              |   16 +-
 drivers/staging/iio/accel/adis16240.c              |    1 -
 drivers/staging/iio/adc/ad7192.c                   |   79 +-
 drivers/staging/iio/frequency/ad9834.c             |    4 +
 drivers/staging/isdn/avm/b1.c                      |   41 +-
 drivers/staging/isdn/gigaset/interface.c           |    2 +-
 drivers/staging/kpc2000/kpc2000_i2c.c              |  204 +-
 drivers/staging/kpc2000/kpc2000_spi.c              |   24 +-
 drivers/staging/media/allegro-dvt/nal-h264.c       |    2 +-
 drivers/staging/most/Kconfig                       |    8 +-
 drivers/staging/most/cdev/cdev.c                   |    1 +
 drivers/staging/most/configfs.c                    |  124 +-
 drivers/staging/most/core.c                        |  108 +-
 drivers/staging/most/core.h                        |    1 +
 drivers/staging/most/net/net.c                     |    1 +
 drivers/staging/most/sound/sound.c                 |    1 +
 drivers/staging/most/video/video.c                 |    1 +
 drivers/staging/mt7621-dma/mtk-hsdma.c             |   21 +-
 drivers/staging/mt7621-pci/Kconfig                 |    1 -
 drivers/staging/mt7621-pci/pci-mt7621.c            |   23 +-
 drivers/staging/netlogic/TODO                      |    2 +-
 drivers/staging/netlogic/xlr_net.c                 |    3 +-
 drivers/staging/nvec/Kconfig                       |   10 +-
 drivers/staging/octeon-usb/octeon-hcd.c            |    3 +-
 drivers/staging/octeon/ethernet-mdio.c             |    6 +-
 drivers/staging/octeon/ethernet-rgmii.c            |    4 +-
 drivers/staging/octeon/ethernet-rx.c               |    6 +-
 drivers/staging/octeon/ethernet-tx.c               |    6 +-
 drivers/staging/octeon/ethernet.c                  |    6 +-
 drivers/staging/octeon/octeon-ethernet.h           |    4 +-
 drivers/staging/octeon/octeon-stubs.h              |  106 +-
 drivers/staging/olpc_dcon/Kconfig                  |   21 +-
 drivers/staging/olpc_dcon/Makefile                 |    4 +-
 drivers/staging/olpc_dcon/TODO                     |    1 -
 drivers/staging/olpc_dcon/olpc_dcon.c              |    6 +-
 drivers/staging/olpc_dcon/olpc_dcon.h              |    5 -
 drivers/staging/pi433/Kconfig                      |   24 +-
 drivers/staging/qlge/TODO                          |    3 -
 drivers/staging/qlge/qlge.h                        |  145 +-
 drivers/staging/qlge/qlge_dbg.c                    |  291 ++-
 drivers/staging/qlge/qlge_main.c                   |  909 ++++-----
 drivers/staging/qlge/qlge_mpi.c                    |    1 -
 drivers/staging/ralink-gdma/ralink-gdma.c          |    4 +-
 drivers/staging/rtl8188eu/core/rtw_ap.c            |   43 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |    5 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |    4 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |    2 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c       |    4 +-
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c       |  167 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |   26 +-
 drivers/staging/rtl8188eu/core/rtw_xmit.c          |    4 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c       |   55 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c  |    1 -
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c     |    3 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c     |    3 +-
 drivers/staging/rtl8188eu/include/rtl8188e_recv.h  |    2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h  |    2 +-
 drivers/staging/rtl8188eu/include/rtw_efuse.h      |    1 -
 drivers/staging/rtl8188eu/include/sta_info.h       |    2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |   30 +-
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c   |    8 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c     |    3 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |    9 +-
 drivers/staging/rtl8192e/rtllib_softmac.c          |    7 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |    4 +-
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c |    9 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c  |    8 +-
 drivers/staging/rtl8192u/r8190_rtl8256.c           |    4 +-
 drivers/staging/rtl8192u/r8192U_core.c             |  135 +-
 drivers/staging/rtl8192u/r819xU_cmdpkt.c           |   25 +-
 drivers/staging/rtl8712/rtl8712_led.c              |    2 +-
 drivers/staging/rtl8712/rtl8712_recv.c             |   47 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |    8 +-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c         |  103 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |    5 +-
 drivers/staging/rtl8712/rtl871x_xmit.h             |    2 +-
 drivers/staging/rtl8712/usb_ops_linux.c            |    4 +-
 drivers/staging/rtl8723bs/core/rtw_ap.c            |   11 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |   20 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c          |  174 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |   23 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c       |    1 -
 drivers/staging/rtl8723bs/core/rtw_recv.c          |    9 +-
 drivers/staging/rtl8723bs/core/rtw_security.c      |  159 +-
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c       |    3 -
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     |   19 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c          |  402 +---
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c     |    2 -
 drivers/staging/rtl8723bs/hal/hal_btcoex.c         |    2 +-
 drivers/staging/rtl8723bs/hal/hal_com.c            |    1 -
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     | 1076 ----------
 drivers/staging/rtl8723bs/hal/odm_DIG.c            |    1 -
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c       |   10 -
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c        |    3 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c  |   12 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    |   77 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c    |   41 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |   13 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c       |    5 -
 drivers/staging/rtl8723bs/hal/sdio_ops.c           |  127 +-
 drivers/staging/rtl8723bs/include/drv_types.h      |    4 -
 drivers/staging/rtl8723bs/include/hal_com_phycfg.h |   26 -
 drivers/staging/rtl8723bs/include/hal_data.h       |   21 -
 drivers/staging/rtl8723bs/include/osdep_service.h  |    4 -
 .../rtl8723bs/include/osdep_service_linux.h        |    7 -
 drivers/staging/rtl8723bs/include/rtl8723b_hal.h   |   15 -
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h   |    1 -
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  |   56 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c     |   59 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |   23 +-
 drivers/staging/rtl8723bs/os_dep/osdep_service.c   |  136 --
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |    8 +-
 drivers/staging/rts5208/ms.c                       |   86 +-
 drivers/staging/rts5208/ms.h                       |   70 +-
 drivers/staging/rts5208/rtsx.c                     |    3 +-
 drivers/staging/rts5208/rtsx_transport.c           |    4 +-
 drivers/staging/rts5208/sd.h                       |    2 +-
 drivers/staging/rts5208/xd.c                       |    8 +-
 drivers/staging/rts5208/xd.h                       |    6 +-
 drivers/staging/sm750fb/ddk750_chip.c              |   41 +-
 drivers/staging/sm750fb/ddk750_chip.h              |   18 +-
 drivers/staging/sm750fb/ddk750_display.c           |    4 +-
 drivers/staging/sm750fb/ddk750_mode.c              |   16 +-
 drivers/staging/sm750fb/ddk750_sii164.c            |   28 +-
 drivers/staging/sm750fb/ddk750_sii164.h            |   11 +-
 drivers/staging/sm750fb/sm750_accel.c              |   94 +-
 drivers/staging/sm750fb/sm750_accel.h              |   83 +-
 drivers/staging/sm750fb/sm750_cursor.h             |   17 +-
 drivers/staging/uwb/rsv.c                          |    4 +-
 .../staging/vc04_services/bcm2835-audio/Kconfig    |   12 +-
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    |    9 +-
 .../staging/vc04_services/bcm2835-audio/bcm2835.h  |    2 +-
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |    4 +-
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      |    6 +-
 .../staging/vc04_services/interface/vchi/vchi.h    |  102 +-
 .../vc04_services/interface/vchi/vchi_cfg.h        |  172 +-
 .../vc04_services/interface/vchi/vchi_common.h     |   28 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c           |   23 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |  370 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |   32 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |  231 ++-
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |  104 +-
 .../interface/vchiq_arm/vchiq_debugfs.c            |   14 +-
 .../interface/vchiq_arm/vchiq_debugfs.h            |    4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_if.h   |   96 +-
 .../interface/vchiq_arm/vchiq_ioctl.h              |    6 +-
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  164 +-
 .../vc04_services/interface/vchiq_arm/vchiq_util.c |    4 +-
 drivers/staging/vt6655/card.c                      |   24 +-
 drivers/staging/vt6655/card.h                      |    2 +-
 drivers/staging/vt6655/device_main.c               |   14 +-
 drivers/staging/vt6655/power.c                     |   10 +-
 drivers/staging/vt6655/rf.c                        |    5 +-
 drivers/staging/vt6655/rf.h                        |   19 +-
 drivers/staging/vt6655/rxtx.c                      |    5 +-
 drivers/staging/vt6656/main_usb.c                  |    9 +-
 drivers/staging/vt6656/rxtx.c                      |    8 +-
 .../bindings/net/wireless/siliabs,wfx.txt          |   97 +
 drivers/staging/wfx/Kconfig                        |    8 +
 drivers/staging/wfx/Makefile                       |   24 +
 drivers/staging/wfx/TODO                           |   17 +
 drivers/staging/wfx/bh.c                           |  321 +++
 drivers/staging/wfx/bh.h                           |   32 +
 drivers/staging/wfx/bus.h                          |   36 +
 drivers/staging/wfx/bus_sdio.c                     |  271 +++
 drivers/staging/wfx/bus_spi.c                      |  267 +++
 drivers/staging/wfx/data_rx.c                      |  213 ++
 drivers/staging/wfx/data_rx.h                      |   19 +
 drivers/staging/wfx/data_tx.c                      |  837 ++++++++
 drivers/staging/wfx/data_tx.h                      |   93 +
 drivers/staging/wfx/debug.c                        |  311 +++
 drivers/staging/wfx/debug.h                        |   19 +
 drivers/staging/wfx/fwio.c                         |  413 ++++
 drivers/staging/wfx/fwio.h                         |   15 +
 drivers/staging/wfx/hif_api_cmd.h                  |  681 +++++++
 drivers/staging/wfx/hif_api_general.h              |  437 ++++
 drivers/staging/wfx/hif_api_mib.h                  |  557 +++++
 drivers/staging/wfx/hif_rx.c                       |  364 ++++
 drivers/staging/wfx/hif_rx.h                       |   18 +
 drivers/staging/wfx/hif_tx.c                       |  493 +++++
 drivers/staging/wfx/hif_tx.h                       |   68 +
 drivers/staging/wfx/hif_tx_mib.h                   |  293 +++
 drivers/staging/wfx/hwio.c                         |  352 ++++
 drivers/staging/wfx/hwio.h                         |   80 +
 drivers/staging/wfx/key.c                          |  268 +++
 drivers/staging/wfx/key.h                          |   22 +
 drivers/staging/wfx/main.c                         |  491 +++++
 drivers/staging/wfx/main.h                         |   47 +
 drivers/staging/wfx/queue.c                        |  619 ++++++
 drivers/staging/wfx/queue.h                        |   61 +
 drivers/staging/wfx/scan.c                         |  294 +++
 drivers/staging/wfx/scan.h                         |   42 +
 drivers/staging/wfx/secure_link.h                  |   57 +
 drivers/staging/wfx/sta.c                          | 1684 ++++++++++++++++
 drivers/staging/wfx/sta.h                          |  103 +
 drivers/staging/wfx/traces.h                       |  443 ++++
 drivers/staging/wfx/wfx.h                          |  208 ++
 drivers/staging/wilc1000/Makefile                  |    8 +-
 .../{wilc_wfi_cfgoperations.c =3D> cfg80211.c}       |  246 +--
 .../{wilc_wfi_cfgoperations.h =3D> cfg80211.h}       |    8 +-
 drivers/staging/wilc1000/{wilc_hif.c =3D> hif.c}     |   43 +-
 drivers/staging/wilc1000/{wilc_hif.h =3D> hif.h}     |    6 +-
 drivers/staging/wilc1000/{wilc_mon.c =3D> mon.c}     |    4 +-
 .../staging/wilc1000/{wilc_netdev.c =3D> netdev.c}   |  146 +-
 .../wilc1000/{wilc_wfi_netdevice.h =3D> netdev.h}    |   34 +-
 drivers/staging/wilc1000/{wilc_sdio.c =3D> sdio.c}   |    4 +-
 drivers/staging/wilc1000/{wilc_spi.c =3D> spi.c}     |   15 +-
 drivers/staging/wilc1000/{wilc_wlan.c =3D> wlan.c}   |    4 +-
 drivers/staging/wilc1000/{wilc_wlan.h =3D> wlan.h}   |    2 +-
 .../wilc1000/{wilc_wlan_cfg.c =3D> wlan_cfg.c}       |   30 +-
 .../wilc1000/{wilc_wlan_cfg.h =3D> wlan_cfg.h}       |    0
 .../staging/wilc1000/{wilc_wlan_if.h =3D> wlan_if.h} |    8 +-
 drivers/staging/wlan-ng/hfa384x.h                  |   18 +-
 drivers/staging/wlan-ng/hfa384x_usb.c              |    2 -
 drivers/staging/wlan-ng/p80211wep.c                |   64 +-
 drivers/staging/wlan-ng/prism2usb.c                |    6 +-
 include/dt-bindings/iio/adc/ingenic,adc.h          |    1 +
 include/linux/counter.h                            |   76 +-
 include/linux/iio/adc/ad_sigma_delta.h             |    2 +
 include/linux/iio/iio.h                            |    2 +
 include/linux/iio/imu/adis.h                       |    6 +-
 include/linux/mfd/abx500/ab8500-gpadc.h            |   75 -
 include/linux/platform_data/st_sensors_pdata.h     |    2 +
 tools/iio/Build                                    |    1 +
 tools/iio/Makefile                                 |   10 +-
 407 files changed, 26221 insertions(+), 11403 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-adc-ad7192
 create mode 100644 Documentation/devicetree/bindings/counter/ti-eqep.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7292.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/max1027-adc.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/mcp3911.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/microchip,mcp=
3911.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/dac/lltc,ltc1660.=
yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ltc1660.txt
 create mode 100644 Documentation/devicetree/bindings/iio/imu/nxp,fxos8700.=
yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/adux1020.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/bh1750.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/bh1750.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/veml6030.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/proximity/maxboti=
x,mb1232.txt
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/maxboti=
x,mb1232.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/adi,l=
tc2983.yaml
 rename drivers/{pwm/pwm-tipwmss.c =3D> bus/ti-pwmss.c} (100%)
 create mode 100644 drivers/counter/ti-eqep.c
 create mode 100644 drivers/iio/adc/ab8500-gpadc.c
 create mode 100644 drivers/iio/adc/ad7292.c
 create mode 100644 drivers/iio/adc/intel_mrfld_adc.c
 create mode 100644 drivers/iio/imu/fxos8700.h
 create mode 100644 drivers/iio/imu/fxos8700_core.c
 create mode 100644 drivers/iio/imu/fxos8700_i2c.c
 create mode 100644 drivers/iio/imu/fxos8700_spi.c
 create mode 100644 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.c
 create mode 100644 drivers/iio/imu/inv_mpu6050/inv_mpu_aux.h
 create mode 100644 drivers/iio/imu/inv_mpu6050/inv_mpu_magn.c
 create mode 100644 drivers/iio/imu/inv_mpu6050/inv_mpu_magn.h
 create mode 100644 drivers/iio/light/adux1020.c
 create mode 100644 drivers/iio/light/veml6030.c
 create mode 100644 drivers/iio/temperature/ltc2983.c
 delete mode 100644 drivers/mfd/ab8500-gpadc.c
 create mode 100644 drivers/staging/fbtft/fb_seps525.c
 create mode 100644 drivers/staging/wfx/Documentation/devicetree/bindings/n=
et/wireless/siliabs,wfx.txt
 create mode 100644 drivers/staging/wfx/Kconfig
 create mode 100644 drivers/staging/wfx/Makefile
 create mode 100644 drivers/staging/wfx/TODO
 create mode 100644 drivers/staging/wfx/bh.c
 create mode 100644 drivers/staging/wfx/bh.h
 create mode 100644 drivers/staging/wfx/bus.h
 create mode 100644 drivers/staging/wfx/bus_sdio.c
 create mode 100644 drivers/staging/wfx/bus_spi.c
 create mode 100644 drivers/staging/wfx/data_rx.c
 create mode 100644 drivers/staging/wfx/data_rx.h
 create mode 100644 drivers/staging/wfx/data_tx.c
 create mode 100644 drivers/staging/wfx/data_tx.h
 create mode 100644 drivers/staging/wfx/debug.c
 create mode 100644 drivers/staging/wfx/debug.h
 create mode 100644 drivers/staging/wfx/fwio.c
 create mode 100644 drivers/staging/wfx/fwio.h
 create mode 100644 drivers/staging/wfx/hif_api_cmd.h
 create mode 100644 drivers/staging/wfx/hif_api_general.h
 create mode 100644 drivers/staging/wfx/hif_api_mib.h
 create mode 100644 drivers/staging/wfx/hif_rx.c
 create mode 100644 drivers/staging/wfx/hif_rx.h
 create mode 100644 drivers/staging/wfx/hif_tx.c
 create mode 100644 drivers/staging/wfx/hif_tx.h
 create mode 100644 drivers/staging/wfx/hif_tx_mib.h
 create mode 100644 drivers/staging/wfx/hwio.c
 create mode 100644 drivers/staging/wfx/hwio.h
 create mode 100644 drivers/staging/wfx/key.c
 create mode 100644 drivers/staging/wfx/key.h
 create mode 100644 drivers/staging/wfx/main.c
 create mode 100644 drivers/staging/wfx/main.h
 create mode 100644 drivers/staging/wfx/queue.c
 create mode 100644 drivers/staging/wfx/queue.h
 create mode 100644 drivers/staging/wfx/scan.c
 create mode 100644 drivers/staging/wfx/scan.h
 create mode 100644 drivers/staging/wfx/secure_link.h
 create mode 100644 drivers/staging/wfx/sta.c
 create mode 100644 drivers/staging/wfx/sta.h
 create mode 100644 drivers/staging/wfx/traces.h
 create mode 100644 drivers/staging/wfx/wfx.h
 rename drivers/staging/wilc1000/{wilc_wfi_cfgoperations.c =3D> cfg80211.c}=
 (93%)
 rename drivers/staging/wilc1000/{wilc_wfi_cfgoperations.h =3D> cfg80211.h}=
 (86%)
 rename drivers/staging/wilc1000/{wilc_hif.c =3D> hif.c} (98%)
 rename drivers/staging/wilc1000/{wilc_hif.h =3D> hif.h} (99%)
 rename drivers/staging/wilc1000/{wilc_mon.c =3D> mon.c} (98%)
 rename drivers/staging/wilc1000/{wilc_netdev.c =3D> netdev.c} (89%)
 rename drivers/staging/wilc1000/{wilc_wfi_netdevice.h =3D> netdev.h} (93%)
 rename drivers/staging/wilc1000/{wilc_sdio.c =3D> sdio.c} (99%)
 rename drivers/staging/wilc1000/{wilc_spi.c =3D> spi.c} (98%)
 rename drivers/staging/wilc1000/{wilc_wlan.c =3D> wlan.c} (99%)
 rename drivers/staging/wilc1000/{wilc_wlan.h =3D> wlan.h} (99%)
 rename drivers/staging/wilc1000/{wilc_wlan_cfg.c =3D> wlan_cfg.c} (94%)
 rename drivers/staging/wilc1000/{wilc_wlan_cfg.h =3D> wlan_cfg.h} (100%)
 rename drivers/staging/wilc1000/{wilc_wlan_if.h =3D> wlan_if.h} (99%)
 delete mode 100644 include/linux/mfd/abx500/ab8500-gpadc.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
