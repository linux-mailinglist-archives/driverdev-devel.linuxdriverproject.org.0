Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A90141F0B6C
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jun 2020 15:28:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B787858D3;
	Sun,  7 Jun 2020 13:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OgD_4Tq6efst; Sun,  7 Jun 2020 13:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84F68855EF;
	Sun,  7 Jun 2020 13:27:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 696121BF23B
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 13:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5673187E81
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 13:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vE6L+oHmY15l for <devel@linuxdriverproject.org>;
 Sun,  7 Jun 2020 13:27:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE13887E76
 for <devel@linuxdriverproject.org>; Sun,  7 Jun 2020 13:27:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B749920723;
 Sun,  7 Jun 2020 13:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591536469;
 bh=DFi2lFLJwNIGg1SBTJygV52P3y78/TPHJZI17QexFmk=;
 h=Date:From:To:Cc:Subject:From;
 b=ZwPWbMbVstUKftk93mDHwjmF3ylo+yQBgwC0rzqsF5A+o5Xy+qvLWx24YC0XiyU9c
 KZ+EiyqnAi2Z1OjuRlE0GXvJbWIpX86CAVcwDaScdq4bqnAJ8WQVse+PFZL5uRvdlS
 jTHrCJmT5Nyf20G9Tw0oK1NaKEOQHLyQICoDzwEk=
Date: Sun, 7 Jun 2020 15:27:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver patches for 5.8-rc1
Message-ID: <20200607132747.GA168291@kroah.com>
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

The following changes since commit 9cb1fd0efd195590b828b9b865421ad345a4a145:

  Linux 5.7-rc7 (2020-05-24 15:32:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.8-rc1

for you to fetch changes up to 77f55d1305c11fb729b88f2c3f7881ba0831fa6f:

  staging: rtl8723bs: Use common packet header constants (2020-05-29 12:36:=
00 +0200)

----------------------------------------------------------------
Staging/IIO driver patches for 5.8-rc1

Here is the large set of staging and IIO driver changes for 5.8-rc1

Nothing major, but a lot of new IIO drivers are included in here, along
with other core iio cleanups and changes.

On the staging driver front, again, nothing noticable.  No new deletions
or additions, just a ton of tiny cleanups all over the tree done by a
lot of different people.  Most coding style, but many actual real fixes
and cleanups that are nice to see.

All of these have been in linux-next for a while with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Aiman Najjar (5):
      staging: rtl8712: fix checkpatch long-line warning
      staging: rtl8712: fix long-line checkpatch warning
      staging: rtl8712: fix checkpatch warnings
      staging: rtl8712: code improvements to make_wlanhdr
      staging: rtl8712: fix multiline derefernce warnings

Aishwarya Ramakrishnan (3):
      iio: adc: sun4i-gpadc-iio: Use devm_platform_ioremap_resource
      iio: adc: at91-adc: Use devm_platform_ioremap_resource
      iio: adc: fsl-imx25-gcq: Use devm_platform_ioremap_resource

Alexandru Ardelean (32):
      iio: adc: ad7780: define/use own IIO channel macros
      iio: adc: ad7791: define/use own IIO channel macros
      iio: adc: ad7793: define/use own IIO channel macros
      iio: ad_sigma_delta: remove unused IIO channel macros
      iio: buffer: re-introduce bitmap_zalloc() for trialmask
      iio: adc: ad7793: use read_avail iio hook for scale available
      iio: buffer: drop left-over 'stufftoread' field
      include: fpga: adi-axi-common.h: fixup whitespace tab -> space
      include: fpga: adi-axi-common.h: add version helper macros
      iio: buffer-dmaengine: use %zu specifier for sprintf(align)
      iio: buffer-dmaengine: add dev-managed calls for buffer alloc
      dt-bindings: iio: adc: add bindings doc for AXI ADC driver
      dt-bindings: iio: adc: add bindings doc for AD9467 ADC
      iio: buffer: remove 'scan_el_attrs' attribute group from buffer struct
      iio: move 'indio_dev->info' null check first in __iio_device_register=
()
      iio: core: drop devm_iio_device_unregister() API call
      iio: core: drop devm_iio_triggered_buffer_cleanup() API call
      iio: core: drop devm_iio_device_free() API call
      iio: core: drop devm_iio_trigger_unregister() API call
      iio: core: drop devm_iio_trigger_free() API call
      iio: inkern: drop devm_iio_channel_release{_all} API calls
      iio: buffer: drop devm_iio_hw_consumer_free() API call
      iio: buffer: drop devm_iio_kfifo_free() API call
      iio: light: isl29125: fix iio_triggered_buffer_{predisable,postenable=
} positions
      iio: at91-sama5d2_adc: split at91_adc_current_chan_is_touch() helper
      iio: at91-sama5d2_adc: adjust iio_triggered_buffer_{predisable,posten=
able} positions
      iio: buffer: extend short-hand use for 'indio_dev->buffer'
      iio: imu: adis16xxx: use helper to access iio core debugfs dir
      iio: hid-sensors: move triggered buffer setup into hid_sensor_setup_t=
rigger
      staging: iio: ad5933: attach life-cycle of kfifo buffer to parent dev=
ice and use managed calls throughout
      iio: buffer: remove attrcount_orig var from sysfs creation
      iio: proximity: ping: pass reference to IIO device as param to ping_r=
ead()

Alexandru Lazar (2):
      dt-bindings: iio: adc: Add MAX1241 bindings
      iio: adc: Add MAX1241 driver

Andreas Klinger (1):
      iio: bmp280: fix compensation of humidity

Andy Shevchenko (30):
      iio: light: st_uvis25: Drop unneeded casting when print error code
      iio: st_sensors: Use dev_get_platdata() to get platform_data
      iio: st_sensors: Drop unneeded explicit castings
      iio: st_sensors: Drop unneeded casting when print error code
      iio: st_sensors: Join string literals back
      iio: humidity: hts221: Use dev_get_platdata() to get platform_data
      iio: humidity: hts221: Make use of device properties
      iio: humidity: hts221: Drop unneeded casting when print error code
      iio: adc: intel_mrfld_adc: Use be16_to_cpu() instead of get_unaligned=
_be16()
      iio: pressure: bmp280: Tolerate IRQ before registering
      iio: pressure: bmp280: Convert to use ->read_avail()
      iio: pressure: bmp280: Explicitly mark GPIO optional
      iio: pressure: bmp280: Drop unneeded explicit castings
      iio: pressure: bmp280: Join string literals back
      iio: adc: ad_sigma_delta: Use {get,put}_unaligned_be24()
      iio: adc: mpc3422: Use get_unaligned_beXX()
      iio: adc: ti-ads124s08: Use get_unaligned_be24()
      iio: dac: ltc2632: Use put_unaligned_be24()
      iio: dac: ad5624r_spi: Use put_unaligned_be24()
      iio: dac: ad5446: Use put_unaligned_be24()
      iio: gyro: adis16130: Use get_unaligned_be24()
      iio: health: afe4403: Use get_unaligned_be24()
      iio: light: si1133: Use get_unaligned_be24()
      iio: light: zopt2201: Use get_unaligned_le24()
      iio: magnetometer: rm3100: Use get_unaligned_be24()
      iio: pressure: hp206c: Use get_unaligned_be24()
      iio: pressure: ms5611: Use get_unaligned_be24()
      iio: pressure: zpa2326: Use get_unaligned_le24()
      iio: temperature: max31856: Use get_unaligned_beXX()
      iio: st_sensors: Use get_unaligned_be24() and sign_extend32()

Arnd Bergmann (1):
      staging: wfx: avoid compiler warning on empty array

Beniamin Bia (1):
      iio: adc: ad7476: implement devm_add_action_or_reset

Briana Oursler (11):
      staging: vt6655: Remove multiple assignments.
      Staging: vt6655: Remove BBvCalculateParameter comment.
      Staging: vt6655: Limit return statements.
      Staging: vt6655: Move rate determination logic.
      Staging: vt6655: Eliminate nested if else
      Staging: vt6655: Format long lines.
      Staging: vt6655: Remove CARDbSoftwareReset definition.
      Staging: vt6655: Remove CARDvSetLoopbackMode definition.
      Staging: vt6655: Remove CARDbRadioPowerOn definition.
      Staging: vt6655: Remove BBvExitDeepSleep definition.
      Staging: vt6655: Replace camel case variable names.

Carlos Guerrero =C1lvarez (1):
      Staging: rtl8188eu: core: rtw_pwrctrl: fixed a coding style issue

Chen Zhou (1):
      staging: greybus: fix a missing-check bug in gb_lights_light_config()

Chris Ruehl (2):
      iio: documentation ltc2632_chip_info add num_channels
      iio: DAC extension for ltc2634-12/10/8

Christian Gromm (23):
      staging: most: usb: remove overcautious parameter checking
      staging: most: usb: use EINVAL error code
      staging: most: usb: drop unlikely macros
      staging: most: usb: consolidate code
      staging: most: usb: add PM functions
      staging: most: usb: use dev_*() functions to print messages
      staging: most: usb: remove reference to USB error codes
      staging: most: usb: check number of reported endpoints
      staging: most: usb: use dev_dbg function
      staging: most: fix typo in Kconfig
      staging: most: usb: use macro ATTRIBUTE_GROUPS
      Documentation: ABI: correct sysfs attribute description of MOST driver
      staging: most: usb: change order of function parameters
      staging: most: usb: don't use expressions that might fail in a declar=
ation
      staging: most: usb: change return value of function drci_rd_reg
      staging: most: usb: return 0 instead of variable
      staging: most: usb: move allocation of URB out of critical section
      staging: most: usb: don't use error path to exit function on success
      staging: most: usb: replace code to calculate array index
      staging: most: usb: use correct error codes
      staging: most: usb: add missing put_device calls
      staging: most: usb: use function sysfs_streq
      staging: most: usb: init return value in default path of switch/case =
expression

Christophe JAILLET (3):
      iio: imu: adis: Add a missing '\n' in a log message
      iio: dac: ad5593r: Fix a typo in MODULE_DESCRIPTION
      iio: dac: ad5592r: Fix a typo in the name of a function

Colin Ian King (5):
      staging: gdm724x: remove redundant assignment to pointer 'w'
      staging: vt6656: remove redundant assignment to variable ed_inx
      iio: adc: ad7476: remove redundant null check on an array
      staging: most: usb: sanity check channel before using it as an index =
into arrays
      staging: fbtft: fb_st7789v: make HSD20_IPS numeric and not a string

Dan Carpenter (1):
      staging: wfx: check ssidlen and prevent an array overflow

Dan Jessie (1):
      staging: greybus: hid: remove braces {} around single statement block

Daniel Campello (1):
      iio: Add SEMTECH SX9310/9311 sensor driver

Denis Straghkov (1):
      Staging: rtl8723bs: rtw_wlan_util: Add size check of SSID IE

Dmitry Osipenko (1):
      iio: magnetometer: ak8974: Silence deferred-probe error

Dragos Bogdan (3):
      iio: adc: ad7476: Generate CONVST signal internally
      iio: adc: ad7476: Add IIO_CHAN_INFO_RAW for AD7091R
      iio: adc: ad7476: Add AD7091 support

Eric Yu (1):
      Staging: comedi: drivers: ni_pcimio: Fix variable name

Eugen Hristev (2):
      iio: adc: at91-sama5d2_adc: handle unfinished conversions
      iio: adc: at91-sama5d2_adc: update for other trigger usage

Fabrice Gasnier (2):
      dt-bindings: iio: dac: stm32-dac: convert bindings to json-schema
      iio: adc: stm32-adc: fix a wrong error message when probing interrupts

Ga=EBtan Andr=E9 (2):
      dt-bindings: st_sensors: add st,lis2hh12 compatible entry
      iio: accel: st_sensors: add support for LIS2HH12

Geert Uytterhoeven (1):
      iio: Fix misspellings of "Analog Devices"

Gokce Kuler (1):
      staging: sm750fb: line over 80 characters

Greg Kroah-Hartman (6):
      Merge tag 'iio-for-5.8a' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      Merge 5.7-rc3 into staging-next
      Merge 5.7-rc5 into staging-next
      Merge tag 'iio-for-5.8b' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      Merge tag 'iio-for-5.8c' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      Merge 5.7-rc7 into staging-next

Guido G=FCnther (5):
      dt-bindings: iio: vcnl4000: convert bindings to YAML format
      dt-bindings: iio: Introduce common properties for iio sensors
      dt-bindings: iio: light: vcnl4000: Add proximity-near-level
      iio: vcnl4000: Export near level property for proximity sensor
      Documentation: ABI: document IIO in_proximity_nearlevel file

Hans de Goede (11):
      iio: light: cm32181: Switch to new style i2c-driver probe function
      iio: light: cm32181: Add support for ACPI enumeration
      iio: light: cm32181: Add some extra register defines
      iio: light: cm32181: Add support for the CM3218
      iio: light: cm32181: Clean up the probe function a bit
      iio: light: cm32181: Handle CM3218 ACPI devices with 2 I2C resources
      iio: light: cm32181: Change reg_init to use a bitmap of which registe=
rs to init
      iio: light: cm32181: Use units of 1/100000th for calibscale and lux_p=
er_bit
      iio: light: cm32181: Make lux_per_bit and lux_per_bit_base_it runtime=
 settings
      iio: light: cm32181: Add support for parsing CPM0 and CPM1 ACPI tables
      iio: light: cm32181: Fix integartion time typo

Houssem KADI (1):
      staging: bcm2835-camera: insert emty line after declaration

Igor Ribeiro Barbosa Duarte (1):
      staging: sm750fb: Add names to proc_setBLANK args

Ivan Mikhaylov (2):
      dt-bindings: proximity: provide vcnl3020 device tree binding document
      iio: proximity: Add driver support for vcnl3020 proximity sensor

Ivan Safonov (3):
      staging: r8188eu: replace rtw_malloc/copy_from_user sequence with mem=
dup_user
      staging:r8188eu: avoid skb_clone for amsdu to msdu conversion
      staging:rtl8723bs: eliminate usage of skb_clone after skb allocation =
fail

Jason Yan (13):
      staging: vc04_services: remove set but not used 'local_entity_uc'
      staging: rtl8723bs: remove some variables in hal_btcoex.c
      staging: rtl8723bs: remove defined but not used 'dB_Invert_Table'
      staging: mt7621-pinctrl: Use correct pointer type argument for sizeof
      staging: rtl8723bs: os_dep: remove set but not used 'uintRet'
      staging: rtl8723bs: os_dep: remove set but not used 'size'
      Staging: rtl8723bs: core: remove set but not used 'ptxservq'
      staging: rtl8723bs: core: remove set but not used 'algthm'
      staging: rtl8723bs: core: remove set but not used 'listen_interval'
      staging: rtl8723bs: core: remove set but not used 'pwrpriv'
      staging: rtl8723bs: core: remove set but not used 'pframe'
      staging: rtl8723bs: os_dep: remove rtw_spt_band_free()
      staging: rtl8723bs: remove conversion to bool in halbtcoutsrc_Get()

Jimmy Assarsson (2):
      iio: imu: st_lsm6dsx: Increase ODR_LIST_SIZE
      iio: imu: st_lsm6dsx: Add sensor hub device LIS3MDL

Johan Hovold (1):
      staging: greybus: uart: replace driver line-coding struct

Johan Jonker (3):
      dt-bindings: iio: adc: convert rockchip saradc bindings to yaml
      dt-bindings: iio: adc: rockchip-saradc: add description for rk3308
      dt-bindings: iio: adc: rockchip-saradc: add description for px30

John B. Wyatt IV (5):
      staging: vt6656: add error code handling to unused variable
      staging: android: ion: Align with parenthesis
      staging: comedi: Fix line ending with a (
      staging: axis-fifo: Fix parenthesis alignment
      staging: fsl-dpaa2: ethsw: Fix parenthesis alignment

John Oldman (7):
      staging: vc04_services: Block comment alignment
      Staging: rtl8723bs: os_de: if-else coding style issue
      staging: rtl8723bs: Using comparison to true is error prone
      staging: rtl8192u: Using comparison to true is error prone
      staging: rtl8192e: Using comparison to true is error prone
      staging: rtl8192e: Using comparison to true is error prone
      staging: rtl8192e: Using comparison to true is error prone

Jonathan Bakker (9):
      iio: accel: bma180: Prepare for different reset values
      iio: accel: Make bma180 conflict with input's bma150
      dt-bindings: iio: accel: Add bma150 family compatibles to bma180
      dt-bindings: iio: accel: Add required regulators to bma180
      iio: accel: bma180: Add support for bma023
      iio: accel: bma180: Rename center_temp to temp_offset
      iio: accel: Add bma150/smb380 support to bma180
      iio: adc: Add scaling support to exynos adc driver
      iio: light: gp2ap002: Take runtime PM reference on light read

Jonathan Cameron (16):
      iio:accel:mxc4005: Drop unnecessary explicit casts in regmap_bulk_rea=
d calls
      iio:chemical:atlas-sensor: Drop unnecessary explicit casts in regmap_=
bulk_read calls
      iio:chemical:bme680: Tidy up parameters to regmap_bulk_read
      iio:imu:mpu6050: Tidy up parameters to regmap_bulk functions.
      iio:magn:mmc35240: Drop unnecessary casts of val parameter in regmap_=
bulk*
      iio:light:ltr501: Drop unnecessary cast of parameter in regmap_bulk_r=
ead
      iio: light: bh1780: use mod_devicetable.h and drop of_match_ptr macro
      iio: light: cm32181: Add mod_devicetable.h and remove of_match_ptr
      iio: light: cm3232: Add mod_devicetable.h include and drop of_match_p=
tr
      iio: light: gp2ap020a00f: Swap of.h for mod_devicetable.h + drop of_m=
atch_ptr
      iio: light: opt3001: Add mod_devicetable.h and drop use of of_match_p=
tr
      iio: light: st_uvis25: Add mod_devicetable.h and drop of_match_ptr
      iio: light: vl6180: add include of mod_devicetable.h and drop of_matc=
h_ptr
      iio: Use an early return in iio_device_alloc to simplify code.
      iio:chemical:sps30: Fix timestamp alignment
      iio:chemical:pms7003: Fix timestamp alignment and prevent data leak.

J=E9r=F4me Pouiller (171):
      staging: wfx: add sanity checks to hif_join()
      staging: wfx: do not stop mac80211 queueing during tx_policy upload
      staging: wfx: take advantage of ieee80211_{stop/start}_queues
      staging: wfx: remove "burst" mechanism
      staging: wfx: uniformize queue_id retrieval
      staging: wfx: drop useless queue_id field
      staging: wfx: avoid useless wake_up
      staging: wfx: simplify hif_handle_tx_data()
      staging: wfx: simplify wfx_tx_queues_empty()
      staging: wfx: drop unused argument in wfx_get_prio_queue()
      staging: wfx: simplify wfx_tx_queue_mask_get()
      staging: wfx: drop useless sta_asleep_mask
      staging: wfx: drop argument tx_allowed_mask since it is constant now
      staging: wfx: do not use link_map_cache to track CAB
      staging: wfx: drop useless link_map_cache
      staging: wfx: do not rely anymore on link_id to choose packet in queue
      staging: wfx: drop unused link_id field
      staging: wfx: drop unused raw_link_id field
      staging: wfx: rename wfx_tx_get_raw_link_id()
      staging: wfx: replace wfx_tx_queues_get_after_dtim() by wfx_tx_queues=
_has_cab()
      staging: wfx: introduce a counter of pending frames
      staging: wfx: change the way to choose frame to send
      staging: wfx: drop now useless field edca_params
      staging: wfx: drop struct wfx_queue_stats
      staging: wfx: simplify usage of wfx_tx_queues_put()
      staging: wfx: improve interface between data_tx.c and queue.c
      staging: wfx: relocate wfx_skb_dtor() prior its callers
      staging: wfx: repair wfx_flush()
      staging: wfx: wfx_flush() did not ensure that frames are processed
      staging: wfx: fix potential deadlock in wfx_tx_flush()
      staging: wfx: fix case where AP stop with CAB traffic pending
      staging: wfx: remove hack about tx_rate policies
      staging: wfx: drop unused WFX_LINK_ID_GC_TIMEOUT
      staging: wfx: relocate LINK_ID_NO_ASSOC and MAX_STA_IN_AP_MODE to hif=
 API
      staging: wfx: relocate TX_RETRY_POLICY_MAX and TX_RETRY_POLICY_INVALI=
D to hif API
      staging: wfx: remove unused definitions from the hif API
      staging: wfx: remove useless defines
      staging: wfx: fix endianness of hif API
      staging: wfx: align members declarations in hif API
      staging: wfx: place hif_tx_mib functions into a .c file
      staging: wfx: allow to connect an IBSS with an existing SSID
      staging: wfx: make hif_ie_table_entry const
      staging: wfx: send just necessary bytes
      staging: wfx: fix race between configure_filter and remove_interface
      staging: wfx: reduce hold duration of cfg80211_bss
      staging: wfx: call wfx_do_unjoin() synchronously
      staging: wfx: implement start_ap/stop_ap
      staging: wfx: set all parameters before starting AP
      staging: wfx: change the way the station associate to an AP
      staging: wfx: remove useless call to wfx_tx_flush()
      staging: wfx: fix support for BSS_CHANGED_KEEP_ALIVE
      staging: wfx: disabling keep alive during unjoin is useless
      staging: wfx: drop unnecessary condition checks in wfx_upload_ap_temp=
lates()
      staging: wfx: request to send beacons in IBSS mode
      staging: wfx: remove unnecessary conditions in wfx_bss_info_changed()
      staging: wfx: avoid duplicate updating of beacon template
      staging: wfx: allow to join IBSS networks
      staging: wfx: introduce wfx_join_ibss() and wfx_leave_ibss()
      staging: wfx: re-enable BA after reset
      staging: wfx: check value of beacon_int
      staging: wfx: drop unused attribute 'beacon_int'
      staging: wfx: drop useless update of macaddr
      staging: wfx: update filtering even if not connected
      staging: wfx: simplify wfx_update_filtering()
      staging: wfx: rework wfx_configure_filter()
      staging: wfx: simplify handling of beacon filter during join process
      staging: wfx: wfx_update_filtering_work() is no more used
      staging: wfx: do not wait for a dtim before associate
      staging: wfx: disabling beacon filtering after hif_reset() is useless
      staging: wfx: do not use built-in AUTO_ERP feature
      staging: wfx: stop changing filtering rule in wfx_hw_scan()
      staging: wfx: ensure that probe requests are filtered when AP
      staging: wfx: drop useless wfx_fwd_probe_req()
      staging: wfx: align semantic of beacon filter with other filters
      staging: wfx: align semantic of probe request filter with other filte=
rs
      staging: wfx: drop struct wfx_grp_addr_table
      staging: wfx: drop useless call to hif_set_rx_filter()
      staging: wfx: drop useless attributes 'filter_prbreq' and 'filter_bss=
id'
      staging: wfx: split out wfx_filter_beacon()
      staging: wfx: drop useless filter update when starting AP
      staging: wfx: drop useless attribute 'filter_mcast'
      staging: wfx: update TODO
      staging: wfx: simplify the check if the the device is associated
      staging: wfx: use ieee80211_beacon_loss() provided by mac80211
      staging: wfx: drop useless attribute 'bss_params'
      staging: wfx: handle firmware events synchronously
      staging: wfx: also fix network parameters for IBSS networks
      staging: wfx: dual CTS is never necessary
      staging: wfx: field operational_rate_set is ignored by firmware
      staging: wfx: simplify hif_set_bss_params()
      staging: wfx: drop useless update of field basic_rate_set
      staging: wfx: introduce wfx_set_default_unicast_key()
      staging: wfx: keys are kept during whole firmware life
      staging: wfx: drop protection for asynchronous join during scan
      staging: wfx: drop useless checks in wfx_do_unjoin()
      staging: wfx: simplify wfx_remove_interface()
      staging: wfx: drop unused enum wfx_state
      staging: wfx: drop unused attribute 'join_complete_status'
      staging: wfx: fix (future) TDLS support
      staging: wfx: change the field chip_frozen into a boolean
      staging: wfx: mark chip frozen on error indication
      staging: wfx: fix support for AP that do not support PS-Poll
      staging: wfx: fix CAB sent at the wrong time
      staging: wfx: add support for 'device too hot' indication
      staging: wfx: add an explicit warning when chip detect too high tempe=
rature
      staging: wfx: fix highest Rx value declared in ieee80211_supported_ba=
nd
      staging: wfx: fix overflow in frame counters
      staging: wfx: fix the warning "inconsistent notification"
      staging: wfx: fix double init of tx_policy_upload_work
      staging: wfx: show counters of all interfaces
      staging: wfx: also show unnamed counters fields
      staging: wfx: update list of known messages in tracepoints
      staging: wfx: fix messages names in tracepoints
      staging: wfx: fix display of exception indication
      staging: wfx: update list of errors
      staging: wfx: add support for hardware revision 2 and further
      staging: wfx: reduce timeout for chip initial start up
      staging: wfx: fix double free
      staging: wfx: drop useless check
      staging: wfx: repair external IRQ for SDIO
      staging: wfx: use threaded IRQ with SPI
      staging: wfx: introduce a way to poll IRQ
      staging: wfx: poll IRQ during init
      staging: wfx: fix missing 'static' statement
      staging: wfx: fix missing 'static' keyword
      staging: wfx: prefer ARRAY_SIZE instead of a magic number
      staging: wfx: remove useless header inclusions
      staging: wfx: fix alignements of function prototypes
      staging: wfx: remove spaces after cast operator
      staging: wfx: use kernel types instead of c99 ones
      staging: wfx: fix use of cpu_to_le32 instead of le32_to_cpu
      staging: wfx: take advantage of le32_to_cpup()
      staging: wfx: fix cast operator
      staging: wfx: fix wrong bytes order
      staging: wfx: fix output of rx_stats on big endian hosts
      staging: wfx: fix endianness of fields media_delay and tx_queue_delay
      staging: wfx: fix endianness of hif_req_read_mib fields
      staging: wfx: fix access to le32 attribute 'ps_mode_error'
      staging: wfx: fix access to le32 attribute 'event_id'
      staging: wfx: fix access to le32 attribute 'indication_type'
      staging: wfx: declare the field 'packet_id' with native byte order
      staging: wfx: fix endianness of the struct hif_ind_startup
      staging: wfx: fix access to le32 attribute 'len'
      staging: wfx: fix endianness of the field 'status'
      staging: wfx: fix endianness of the field 'num_tx_confs'
      staging: wfx: fix endianness of the field 'channel_number'
      staging: wfx: update TODO
      staging: wfx: fix warning when unregister a frozen device
      staging: wfx: apply 80-columns rule to strings
      staging: wfx: check pointers returned by allocations
      staging: wfx: fix value of scan timeout
      staging: wfx: fix indentation
      staging: wfx: fix status of dropped frames
      staging: wfx: split out wfx_tx_fill_rates() from wfx_tx_confirm_cb()
      staging: wfx: call wfx_tx_update_sta() before to destroy tx_priv
      staging: wfx: fix potential use-after-free
      staging: wfx: rename wfx_do_unjoin() into wfx_reset()
      staging: wfx: merge wfx_stop_ap() with wfx_reset()
      staging: wfx: fix potential dead lock between join and scan
      staging: wfx: fix PS parameters when multiple vif are in use
      staging: wfx: drop unnecessary filter configuration when disabling fi=
lter
      staging: wfx: fix error reporting in wfx_start_ap()
      staging: wfx: remove false-positive WARN()
      staging: wfx: trace acknowledges not linked to any stations
      staging: wfx: remove false positive warning
      staging: wfx: drop unused variable
      staging: wfx: do not declare variables inside loops
      staging: wfx: drop unused function wfx_pending_requeue()
      staging: wfx: add support for tx_power_loop
      staging: wfx: retrieve the PS status from the vif
      staging: wfx: split wfx_get_ps_timeout() from wfx_update_pm()

Krzysztof Kozlowski (1):
      iio: adc: exynos: Simplify Exynos7-specific init

Kyoungho Koo (1):
      Staging: gasket: fix typo in gasket_page_table.c comments.

Lars-Peter Clausen (5):
      iio: xilinx-xadc: Fix typo in author's name
      iio: buffer: Don't allow buffers without any channels enabled to be a=
ctivated
      iio: dma-buffer: Cleanup buffer.h/buffer_impl.h includes
      iio: xilinx-xadc: Fix typo
      iio: __iio_update_buffers: Update mode before preenable/after postdis=
able

Linus Walleij (3):
      iio: magnetometer: ak8974: Correct realbits
      iio: magnetometer: ak8974: Break out measurement
      iio: magnetometer: ak8974: Provide scaling

Lorenzo Bianconi (3):
      iio: imu: st_lsm6dsx: configure full scale on slave device if support=
ed
      iio: imu: st_lsm6dsx: drop huge include in sensor-hub driver
      iio: imu: st_lsm6dsx: enable 833Hz sample frequency for tagged sensors

Malcolm Priestley (42):
      staging: vt6656: replace al2230_power_table array with formula.
      staging: vt6656: set all ofdm rates to default
      staging: vt6656: set all cck rates to default.
      staging: vt6556: vnt_rf_setpower convert to use ieee80211_channel.
      staging: vt6656: rxtx remove rate change and current_rate.
      staging: vt6656: formulate rspinf values into tables
      staging: vt6656: Move firmware functions into main_usb.
      staging: vt6656: call vnt_update_pre_ed_threshold from vnt_config.
      staging: vt6656: Move vnt_get_frame_time and vnt_get_phy_field to rxtx
      staging: vt6656: rxtx: remove duration_id and void returns.
      staging: vt6656: Remove set short time in vnt_init_registers.
      staging: vt6656: Remove preamble_type setting from vnt_tx_packet.
      staging: vt6656: vnt_set_keymode simplify key modes.
      staging: vt6656 remove vnt_mac_disable_keyentry calls
      staging: vt6656: return all key calls to mac80211 stack.
      staging: vt6656: use struct wiphy retry short and long settings.
      staging: vt6656: Return on isr0 when zero.
      staging: vt6656: refactor power save operation
      staging: vt6656: vnt_get_rtscts_duration_le use ieee80211_rts_duration
      staging: vt6656: vnt_rxtx_rsvtime_le16 to use ieee80211_generic_frame=
_duration.
      staging: vt6656: vnt_get_rtscts_duration_le use ieee80211_ctstoself_d=
uration
      staging: vt6656: Split RTS and CTS Duration functions
      staging: vt6656: vnt_get_rtscts_rsvtime_le replace with rts/cts durat=
ion.
      staging: vt6656: remove difs / sifs adjustments.
      staging: vt6656: Use sk_buff buffer for tx header
      staging: vt6656: vnt_beacon_xmit use extra_tx_headroom.
      staging: vt6656: vnt_usb_send_context remove variable data.
      staging: vt6656: use usb_anchor for tx queue.
      staging: vt6656: remove ieee80211_hdr from vnt_usb_send_context.
      staging: vt6656: rxtx remove unused need_ack
      staging: vt6656: Move vnt_mic_hdr pointers to vnt_fill_txkey
      staging: vt6656: use ieee80211_tx_info to replace need_mic
      staging: vt6656: rxtx use ieee80211_tx_info for rts/cts control
      staging: vt6656: Move key_buffer inside vnt_fill_txkey.
      staging: vt6656: move tx_body_size/payload_len to skb->len
      staging: vt6656: Move tx_key inside vnt_fill_txkey.
      staging: vt6656: Move calling point of vnt_fill_txkey.
      staging: vt6656: move key frag controls to vnt_fill_txkey
      staging: vt6656: Fix vnt_tx_usb_header static checker warning
      staging: vt6656: vnt_tx_packet use skb_clone to preserve sk_buff.
      staging: vt6656: Move vnt_tx_usb_header to vnt_tx_context
      staging: vt6656: Fix warning: unused variable vnt_frame_time

Manivannan Sadhasivam (3):
      dt-bindings: iio: chemical: Add binding for CCS811 VOC sensor
      iio: chemical: Add support for external Reset and Wakeup in CCS811
      iio: chemical: Add OF match table for CCS811 VOC sensor

Matej Dujava (11):
      staging: sm750fb: add missing case while setting FB_VISUAL
      staging: sm750fb: add common function to set color offsets and visual=
 mode
      staging: sm750fb: print error message with actual value
      staging: vt6655: merge two switch cases in s_uGetDataDuration
      staging: vt6655: do calculation of uAckTime first
      staging: vt6655: remove else after return and invert condition
      staging: vt6655: return at the ond of case body
      staging: vt6655: extract index manupulation out of function call
      staging: vt6655: return early if not bNeedAck
      staging: vt6655: fix LONG_LINE warning
      staging: vt6656: vt6655: removing unused macros definition Makefiles

Mathieu Dolmen (1):
      staging: qlge: cleanup indent in qlge_main.c

Mathieu Othacehe (5):
      iio: vcnl4000: Fix i2c swapped word reading.
      iio: vcnl4000: Factorize data reading and writing.
      iio: vcnl4000: Add event support for VCNL4010/20.
      iio: vcnl4000: Add sampling frequency support for VCNL4010/20.
      iio: vcnl4000: Add buffer support for VCNL4010/20.

Matt Ranostay (4):
      dt-bindings: iio: chemical: add Atlas Scientific RTD-SM sensor docs
      iio: chemical: atlas-sensor: add RTD-SM module support
      dt-bindings: iio: chemical: add CO2 EZO module documentation
      iio: chemical: add atlas-ezo-sensor initial support

Michael Hennerich (2):
      iio: adc: adi-axi-adc: add support for AXI ADC IP core
      iio: adc: ad9467: add support AD9467 ADC

Michael Straube (12):
      staging: rtl8188eu: remove unnecessary parentheses
      staging: rtl8188eu: refactor Efuse_GetCurrentSize()
      staging: rtl8188eu: remove unnecessary asignment
      staging: rtl8188eu: remove unnecessary variable
      staging: rtl8188eu: remove 5 GHz if test
      staging: rtl8712: correct spelling mistake in comment
      staging: rtl8188eu: rename define to upper case
      staging: rtl8188eu: cleanup long line in fw.c
      staging: rtl8188eu: make const char array static
      staging: rtl8188eu: remove some superfluous comments
      staging: rtl8188eu: clean up some declarations
      staging: rtl8188eu: make some arrays static const

Mike Looijmans (1):
      iio/gyro/bmg160: Add support for BMI088 chip

Mitchell Tasman (1):
      staging: vchiq_arm: cast with __force as needed

Mohamed Dawod (1):
      staging: wfx: Typo fix

Nick Reitemeyer (2):
      dt-bindings: magnetometer: ak8974: Add Alps hscdtd008a
      iio: magnetometer: ak8974: add Alps hscdtd008a

Nicolas Saenz Julienne (10):
      staging: vchi: Get rid of vchi_service_destroy()
      staging: vchi: Get rid of vchi_queue_user_message()
      staging: vchiq: Move copy callback handling into vchiq
      staging: vchi: Merge vchi_msg_queue() into vchi_queue_kernel_message()
      staging: vchi: Get rid of vchi_service_set_option()
      staging: vchi: Get rid of vchiq_status_to_vchi()
      staging: vchi: Get rid of not implemented function declarations
      staging: vchi: Get rid of C++ guards
      staging: vchiq: move vchiq_release_message() into vchiq
      staging: vchiq: Get rid of VCHIQ_SERVICE_OPENEND callback reason

Nishant Malpani (13):
      iio: light: tsl2563: Rename macro to fix typo
      iio: accel: kxsd9: Use vsprintf extension %pe for symbolic error name
      iio: gyro: bmg160_i2c: Use vsprintf extension %pe for symbolic error =
name
      iio: gyro: bmg160_spi: Use vsprintf extension %pe for symbolic error =
name
      iio: gyro: mpu3050: Use vsprintf extension %pe for symbolic error name
      iio: imu: bmi160_i2c: Use vsprintf extension %pe for symbolic error n=
ame
      iio: imu: bmi160_spi: Use vsprintf extension %pe for symbolic error n=
ame
      iio: imu: inv_mpu6050_i2c: Use vsprintf extension %pe for symbolic er=
ror name
      iio: imu: inv_mpu6050_spi: Use vsprintf extension %pe for symbolic er=
ror name
      iio: magn: bmc150: Use vsprintf extension %pe for symbolic error name
      dt-bindings: iio: tsl2563: convert bindings to YAML
      iio: accel: dmard06: Use mod_devicetable.h and drop of_match_ptr macro
      iio: accel: kxsd9-i2c: Use mod_devicetable.h and drop of_match_ptr ma=
cro

Nuno S=E1 (6):
      iio: imu: adis: Add Managed device functions
      iio: imu: adis: Add irq flag variable
      iio: adis: Add adis_update_bits() APIs
      iio: adis: Support different burst sizes
      iio: imu: Add support for adis16475
      dt-bindings: iio: Add adis16475 documentation

Oliver Graute (1):
      staging: fbtft: fb_st7789v: Initialize the Display

Oscar Carter (26):
      staging: vt6656: Use defines in preamble_type variables
      staging: vt6656: Refactor the vnt_update_pre_ed_threshold function
      staging: vt6656: Define EnCFG_BBType_MASK as OR between previous defi=
nes
      staging: vt6656: Remove unnecessary local variable initialization
      staging: vt6656: Remove duplicate code in vnt_vt3184_init function
      staging: vt6656: Remove unnecessary local variable initialization
      staging: vt6656: Return error code in vnt_rf_write_embedded function
      staging: vt6656: Use BIT() macro instead of bit shift operator
      staging: vt6656: Use define instead of magic number for tx_rate
      staging: vt6656: Refactor the assignment of the phy->signal variable
      staging: vt6656: Remove duplicate code for the phy->service assignment
      staging: vt6656: Refactor the vnt_ofdm_min_rate function
      staging: vt6656: Use fls instead of for loop in vnt_update_top_rates
      staging: vt6656: Check the return value of vnt_control_out_* calls
      staging: vt6656: Remove functions' documentation
      staging: vt6656: Add formula to the vnt_rf_addpower function
      staging: vt6656: Remove the local variable "array"
      staging: vt6656: Use return instead of goto
      staging: vt6656: Remove duplicate code in vnt_rf_table_download
      staging: wilc1000: Increase the size of wid_list array
      staging: vt6656: Check the return values in vnt_set_bss_mode function
      staging: vt6656: Refactor the vnt_set_bss_mode function
      staging: vt6656: Refactor the vnt_rf_table_download function
      staging: vt6656: Use const for read only data
      staging: vt6656: Remove logically dead code
      staging/rtl8192e: Remove function callback casts

Pascal Terjan (3):
      staging: rtl8192u: Merge almost duplicate code
      staging: rtl8712: Fix IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK
      staging: rtl8723bs: Use common packet header constants

R Veera Kumar (7):
      staging: rtl8192e: rtl8192e: Correct misspelt variable name
      staging: unisys: visorhba: Correct a typo in comment
      staging: rtl8723bs: Correct misspelt symbolic names
      staging: rtl8723bs: hal: Correct misspelt enum name
      staging: rtl8723bs: hal: Correct misspelled symbolic name
      staging: sm750fb: Make function arguments alignment match open parent=
hesis
      staging: vc04_services: bcm2835-audio: Make function arguments alignm=
ent match open parenthesis

Richard C Yeh (1):
      MAINTAINERS: Add rcy@google.com as maintainer for drivers/staging/gas=
ket

Rikard Falkeborn (1):
      iio: light: ltr501: Constify structs

Rohit Sarkar (7):
      iio: core: Make mlock internal to the iio core
      iio: health: max30100: use generic property handler
      iio: adc: max1363: replace uses of mlock
      iio: imu: inv_mpu6050: add debugfs register r/w interface
      iio: temperature: ltc2983: remove redundant comparison to bool
      iio: imu: adis16400: use DEFINE_DEBUGFS_ATTRIBUTE instead of DEFINE_S=
IMPLE_ATTRIBUTE
      iio: imu: adis16460: use DEFINE_DEBUGFS_ATTRIBUTE instead of DEFINE_S=
IMPLE_ATTRIBUTE

Rylan Dmello (11):
      staging: qlge: qlge_dbg.c: Remove trailing semicolon from macro
      staging: qlge: Remove unnecessary parentheses around struct field
      staging: qlge: Remove print statement for vlgrp field
      staging: qlge: Remove print statements for lbq_clean_idx and lbq_free=
_cnt
      staging: qlge: Fix indentation in ql_set_mac_addr_reg
      staging: qlge: Remove gotos from ql_set_mac_addr_reg
      staging: qlge: Fix indentation in ql_get_mac_addr_reg
      staging: qlge: Remove goto statements from ql_get_mac_addr_reg
      staging: qlge: Remove multi-line dereference from ql_request_irq
      staging: qlge: Fix suspect code indent warning in ql_init_device
      staging: qlge: Fix function argument alignment warning in ql_init_dev=
ice

Samuel Thibault (1):
      staging/speakup: Add inflection synth parameter

Sergio Paracuellos (7):
      staging: mt7621-pci: properly power off dual-ported pcie phy
      staging: mt7621-pci-phy: dt: bindings: add mediatek, mt7621-pci-phy.y=
aml
      staging: mt7621-pci-phy: dt: bindings: remove bindings txt file
      staging: mt7621-pci: fix PCIe interrupt mapping
      staging: mt7621-pci: rename 'PCIE_P2P_MAX' into 'PCIE_P2P_CNT'
      staging: mt7621-pci: add clarification comment in 'mt7621_pcie_init_v=
irtual_bridges'
      staging: mt7621-pci: initialize 'n' variable when it is declared

Sergiu Cuciurean (11):
      iio: dac: ad5360: Replace indio_dev->mlock with own device lock
      iio: dac: ad5446: Replace indio_dev->mlock with own device lock
      iio: dac: ad5449: Replace indio_dev->mlock with own device lock
      iio: dac: ad5755: Replace indio_dev->mlock with own device lock
      iio: dac: ad5761: Replace indio_dev->mlock with own device lock
      iio: dac: ad5764: Replace indio_dev->mlock with own device lock
      iio: dac: ad5380: Replace indio_dev->mlock with own device lock
      iio: dac: ad5421: Replace indio_dev->mlock with own device lock
      iio: dac: ad5686: Replace indio_dev->mlock with own device lock
      iio: dac: vf610_dac: Replace indio_dev->mlock with own device lock
      iio: dac: ad5592r-base: Replace indio_dev->mlock with own device lock

Soumyajit Deb (3):
      staging: rtl8188eu: Properly structure the multiline comment
      staging: rtl8188eu: Remove unnecessary extra parentheses
      staging: rtl8188eu: Line over 80 characters

Stefan Wahren (9):
      staging: bcm2835-camera: Drop PREVIEW_LAYER
      staging: bcm2835-camera: Activate V4L2_EXPOSURE_METERING_MATRIX handl=
ing
      staging: bcm2835-camera: Make struct indentation consistent
      staging: bcm2835-camera: Simplify set_framerate_params
      staging: bcm2835-camera: Move encode component setup in its own funct=
ion
      staging: bcm2835-camera: Move video component setup in its own functi=
on
      staging: bcm2835-camera: return early in mmal_setup_components
      staging: bcm2835-camera: reduce multiline statements
      staging: bcm2835-camera: reduce indentation in ctrl_set_image_effect

Suraj Upadhyay (1):
      staging: wfx: cleanup long lines in data_tx.c

Syed Nayyar Waris (1):
      MAINTAINERS: Add Syed Nayyar Waris to ACCES 104-QUAD-8 driver

Takashi Iwai (2):
      iio: core: Use scnprintf() for avoiding potential buffer overflow
      iio: tsl2772: Use scnprintf() for avoiding potential buffer overflow

Till Varoquaux (1):
      staging: greybus: loopback: fix a spelling error.

Wei Yongjun (1):
      staging: pi433: fix error return code in pi433_probe()

Wolfram Sang (1):
      iio: imu: inv_mpu6050: convert to use i2c_new_client_device()

Xiangyang Zhang (2):
      staging: qlge: Remove unnecessary spaces in qlge_main.c
      staging: qlge: unmap dma when lock failed

Xiyu Yang (2):
      staging: gasket: Fix mapping refcnt leak when put attribute fails
      staging: gasket: Fix mapping refcnt leak when register/store fails

Yu Jian Wu (1):
      staging: rtl8723bs: os_dep: Cleanup pointer casting code style

YueHaibing (1):
      staging: rtl8723bs: remove unused variable 'pregistrypriv'

kyoungho koo (1):
      Staging: rtl8723bs: Fix comment typo "the the".

realwakka (1):
      staging: qlge: replace deprecated apis pci_dma_*

 Documentation/ABI/testing/sysfs-bus-iio-proximity  |   10 +
 Documentation/ABI/testing/sysfs-bus-iio-sx9310     |   10 +
 Documentation/ABI/testing/sysfs-bus-most           |  104 +-
 .../devicetree/bindings/iio/accel/bma180.txt       |    8 +-
 .../devicetree/bindings/iio/adc/adi,ad9467.yaml    |   65 +
 .../devicetree/bindings/iio/adc/adi,axi-adc.yaml   |   62 +
 .../devicetree/bindings/iio/adc/maxim,max1241.yaml |   63 +
 .../bindings/iio/adc/rockchip-saradc.txt           |   37 -
 .../bindings/iio/adc/rockchip-saradc.yaml          |   80 ++
 .../bindings/iio/chemical/ams,ccs811.yaml          |   53 +
 .../bindings/iio/chemical/atlas,sensor.yaml        |    8 +-
 Documentation/devicetree/bindings/iio/common.yaml  |   35 +
 .../devicetree/bindings/iio/dac/ltc2632.txt        |    8 +-
 .../devicetree/bindings/iio/dac/st,stm32-dac.txt   |   63 -
 .../devicetree/bindings/iio/dac/st,stm32-dac.yaml  |  110 ++
 .../devicetree/bindings/iio/gyroscope/bmg160.txt   |    2 +-
 .../devicetree/bindings/iio/imu/adi,adis16475.yaml |  137 ++
 .../bindings/iio/light/amstaos,tsl2563.yaml        |   49 +
 .../devicetree/bindings/iio/light/tsl2563.txt      |   19 -
 .../devicetree/bindings/iio/light/vcnl4000.txt     |   24 -
 .../bindings/iio/light/vishay,vcnl4000.yaml        |   50 +
 .../bindings/iio/magnetometer/ak8974.txt           |    4 +-
 .../bindings/iio/proximity/vishay,vcnl3020.yaml    |   62 +
 .../devicetree/bindings/iio/st-sensors.txt         |    1 +
 Documentation/driver-api/driver-model/devres.rst   |    8 -
 Documentation/driver-api/iio/triggers.rst          |    2 -
 MAINTAINERS                                        |   10 +
 drivers/iio/accel/Kconfig                          |   10 +-
 drivers/iio/accel/bma180.c                         |  208 ++-
 drivers/iio/accel/dmard06.c                        |    3 +-
 drivers/iio/accel/hid-sensor-accel-3d.c            |   18 +-
 drivers/iio/accel/kxsd9-i2c.c                      |   11 +-
 drivers/iio/accel/mxc4005.c                        |    4 +-
 drivers/iio/accel/st_accel.h                       |    2 +
 drivers/iio/accel/st_accel_buffer.c                |    3 +-
 drivers/iio/accel/st_accel_core.c                  |   83 +-
 drivers/iio/accel/st_accel_i2c.c                   |    5 +
 drivers/iio/adc/Kconfig                            |   45 +
 drivers/iio/adc/Makefile                           |    3 +
 drivers/iio/adc/ad7476.c                           |   59 +-
 drivers/iio/adc/ad7780.c                           |   27 +-
 drivers/iio/adc/ad7791.c                           |   64 +-
 drivers/iio/adc/ad7793.c                           |  144 ++-
 drivers/iio/adc/ad9467.c                           |  422 ++++++
 drivers/iio/adc/ad_sigma_delta.c                   |    8 +-
 drivers/iio/adc/adi-axi-adc.c                      |  482 +++++++
 drivers/iio/adc/at91-sama5d2_adc.c                 |  233 ++--
 drivers/iio/adc/at91_adc.c                         |    5 +-
 drivers/iio/adc/exynos_adc.c                       |   17 +-
 drivers/iio/adc/fsl-imx25-gcq.c                    |    4 +-
 drivers/iio/adc/intel_mrfld_adc.c                  |    6 +-
 drivers/iio/adc/max1241.c                          |  227 ++++
 drivers/iio/adc/max1363.c                          |   32 +-
 drivers/iio/adc/mcp3422.c                          |    5 +-
 drivers/iio/adc/stm32-adc-core.c                   |   34 +-
 drivers/iio/adc/sun4i-gpadc-iio.c                  |    4 +-
 drivers/iio/adc/ti-ads124s08.c                     |    7 +-
 drivers/iio/adc/xilinx-xadc-core.c                 |    4 +-
 drivers/iio/adc/xilinx-xadc-events.c               |    2 +-
 drivers/iio/adc/xilinx-xadc.h                      |    2 +-
 drivers/iio/buffer/industrialio-buffer-dma.c       |    1 -
 drivers/iio/buffer/industrialio-buffer-dmaengine.c |   41 +-
 drivers/iio/buffer/industrialio-hw-consumer.c      |   31 -
 drivers/iio/buffer/industrialio-triggered-buffer.c |   11 -
 drivers/iio/buffer/kfifo_buf.c                     |   22 -
 drivers/iio/chemical/Kconfig                       |   11 +
 drivers/iio/chemical/Makefile                      |    1 +
 drivers/iio/chemical/atlas-ezo-sensor.c            |  177 +++
 drivers/iio/chemical/atlas-sensor.c                |   36 +-
 drivers/iio/chemical/bme680_core.c                 |   36 +-
 drivers/iio/chemical/ccs811.c                      |  112 +-
 drivers/iio/chemical/pms7003.c                     |   17 +-
 drivers/iio/chemical/sps30.c                       |    9 +-
 .../iio/common/hid-sensors/hid-sensor-trigger.c    |   18 +-
 .../iio/common/hid-sensors/hid-sensor-trigger.h    |    3 +-
 drivers/iio/common/st_sensors/st_sensors_core.c    |   13 +-
 drivers/iio/common/st_sensors/st_sensors_i2c.c     |    4 +-
 drivers/iio/common/st_sensors/st_sensors_spi.c     |    6 +-
 drivers/iio/common/st_sensors/st_sensors_trigger.c |   13 +-
 drivers/iio/dac/Kconfig                            |    6 +-
 drivers/iio/dac/ad5360.c                           |   17 +-
 drivers/iio/dac/ad5380.c                           |    8 +-
 drivers/iio/dac/ad5421.c                           |   21 +-
 drivers/iio/dac/ad5446.c                           |   18 +-
 drivers/iio/dac/ad5449.c                           |   12 +-
 drivers/iio/dac/ad5592r-base.c                     |   30 +-
 drivers/iio/dac/ad5592r-base.h                     |    1 +
 drivers/iio/dac/ad5592r.c                          |    4 +-
 drivers/iio/dac/ad5593r.c                          |    2 +-
 drivers/iio/dac/ad5624r_spi.c                      |    8 +-
 drivers/iio/dac/ad5686.c                           |   10 +-
 drivers/iio/dac/ad5686.h                           |    2 +
 drivers/iio/dac/ad5755.c                           |   22 +-
 drivers/iio/dac/ad5761.c                           |   12 +-
 drivers/iio/dac/ad5764.c                           |   12 +-
 drivers/iio/dac/ltc2632.c                          |   67 +-
 drivers/iio/dac/vf610_dac.c                        |   11 +-
 drivers/iio/gyro/Kconfig                           |    2 +-
 drivers/iio/gyro/adis16130.c                       |    4 +-
 drivers/iio/gyro/adis16136.c                       |   10 +-
 drivers/iio/gyro/bmg160_i2c.c                      |    6 +-
 drivers/iio/gyro/bmg160_spi.c                      |    5 +-
 drivers/iio/gyro/hid-sensor-gyro-3d.c              |   18 +-
 drivers/iio/gyro/mpu3050-i2c.c                     |    4 +-
 drivers/iio/gyro/st_gyro_buffer.c                  |    3 +-
 drivers/iio/gyro/st_gyro_core.c                    |    9 +-
 drivers/iio/health/afe4403.c                       |   14 +-
 drivers/iio/health/max30100.c                      |    7 +-
 drivers/iio/humidity/hid-sensor-humidity.c         |   12 +-
 drivers/iio/humidity/hts221_buffer.c               |    6 +-
 drivers/iio/humidity/hts221_i2c.c                  |    6 +-
 drivers/iio/humidity/hts221_spi.c                  |    6 +-
 drivers/iio/imu/Kconfig                            |   13 +
 drivers/iio/imu/Makefile                           |    1 +
 drivers/iio/imu/adis.c                             |   27 +-
 drivers/iio/imu/adis16400.c                        |   21 +-
 drivers/iio/imu/adis16460.c                        |   27 +-
 drivers/iio/imu/adis16475.c                        | 1338 ++++++++++++++++=
++++
 drivers/iio/imu/adis16480.c                        |   16 +-
 drivers/iio/imu/adis_buffer.c                      |   58 +-
 drivers/iio/imu/adis_trigger.c                     |   72 +-
 drivers/iio/imu/bmi160/bmi160_i2c.c                |    4 +-
 drivers/iio/imu/bmi160/bmi160_spi.c                |    4 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c         |    8 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |   23 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_i2c.c          |    4 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_spi.c          |    4 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |    2 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |   21 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |   96 ++
 drivers/iio/industrialio-buffer.c                  |   93 +-
 drivers/iio/industrialio-core.c                    |  126 +-
 drivers/iio/industrialio-trigger.c                 |   53 -
 drivers/iio/inkern.c                               |   27 -
 drivers/iio/light/Kconfig                          |    2 +
 drivers/iio/light/bh1780.c                         |    6 +-
 drivers/iio/light/cm32181.c                        |  271 +++-
 drivers/iio/light/cm3232.c                         |    3 +-
 drivers/iio/light/gp2ap002.c                       |   19 +-
 drivers/iio/light/gp2ap020a00f.c                   |    6 +-
 drivers/iio/light/hid-sensor-als.c                 |   18 +-
 drivers/iio/light/hid-sensor-prox.c                |   18 +-
 drivers/iio/light/isl29125.c                       |   28 +-
 drivers/iio/light/ltr501.c                         |   41 +-
 drivers/iio/light/opt3001.c                        |    3 +-
 drivers/iio/light/si1133.c                         |   18 +-
 drivers/iio/light/st_uvis25_i2c.c                  |    7 +-
 drivers/iio/light/st_uvis25_spi.c                  |    7 +-
 drivers/iio/light/tsl2563.c                        |    2 +-
 drivers/iio/light/tsl2772.c                        |    6 +-
 drivers/iio/light/vcnl4000.c                       |  746 ++++++++++-
 drivers/iio/light/vl6180.c                         |    3 +-
 drivers/iio/light/zopt2201.c                       |    4 +-
 drivers/iio/magnetometer/ak8974.c                  |  201 ++-
 drivers/iio/magnetometer/bmc150_magn_spi.c         |    4 +-
 drivers/iio/magnetometer/hid-sensor-magn-3d.c      |   18 +-
 drivers/iio/magnetometer/mmc35240.c                |    4 +-
 drivers/iio/magnetometer/rm3100-core.c             |    5 +-
 drivers/iio/magnetometer/st_magn_core.c            |    3 +-
 drivers/iio/orientation/hid-sensor-incl-3d.c       |   18 +-
 drivers/iio/orientation/hid-sensor-rotation.c      |   18 +-
 drivers/iio/pressure/bmp280-core.c                 |  100 +-
 drivers/iio/pressure/hid-sensor-press.c            |   18 +-
 drivers/iio/pressure/hp206c.c                      |    8 +-
 drivers/iio/pressure/ms5611_i2c.c                  |    4 +-
 drivers/iio/pressure/ms5611_spi.c                  |    4 +-
 drivers/iio/pressure/st_pressure_core.c            |    7 +-
 drivers/iio/pressure/zpa2326.c                     |    9 +-
 drivers/iio/proximity/Kconfig                      |   24 +
 drivers/iio/proximity/Makefile                     |    2 +
 drivers/iio/proximity/ping.c                       |    7 +-
 drivers/iio/proximity/sx9310.c                     | 1069 ++++++++++++++++
 drivers/iio/proximity/vcnl3020.c                   |  258 ++++
 drivers/iio/temperature/hid-sensor-temperature.c   |   12 +-
 drivers/iio/temperature/ltc2983.c                  |    4 +-
 drivers/iio/temperature/max31856.c                 |    5 +-
 drivers/iio/trigger/iio-trig-hrtimer.c             |    2 +-
 drivers/staging/android/ion/ion_page_pool.c        |    4 +-
 drivers/staging/axis-fifo/axis-fifo.c              |   12 +-
 drivers/staging/comedi/comedi_internal.h           |    4 +-
 drivers/staging/comedi/drivers/ni_pcimio.c         |    4 +-
 drivers/staging/fbtft/fb_st7789v.c                 |   32 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |    6 +-
 drivers/staging/gasket/gasket_page_table.c         |    2 +-
 drivers/staging/gasket/gasket_sysfs.c              |    2 +
 drivers/staging/gdm724x/gdm_lte.c                  |    2 +-
 drivers/staging/greybus/hid.c                      |    3 +-
 drivers/staging/greybus/light.c                    |    3 +-
 drivers/staging/greybus/loopback.c                 |    2 +-
 drivers/staging/greybus/uart.c                     |   19 +-
 drivers/staging/iio/Documentation/overview.txt     |    2 +-
 drivers/staging/iio/impedance-analyzer/ad5933.c    |   77 +-
 drivers/staging/most/usb/Kconfig                   |    2 +-
 drivers/staging/most/usb/usb.c                     |  305 ++---
 drivers/staging/mt7621-dts/mt7621.dtsi             |    9 +-
 .../mt7621-pci-phy/mediatek,mt7621-pci-phy.txt     |   28 -
 .../mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml    |   36 +
 drivers/staging/mt7621-pci/pci-mt7621.c            |   64 +-
 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c    |    2 +-
 drivers/staging/pi433/pi433_if.c                   |    1 +
 drivers/staging/qlge/qlge_dbg.c                    |    7 +-
 drivers/staging/qlge/qlge_main.c                   |  476 ++++---
 drivers/staging/rtl8188eu/core/rtw_ap.c            |   99 +-
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |   33 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |    4 +-
 drivers/staging/rtl8188eu/core/rtw_led.c           |   17 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |    6 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c       |    2 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c          |   19 +-
 drivers/staging/rtl8188eu/hal/fw.c                 |    7 +-
 drivers/staging/rtl8188eu/hal/odm.c                |   54 +-
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c       |    2 -
 drivers/staging/rtl8188eu/hal/phy.c                |   62 +-
 drivers/staging/rtl8188eu/hal/rf.c                 |    2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_cmd.c       |    2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c        |    3 -
 drivers/staging/rtl8188eu/include/osdep_service.h  |    2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_spec.h  |    2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |  116 +-
 drivers/staging/rtl8188eu/os_dep/rtw_android.c     |    2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |   24 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c         |   18 +-
 drivers/staging/rtl8192e/rtl819x_HTProc.c          |    6 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |  126 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c  |    4 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |  158 ++-
 drivers/staging/rtl8712/rtl871x_xmit.h             |    2 +-
 drivers/staging/rtl8712/usb_halinit.c              |    2 +-
 drivers/staging/rtl8712/wifi.h                     |    9 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |    2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c          |    6 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |    7 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c          |    9 +-
 drivers/staging/rtl8723bs/core/rtw_security.c      |    6 +-
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c       |    2 -
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     |   22 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c         |   45 +-
 drivers/staging/rtl8723bs/hal/hal_com_phycfg.c     |    8 +-
 drivers/staging/rtl8723bs/hal/odm.c                |   13 -
 drivers/staging/rtl8723bs/hal/odm.h                |    2 +-
 drivers/staging/rtl8723bs/hal/odm_RegDefine11N.h   |    4 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |   44 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c       |    4 -
 drivers/staging/rtl8723bs/include/hal_data.h       |    8 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h       |    2 -
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  |   34 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c     |    6 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |   33 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c      |   26 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |    8 +-
 drivers/staging/sm750fb/sm750.c                    |  154 ++-
 drivers/staging/sm750fb/sm750.h                    |   21 +-
 drivers/staging/sm750fb/sm750_hw.c                 |    2 +-
 drivers/staging/speakup/speakup_decext.c           |    4 +
 drivers/staging/speakup/speakup_decpc.c            |    4 +
 drivers/staging/speakup/speakup_dectlk.c           |    5 +-
 drivers/staging/speakup/speakup_dummy.c            |    4 +
 drivers/staging/speakup/speakup_soft.c             |    4 +
 drivers/staging/speakup/spk_types.h                |    3 +-
 drivers/staging/speakup/spkguide.txt               |    7 +-
 drivers/staging/speakup/sysfs-driver-speakup       |    6 +
 drivers/staging/speakup/varhandlers.c              |    1 +
 drivers/staging/unisys/visorhba/visorhba_main.c    |    2 +-
 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      |    4 +-
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  |  383 +++---
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |   62 +-
 .../vc04_services/bcm2835-camera/controls.c        |   97 +-
 .../vc04_services/bcm2835-camera/mmal-common.h     |   18 +-
 .../vc04_services/bcm2835-camera/mmal-parameters.h |   14 +-
 .../staging/vc04_services/interface/vchi/vchi.h    |   81 --
 .../interface/vchiq_arm/vchiq_2835_arm.c           |    7 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |    8 +-
 .../interface/vchiq_arm/vchiq_connected.c          |   33 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |   19 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |    7 +
 .../vc04_services/interface/vchiq_arm/vchiq_if.h   |    8 +-
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  166 +--
 drivers/staging/vt6655/Makefile                    |    3 -
 drivers/staging/vt6655/baseband.c                  |  320 +++--
 drivers/staging/vt6655/baseband.h                  |   37 +-
 drivers/staging/vt6655/card.c                      |  145 +--
 drivers/staging/vt6655/card.h                      |    4 -
 drivers/staging/vt6655/channel.c                   |    4 +-
 drivers/staging/vt6655/device_main.c               |   37 +-
 drivers/staging/vt6655/rf.c                        |    4 +-
 drivers/staging/vt6655/rxtx.c                      |  252 ++--
 drivers/staging/vt6656/Makefile                    |    6 +-
 drivers/staging/vt6656/baseband.c                  |  620 ++-------
 drivers/staging/vt6656/baseband.h                  |   17 +-
 drivers/staging/vt6656/card.c                      |  570 ++-------
 drivers/staging/vt6656/card.h                      |   20 +-
 drivers/staging/vt6656/device.h                    |   20 +-
 drivers/staging/vt6656/firmware.c                  |  106 --
 drivers/staging/vt6656/firmware.h                  |   25 -
 drivers/staging/vt6656/key.c                       |   47 +-
 drivers/staging/vt6656/key.h                       |   13 +-
 drivers/staging/vt6656/mac.c                       |  128 +-
 drivers/staging/vt6656/mac.h                       |   28 +-
 drivers/staging/vt6656/main_usb.c                  |  181 +--
 drivers/staging/vt6656/power.c                     |   34 +-
 drivers/staging/vt6656/power.h                     |    2 +-
 drivers/staging/vt6656/rf.c                        |  463 +++----
 drivers/staging/vt6656/rf.h                        |    3 +-
 drivers/staging/vt6656/rxtx.c                      |  674 +++++-----
 drivers/staging/vt6656/rxtx.h                      |   20 +-
 drivers/staging/vt6656/usbpipe.c                   |   70 +-
 drivers/staging/vt6656/usbpipe.h                   |   11 +-
 drivers/staging/vt6656/wcmd.c                      |    3 +-
 drivers/staging/wfx/Makefile                       |    1 +
 drivers/staging/wfx/TODO                           |   51 +-
 drivers/staging/wfx/bh.c                           |   50 +-
 drivers/staging/wfx/bh.h                           |    1 +
 drivers/staging/wfx/bus.h                          |    2 +
 drivers/staging/wfx/bus_sdio.c                     |   86 +-
 drivers/staging/wfx/bus_spi.c                      |   44 +-
 drivers/staging/wfx/data_rx.c                      |   16 +-
 drivers/staging/wfx/data_rx.h                      |    3 +-
 drivers/staging/wfx/data_tx.c                      |  352 +++--
 drivers/staging/wfx/data_tx.h                      |    8 +-
 drivers/staging/wfx/debug.c                        |   70 +-
 drivers/staging/wfx/fwio.c                         |   14 +-
 drivers/staging/wfx/hif_api_cmd.h                  |  623 +++++----
 drivers/staging/wfx/hif_api_general.h              |  495 +++-----
 drivers/staging/wfx/hif_api_mib.h                  |  671 ++++------
 drivers/staging/wfx/hif_rx.c                       |  221 ++--
 drivers/staging/wfx/hif_tx.c                       |  119 +-
 drivers/staging/wfx/hif_tx.h                       |   10 +-
 drivers/staging/wfx/hif_tx_mib.c                   |  386 ++++++
 drivers/staging/wfx/hif_tx_mib.h                   |  436 +------
 drivers/staging/wfx/hwio.c                         |   18 +-
 drivers/staging/wfx/key.c                          |   71 +-
 drivers/staging/wfx/key.h                          |    2 -
 drivers/staging/wfx/main.c                         |   78 +-
 drivers/staging/wfx/main.h                         |    4 +-
 drivers/staging/wfx/queue.c                        |  533 ++------
 drivers/staging/wfx/queue.h                        |   42 +-
 drivers/staging/wfx/scan.c                         |   13 +-
 drivers/staging/wfx/sta.c                          |  871 +++++--------
 drivers/staging/wfx/sta.h                          |   38 +-
 drivers/staging/wfx/traces.h                       |   31 +-
 drivers/staging/wfx/wfx.h                          |   47 +-
 drivers/staging/wilc1000/hif.c                     |    4 +-
 include/linux/fpga/adi-axi-common.h                |    6 +-
 include/linux/iio/adc/ad_sigma_delta.h             |   58 -
 include/linux/iio/adc/adi-axi-adc.h                |   64 +
 include/linux/iio/buffer-dma.h                     |    2 +-
 include/linux/iio/buffer-dmaengine.h               |    3 +
 include/linux/iio/buffer_impl.h                    |    9 -
 include/linux/iio/consumer.h                       |   18 -
 include/linux/iio/hw-consumer.h                    |    1 -
 include/linux/iio/iio.h                            |   10 +-
 include/linux/iio/imu/adis.h                       |   87 +-
 include/linux/iio/kfifo_buf.h                      |    1 -
 include/linux/iio/trigger.h                        |    3 -
 include/linux/iio/triggered_buffer.h               |    2 -
 355 files changed, 13112 insertions(+), 8986 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-proximity
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-sx9310
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad9467.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,axi-adc.y=
aml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max1241=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-sara=
dc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-sara=
dc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/chemical/ams,ccs8=
11.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/common.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/st,stm32-dac.=
yaml
 create mode 100644 Documentation/devicetree/bindings/iio/imu/adi,adis16475=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/amstaos,tsl=
2563.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/tsl2563.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/light/vcnl4000.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/vishay,vcnl=
4000.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/vishay,=
vcnl3020.yaml
 create mode 100644 drivers/iio/adc/ad9467.c
 create mode 100644 drivers/iio/adc/adi-axi-adc.c
 create mode 100644 drivers/iio/adc/max1241.c
 create mode 100644 drivers/iio/chemical/atlas-ezo-sensor.c
 create mode 100644 drivers/iio/imu/adis16475.c
 create mode 100644 drivers/iio/proximity/sx9310.c
 create mode 100644 drivers/iio/proximity/vcnl3020.c
 delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.=
txt
 create mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.=
yaml
 delete mode 100644 drivers/staging/vt6656/firmware.c
 delete mode 100644 drivers/staging/vt6656/firmware.h
 create mode 100644 drivers/staging/wfx/hif_tx_mib.c
 create mode 100644 include/linux/iio/adc/adi-axi-adc.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
