Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 654D728F20B
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 14:27:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 792AA886FD;
	Thu, 15 Oct 2020 12:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvzrfTXYu3Lg; Thu, 15 Oct 2020 12:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9982C886D4;
	Thu, 15 Oct 2020 12:26:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B906A1BF3D8
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 12:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9206F2E620
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 12:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFGNX7018wX0 for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 12:26:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 119162E61D
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 12:26:42 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB5F62223F;
 Thu, 15 Oct 2020 12:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602764801;
 bh=Zl0Forar3MUYPsewEt9QP/1UF2WYBhhTm2IvlIq/0is=;
 h=Date:From:To:Cc:Subject:From;
 b=2KyT4vYmrAzB9TRFVQzLxkZ6I4SC1eQxrmWOiUUG/whsEj91avn9m+5QoyeCDKDRG
 iJfxI48ltYbZd0kgqmeeFSDEw0uMy2j4U8MdzIz7RYPp6g5Z+PVknnv4mdYLBsl+he
 k8ny3dSwiwKMjqhKxZsy3k2PCIYuxbIJRHJD73AM=
Date: Thu, 15 Oct 2020 14:27:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver update for 5.10-rc1
Message-ID: <20201015122713.GA4021230@kroah.com>
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

The following changes since commit 549738f15da0e5a00275977623be199fbbf7df50:

  Linux 5.9-rc8 (2020-10-04 16:04:34 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.10-rc1

for you to fetch changes up to e1f13c879a7c21bd207dc6242455e8e3a1e88b40:

  staging: comedi: check validity of wMaxPacketSize of usb endpoints found =
(2020-10-10 12:37:46 +0200)

----------------------------------------------------------------
Staging / IIO driver updates for 5.10-rc1

Here is the large set of staging and IIO driver updates for 5.10-rc1.

Included in here are:
	- new IIO drivers
	- new IIO driver frameworks
	- various IIO driver fixes and updates
	- IIO device tree conversions to yaml
	- so many minor staging driver coding style cleanups
	- most cdev driver moved out of staging
	- no new drivers added or removed

Full details are in the shortlog.

All of these have been in linux-next for a while with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Abheek Dhawan (3):
      staging: wlan-ng: Remove repeated word our
      staging: fwserial: Remove repeated word and
      staging: mt7621-pci: Update driver TODO file

Ahmad Fatoum (1):
      Documentation: ABI: iio: fix some spelling mistakes

Alex Dewar (6):
      staging: emxx_udc: Use standard BIT() macro
      staging: emxx_udc: Allow for building on !ARM
      staging: emxx_udc: Fix passing of NULL to dma_alloc_coherent()
      staging/emxx_udc: Remove pointless variable assignments
      iio: adc: rockchip_saradc: Allow compile-testing with !ARM
      staging: hikey9xx: Fix incorrect assignment

Alexandru Ardelean (18):
      iio: frequency: ad9523: convert rest of driver to device managed func=
tions
      iio: adxl372_spi: change indentation for of_table
      iio: Kconfig: ad8366: add entry for HMC1119 chip
      iio: buffer-dmaengine: adjust `bytes_used` with residue info
      iio: adc: ad9467: refine mismatch vs unknown chip-id messages
      iio: adc: ad9467: return ENODEV vs EINVAL in ad9467_setup()
      iio: buffer: split buffer sysfs creation to take buffer as primary arg
      iio: dac: ad5592r: un-indent code-block for scale read
      iio: dac: ad5592r: localize locks only where needed in ad5592r_read_r=
aw()
      iio: event: use short-hand variable in iio_device_{un}register_events=
et functions
      iio: event: NULL-ify IIO device's event_interface ref during unregist=
er
      iio: buffer-dmaengine: remove non managed alloc/free
      iio: adc: ad9467: wrap a axi-adc chip-info into a ad9467_chip_info ty=
pe
      dt-bindings: iio: ad9467: add entries for for AD9434 & AD9265 ADCs
      iio: cros_ec: unify hw fifo attributes into the core file
      iio: dma-buffer: Kconfig: Provide titles for IIO DMA Kconfig symbols
      iio: Kconfig: Provide title for IIO_TRIGGERED_EVENT symbol
      iio: buffer: Kconfig: add title for IIO_TRIGGERED_BUFFER symbol

Alexandru Tachici (1):
      iio: accel: adxl372: Add additional trigger ABI docs

Allen Pais (9):
      staging: ks7010: convert tasklets to use new tasklet_setup() API
      staging: mt7621-dma: convert tasklets to use new tasklet_setup() API
      staging: ralink-gdma: convert tasklets to use new tasklet_setup() API
      staging: rtl8188eu: convert tasklets to use new tasklet_setup() API
      staging: rtl8192: convert tasklets to use new tasklet_setup() API
      staging: rtl8192e: convert tasklets to use new tasklet_setup() API
      staging: rtl8712: convert tasklets to use new tasklet_setup() API
      staging: rtl8723bs: convert tasklets to use new tasklet_setup() API
      staging: wlan-ng: convert tasklets to use new tasklet_setup() API

Anant Thazhemadam (1):
      staging: comedi: check validity of wMaxPacketSize of usb endpoints fo=
und

Andy Shevchenko (8):
      iio: accel: bma220: Fix returned codes from bma220_init(), bma220_dei=
nit()
      iio: accel: bma220: Convert to use ->read_avail()
      iio: accel: bma220: Use dev_get_drvdata() directly
      iio: accel: bma220: Mark PM functions as __maybe_unused
      iio: accel: bma220: Drop ACPI_PTR() and accompanying ifdeffery
      iio: accel: bma220: Group IIO headers together
      iio: accel: bma220: Use BIT() and GENMASK() macros
      iio: accel: bma220: Remove unneeded blank lines

Ankit Baluni (1):
      Staging: iio: Fixed a punctuation and a spelling mistake.

Arnd Bergmann (7):
      staging: vchiq: rework compat handling
      staging: vchiq: convert compat create_service
      staging: vchiq: convert compat dequeue_message
      staging: vchiq: convert compat bulk transfer
      staging: vchiq: convert compat await_completion
      staging: vchiq: fix __user annotations
      staging: vchiq: avoid mixing kernel and user pointers

Asif Talybov (1):
      staging: greybus: Add identifier name to function definition argument

Bryan Brattlof (1):
      staging: pi433: break long lines

Calvin Glisson (1):
      staging: iio: ad9834: Remove excess blank line

Chris Ruehl (1):
      iio/dac: convert ltc2632.txt to lltc,ltc2632.yaml

Christian Eggers (4):
      dt-bindings: iio: light: add AMS AS73211 support
      iio: light: as73211: New driver
      iio: documentation: light: Add as73211 sysfs documentation
      iio: light: as73211: Increase measurement timeout

Christian Gromm (1):
      drivers: most: add character device interface driver

Christophe JAILLET (1):
      staging: rtl8192u: Do not use GFP_KERNEL in atomic context

Coiby Xu (4):
      staging: qlge: fix build breakage with dumping enabled
      staging: greybus: fix warnings about endianness detected by sparse
      staging: greybus: codecs: use SNDRV_PCM_FMTBIT_S16_LE for format bitm=
ask
      staging: greybus: use __force when assigning __u8 value to snd_ctl_el=
em_type_t

Colin Ian King (5):
      staging: ion: fix spelling mistake in function name "detatch" -> "det=
ach"
      staging: wfx: fix a handful of spelling mistakes
      staging: kpc2000: kpc_dma: fix spelling mistake "for for" -> "for"
      staging: spmi: hisi-spmi-controller: fix spelling mistake "controllle=
r" -> "controller"
      staging/emxx_udc: fix indenting issue on a couple of statements

Crt Mori (6):
      iio:temperature:mlx90632: Reduce number of equal calulcations
      iio:temperature:mlx90632: Add kerneldoc to the internal struct
      iio:temperature:mlx90632: Convert polling while loop to regmap
      iio:temperature:mlx90632: Adding extended calibration option
      iio:temperature:mlx90632: Some stylefixing leftovers
      iio: temperature: mlx90632: Interface to change object ambient temper=
ature

Dan Carpenter (4):
      staging: spmi: hisi-spmi-controller: Use devm_ version of ioremap().
      staging: rtl8712: Fix enqueue_reorder_recvframe()
      staging: vchiq: Fix an uninitialized variable
      staging: vchiq: Fix list_for_each exit tests

Daniel Campello (12):
      dt-bindings: iio: Add bindings for sx9310 sensor
      iio: sx9310: Update macros declarations
      iio: sx9310: Fix irq handling
      iio: sx9310: Remove acpi and of table macros
      iio: sx9310: Change from .probe to .probe_new
      iio: sx9310: Fixes various memory handling
      iio: sx9310: Use long instead of int for channel bitmaps
      iio: sx9310: Use regmap_read_poll_timeout() for compensation
      iio: sx9310: Update copyright
      iio: sx9310: Simplify error return handling
      iio: sx9310: Use variable to hold &client->dev
      iio: sx9310: Miscellaneous format fixes

Dinghao Liu (1):
      staging: wilc1000: Fix memleak in wilc_bus_probe

Douglas Anderson (1):
      iio: sx9310: Prefer async probe

Ethan Edwards (1):
      drivers: staging: comedi: fixed duplicate words from checkpatch

Eugen Hristev (1):
      iio: adc: at91-sama5d2_adc: fix DMA conversion crash

Eugene Zaikonnikov (2):
      iio: humidity: Add TI HDC20x0 support
      dt-bindings: iio: humidity: Add TI HDC20x0 support

Fabrice Gasnier (1):
      iio: adc: stm32-adc: fix runtime autosuspend delay when slow polling

Fan Fei (1):
      staging: rtl8188eu: Fix long lines

Greg Kroah-Hartman (7):
      Merge tag 'iio-for-5.10a-take2' of https://git.kernel.org/.../jic23/i=
io into staging-next
      Merge 5.9-rc5 into staging-next
      Revert "staging: rtl8192e: fix kconfig dependency warning for RTLLIB_=
CRYPTO_TKIP"
      Revert "staging: rtl8192e: fix kconfig dependency warning for RTLLIB_=
CRYPTO_WEP"
      Merge tag 'iio-for-5.10b-take2' of https://git.kernel.org/.../jic23/i=
io into staging-next
      Merge tag 'iio-for-5.10c' of https://git.kernel.org/.../jic23/iio int=
o staging-next
      Merge 5.9-rc8 into staging-next

Gwendal Grignou (1):
      docs: abi: iio: Use What: consistently

Igor Matheus Andrade Torrente (1):
      staging: wlan-ng: Remove repeated words in comments

Ioana Ciornei (2):
      staging: dpaa2-switch: add a dpaa2_switch_ prefix to all functions in=
 ethsw-ethtool.c
      staging: dpaa2-switch: add a dpaa2_switch prefix to all functions in =
ethsw.c

Ivan Drobyshevskyi (2):
      dt-bindings: iio: proximity: vl53l0x: Add IRQ support
      iio: proximity: vl53l0x: Add IRQ support

Ivan Safonov (5):
      staging: rtl8723bs: replace rtw_netdev_priv define with inline functi=
on
      staging: r8188eu: remove unnecessary type cast of rtw_netdev_priv() r=
esult
      staging: r8188eu: replace enum rtw_ieee80211_spectrum_mgmt_actioncode=
 with ieee80211_spectrum_mgmt_actioncode
      staging: r8188eu: replace WIFI_REASON_CODE enum with native ieee80211=
_reasoncode
      staging: r8188eu: remove unnecessary type casts (struct wlan_bssid_ex=
 *)

Jonathan Cameron (94):
      dt-bindings: iio: adc: maxim,max11100 yaml conversion
      dt-bindings: iio: adc: maxim,max9611 yaml conversions
      dt-bindings: iio: adc: maxim,max1118 yaml conversion
      iio:adc:bcm_iproc: Drop of_match_ptr protection and switch to mod_dev=
icetable.h
      iio:adc:ti-adc128s052: drop of_match_ptr protection
      iio:adc:ti-adc108s102: Drop CONFIG_OF and of_match_ptr protections
      iio:adc:ti-adc081c: Drop ACPI ids that seem very unlikely to be offic=
ial.
      iio:adc:axp20x: Convert from OF to generic fw / device properties
      dt-bindings: trivial-devices: Add mcp342x ADCs and drop separate bind=
ing doc.
      dt-bindings: iio: adc: ti,adc108s102 yaml conversion
      dt-bindings: iio: adc: lltc,ltc2497 yaml conversion.
      dt-bindings: iio: adc: ti,adc161s626 yaml conversion.
      dt-bindings: iio: adc: ti,adc0832 yaml conversion.
      dt-bindings: iio: adc: ti,adc128s052 yaml conversion.
      dt-bindings: iio: adc: ti,ads8344 yaml conversion
      dt-bindings: iio: adc: ti,tlc4541 binding conversion
      dt-bindings: iio: adc: microchip,mcp3201 yaml conversion.
      dt-bindings: iio: adc: ti,adc12138 yaml conversion.
      dt-bindings: iio: adc: ti,ads7950 binding conversion
      staging:iio:dac:max517 remove documentation
      staging:iio:light: Move tsl2x7x ABI docs to correct location.
      staging:iio:light: drop stale ABI docs
      staging:iio:documentation: Drop most generic docs
      iio:imu:adis16400: Sort out missing kernel doc.
      iio:potentiometer:ad5272: Drop of_match_ptr and CONFIG_OF protections.
      iio:potentiometer:ds1803: Drop of_match_ptr and CONFIG_OF protections
      iio:potentiometer:max5432: Drop of_match_ptr and use generic fw acces=
sors
      iio:potentiometer:max5481: Drop of_match_ptr and CONFIG_OF protection=
s.
      iio:potentiometer:max5481: Drop invalid ACPI binding.
      iio:potentiometer:mcp4018: Drop of_match_ptr and CONFIG_OF protection=
s.
      iio:potentiometer:mcp4131: Drop of_match_ptr and use generic fw inter=
faces.
      iio:potentiometer:mcp4531: Drop of_match_ptr and CONFIG_OF protection=
s.
      iio:dac:ad5446: Drop of_match_ptr and CONFIG_OF protections
      iio:dac:ad5592r: Drop of_match_ptr and ACPI_PTR protections.
      iio:dac:ad5593r: Drop of_match_ptr and ACPI_PTR protections.
      iio:dac:ad7303: Drop of_match_ptr protection
      iio:dac:mcp4725: drop of_match_ptr and use generic fw properties
      iio:dac:ti-dac082s085: Drop of_match_ptr and CONFIG_OF protections
      iio:dac:ti-dac5571: Drop of_match_ptr and CONFIG_OF protections
      iio:potentiostat:lmp91000: Drop of_match_ptr and use generic fw acces=
sors
      iio:pressure:icp10100: Drop of_match_ptr and CONFIG_OF protections
      iio:pressure:ms5611: Drop of_match_ptr and CONFIG_OF protections
      iio:pressure:ms5637: Drop of_match_ptr protection
      iio:pressure:zpa2326: Drop of_match_ptr protection
      iio:temperature:tsys01: Drop of_match_ptr protection
      iio:temperature:tmp007: Drop of_match_ptr protection
      iio:resolver:ad2s1200: Drop of_match_ptr protection
      iio:chemical:ams-iaq-core: Drop of_match_ptr protection
      iio:chemical:atlas-sensor: Drop of_match_ptr and use generic fw acces=
sors
      iio:chemical:sgp30: Use local variable dev to simplify code
      iio:chemical:sgp30: Drop of_match_ptr and use generic fw accessors
      iio:chemical:vz89x: Introduce local struct device pointer.
      iio:chemical:vz89x: Drop of_match_ptr protection and use generic fw a=
ccessors
      iio:humidity:hdc100x: Drop of_match_ptr protection.
      iio:proximity:as3935: Use local struct device pointer to simplify cod=
e.
      iio:proximity:as3935: Drop of_match_ptr and use generic fw accessors
      iio:proximity:pulsedlight: Drop of_match_ptr protection
      iio:magn:ak8975: Drop of_match_ptr and ACPI_PTR protections.
      iio:magn:ak8974: Drop of_match_ptr protection
      iio:humidity:htu21: Drop of_match_ptr protection
      iio:humidity:si7020: Drop of_match_ptr protection
      iio:health:max30102: Drop of_match_ptr and use generic fw accessors
      iio:dac:ad5592r: Fix use of true for IIO_SHARED_BY_TYPE
      iio:core: Tidy up kernel-doc.
      iio: Add __printf() attributes to various allocation functions
      iio:magn:hmc5843: Fix passing true where iio_shared_by enum required.
      iio:accel:bma180: Fix use of true when should be iio_shared_by enum
      dt-bindings:iio:adc:fsl,vf610-adc conversion to yaml.
      dt-bindings:iio:adc:ti,twl4030-madc yaml conversion
      dt-bindings:iio:adc:st,stmpe-adc yaml conversion
      dt-bindings:iio:adc: aspeed,ast2400 yaml conversion
      dt-bindings:iio:adc:marvell,berlin2-adc yaml conversion
      dt-bindings:iio:adc:sprd,sc2720-adc yaml conversion.
      dt-bindings:iio:adc:nuvoton,nau7802 yaml conversion
      dt-bindings:iio:adc:nuvoton,npcm750-adc yaml conversion
      dt-bindings:iio:adc:cosmic,10001-adc yaml conversion
      dt-bindings:iio:adc:ti,ads1015 yaml conversion
      dt-bindings:iio:adc:fsl,imx7d-adc yaml conversion
      dt-bindings:iio:adc:fsl,imx25-gcq yaml conversion
      dt-bindings:iio:adc:nxp,lpc1850-adc yaml conversion
      dt-bindings:iio:adc:nxp,lpc3220-adc yaml conversion
      dt-bindings:iio:adc:motorola,cpcap-adc yaml conversion
      dt-bindings:iio:adc:dlg,da9150-gpadc yaml conversion
      dt-bindings:iio:adc:adi,ad7949 yaml conversion
      dt-bindings:iio:adc:adi,ad7768-1 yaml conversion
      dt-bindings:iio:adc:holt,hi8435 yaml conversion
      iio:gyro:itg3200: Fix timestamp alignment and prevent data leak.
      iio:light:si1145: Fix timestamp alignment and prevent data leak.
      iio:imu:st_lsm6dsx Fix alignment and data leak issues
      iio:adc:ti-adc0832 Fix alignment issue with timestamp
      iio:adc:ti-adc12138 Fix alignment issue with timestamp
      iio:imu:inv_mpu6050 Fix dma and ts alignment and data leak issues.
      iio:imu:inv_mpu6050: Use regmap_noinc_read for fifo reads.
      dt-bindings:iio:adc:amlogic,meson-saradc yaml conversion

Julia Lawall (1):
      counter: use semicolons rather than commas to separate statements

J=E9r=F4me Pouiller (57):
      staging: wfx: fix BA when device is AP and MFP is enabled
      staging: wfx: improve usage of hif_map_link()
      staging: wfx: fix BA when MFP is disabled but BSS is MFP capable
      staging: wfx: fix spaces around binary operators
      staging: wfx: fix support for cipher AES_CMAC (multicast PMF)
      staging: wfx: drop useless field from struct wfx_tx_priv
      staging: wfx: fix frame reordering
      staging: wfx: fix potential use before init
      staging: wfx: scan while AP is supported
      staging: wfx: enable powersave on probe
      staging: wfx: remove useless extra jiffy
      staging: wfx: add workaround for 'timeout while wake up chip'
      staging: wfx: improve readability of association processing
      staging: wfx: relocate wfx_join() beside wfx_join_finalize()
      staging: wfx: simplify hif_set_association_mode()
      staging: wfx: keep API error list up-to-date
      staging: wfx: drop 'secure link' feature
      staging: wfx: drop multicast filtering
      staging: wfx: drop useless function
      staging: wfx: drop useless enum hif_beacon
      staging: wfx: drop useless union hif_commands_ids
      staging: wfx: drop useless struct hif_reset_flags
      staging: wfx: drop useless struct hif_ie_flags
      staging: wfx: drop useless struct hif_join_flags
      staging: wfx: drop useless struct hif_bss_flags
      staging: wfx: drop useless struct hif_map_link_flags
      staging: wfx: drop useless struct hif_suspend_resume_flags
      staging: wfx: drop useless struct hif_pm_mode
      staging: wfx: drop useless struct hif_rx_flags
      staging: wfx: drop useless struct hif_tx_result_flags
      staging: wfx: drop useless structs only used in hif_req_tx
      staging: wfx: drop useless stricts only used in hif_req_start_scan_alt
      staging: wfx: drop useless structs only used in hif_ind_startup
      staging: wfx: drop useless union hif_privacy_key_data
      staging: wfx: drop useless union hif_event_data
      staging: wfx: drop useless union hif_indication_data
      staging: wfx: drop struct hif_ie_tlv
      staging: wfx: drop macro API_SSID_SIZE
      staging: wfx: fix naming of hif_tx_rate_retry_policy
      staging: wfx: fix spaces
      staging: wfx: uniformize naming rules in hif_tx_mib.c
      staging: wfx: drop async field from struct hif_cmd
      staging: wfx: update TODO list
      staging: wfx: fix handling of MMIC error
      staging: wfx: remove remaining code of 'secure link' feature
      staging: wfx: fix BA sessions for older firmwares
      staging: wfx: fix QoS priority for slow buses
      staging: wfx: update copyrights dates
      dt-bindings: staging: wfx: silabs,wfx yaml conversion
      staging: wfx: improve error handling of hif_join()
      staging: wfx: check memory allocation
      staging: wfx: standardize the error when vif does not exist
      staging: wfx: wfx_init_common() returns NULL on error
      staging: wfx: increase robustness of hif_generic_confirm()
      staging: wfx: gpiod_get_value() can return an error
      staging: wfx: drop unicode characters from strings
      staging: wfx: improve robustness of wfx_get_hw_rate()

Krzysztof Kozlowski (25):
      iio: accel: bma180: Simplify with dev_err_probe()
      iio: accel: mma8452: Simplify with dev_err_probe()
      iio: adc: envelope-detector: Simplify with dev_err_probe()
      iio: adc: exynos_adc: Simplify with dev_err_probe()
      iio: adc: ltc2497: Simplify with dev_err_probe()
      iio: adc: meson_saradc: Simplify with dev_err_probe()
      iio: adc: rcar-gyroadc: Simplify with dev_err_probe()
      iio: adc: stm32: Simplify with dev_err_probe()
      iio: afe: iio-rescale: Simplify with dev_err_probe()
      iio: amplifiers: hmc425a: Simplify with dev_err_probe()
      iio: chemical: scd30: Simplify with dev_err_probe()
      iio: dac: dpot-dac: Simplify with dev_err_probe()
      iio: imu: inv_mpu6050: Simplify with dev_err_probe()
      iio: light: isl29018: Simplify with dev_err_probe()
      iio: light: tsl2772: Simplify with dev_err_probe()
      iio: magnetometer: ak8974: Simplify with dev_err_probe()
      iio: magnetometer: mag3110: Simplify with dev_err_probe()
      iio: multiplexer: iio-mux: Simplify with dev_err_probe()
      MAINTAINERS: Consolidate Analog Devices IIO entries and remove Beniam=
in Bia
      MAINTAINERS: Move Hartmut Knaack to Credits
      iio: adc: stm32: Fix missing return in booster error path
      dt-bindings: iio: adc: exynos-adc: require second interrupt with touc=
h screen
      dt-bindings: iio: adc: exynos-adc: do not require syscon on S5Pv210
      dt-bindings: iio: vishay,vcnl4000: add interrupts property
      iio: ssp: use PLATFORM_DEVID_NONE

Lars-Peter Clausen (1):
      iio: trigger: make stub functions static inline

Lee Jones (6):
      iio: dac: ad7303: Complete 'struct ad7303_state' doc
      iio: dac: ad5064: Fix a few kerneldoc misdemeanours
      iio: adc: ad7949: Fix misspelling issue
      iio: dummy: iio_dummy_evgen: Demote file header and supply descriptio=
n for 'irq_sim_domain'
      iio: gyro: adis16080: Fix formatting issue
      iio: chemical: sgp30: Add description for sgp_read_cmd()'s 'duration_=
us'

Linus Walleij (1):
      staging: media: atomisp: Convert to GPIO descriptors

Liu Shixin (1):
      iio: adc: palmas_gpadc: use module_platform_driver to simplify the co=
de

Lokesh Chebrolu (1):
      Staging: comedi: pcl726: fixed a spelling mistake

Marek Szyprowski (1):
      staging: tegra-vde: fix common struct sg_table related issues

Mario Tesi (1):
      iio: imu: st_lsm6dsx: Scaling factor type set to IIO_VAL_INT_PLUS_NANO

Martin Blumenstingl (1):
      iio: adc: meson-saradc: Make the of_device_id array style consistent

Matt Ranostay (6):
      iio: add IIO_MOD_O2 modifier
      iio: chemical: atlas-ezo-sensor: add support for O2 sensor
      dt-bindings: iio: chemical: add O2 EZO module documentation
      iio: health: max30102: update author's email
      dt-bindings: iio: chemical: add Atlas EZO Humidity module documentati=
on
      iio: chemical: atlas-ezo-sensor: add humidity sensor support

Mauro Carvalho Chehab (52):
      staging: spmi: hisi-spmi-controller: coding style fixup
      staging: spmi: hisi-spmi-controller: fix it to probe successfully
      staging: spmi: hisi-spmi-controller: fix a typo
      staging: spmi: hisi-spmi-controller: adjust whitespaces at defines
      staging: spmi: hisi-spmi-controller: use le32 macros where needed
      staging: spmi: hisi-spmi-controller: add debug when values are read/w=
rite
      staging: spmi: hisi-spmi-controller: fix the dev_foo() logic
      staging: spmi: hisi-spmi-controller: add it to the building system
      staging: spmi: hisi-spmi-controller: do some code cleanups
      staging: mfd: hi6421-spmi-pmic: get rid of unused code
      staging: mfd: hi6421-spmi-pmic: deal with non-static functions
      staging: mfd: hi6421-spmi-pmic: get rid of the static vars
      staging: mfd: hi6421-spmi-pmic: cleanup hi6421-spmi-pmic.h header
      staging: mfd: hi6421-spmi-pmic: change the binding logic
      staging: mfd: hi6421-spmi-pmic: get rid of unused OF properties
      staging: mfd: hi6421-spmi-pmic: cleanup OF properties
      staging: mfd: hi6421-spmi-pmic: change namespace on its functions
      staging: mfd: hi6421-spmi-pmic: fix some coding style issues
      staging: mfd: hi6421-spmi-pmic: add it to the building system
      staging: mfd: hi6421-spmi-pmic: cleanup the code
      staging: regulator: hi6421v600-regulator: get rid of unused code
      staging: regulator: hi6421v600-regulator: port it to upstream
      staging: regulator: hi6421v600-regulator: coding style fixups
      staging: regulator: hi6421v600-regulator: change the binding logic
      staging: regulator: hi6421v600-regulator: cleanup struct hisi_regulat=
or
      staging: regulator: hi6421v600-regulator: cleanup debug messages
      staging: regulator: hi6421v600-regulator: use shorter names for OF pr=
operties
      staging: regulator: hi6421v600-regulator: better handle modes
      staging: regulator: hi6421v600-regulator: change namespace
      staging: regulator: hi6421v600-regulator: convert to use get/set volt=
age_sel
      staging: regulator: hi6421v600-regulator: don't use usleep_range for =
off_on_delay
      staging: regulator: hi6421v600-regulator: add a driver-specific debug=
 macro
      staging: regulator: hi6421v600-regulator: initialize ramp_delay
      staging: regulator: hi6421v600-regulator: cleanup DT settings
      staging: regulator: hi6421v600-regulator: fix some coding style issues
      staging: regulator: hi6421v600-regulator: add it to the building syst=
em
      staging: regulator: hi6421v600-regulator: code cleanup
      staging: hikey9xx: add a TODO list
      staging: hikey9xx: fix Kconfig dependency chain
      staging: mfd: hi6421-spmi-pmic: get rid of interrupt properties
      staging: spmi: hisi-spmi-controller: change compatible string
      staging: mfd: hi6421-spmi-pmic: Simplify the compatible string
      dt: document HiSilicon SPMI controller and mfd/regulator properties
      MAINTAINERS: add an entry for HiSilicon 6421v600 drivers
      staging: hikey9xx: Kconfig: add regulator dependency
      staging: hikey9xx: update references inside the yaml files
      staging: hikey9xx: add build for the Kirin 970 PHY driver
      staging: hikey9xx: phy-hi3670-usb3: use a consistent namespace
      staging: hikey9xx: phy-hi3670-usb3.txt: use a consistent namespace
      staging: hikey9xx: phy-hi3670-usb3: fix coding style
      staging: hikey9xx: phy-hi3670-usb3: change some DT properties
      staging: hikey9xx: convert phy-kirin970-usb3.txt to yaml

Mayulong (3):
      staging: spmi: add Hikey 970 SPMI controller driver
      staging: mfd: add a PMIC driver for HiSilicon 6421 SPMI version
      staging: regulator: add a regulator driver for HiSilicon 6421v600 SPM=
I PMIC

Michael Auchter (2):
      iio: adc: ad7291: convert to device tree
      dt-bindings: iio: adc: ad7291: add binding

Michael Hennerich (2):
      iio: adc: ad9467: add support for AD9434 high-speed ADC
      iio: adc: ad9467: add support for AD9265 high-speed ADC

Michael Straube (25):
      staging: rtl8723bs: remove 5 GHz code
      staging: rtl8188eu: use __func__ in os_dep
      staging: rtl8188eu: clean up whitespace in wpa_set_encryption()
      staging: rtl8723bs: remove cckrates{only}_included()
      staging: rtl8723bs: remove 5 GHz code
      staging: rtl8188eu: remove extra indentations
      staging: rtl8188eu: clean up blank line style issues
      staging: rtl8188eu: use __func__ in hal directory
      staging: rtl8188eu: clean up comparsion style issues
      staging: rtl8712: clean up comparsions to NULL
      staging: rtl8712: use shorter array initializations
      staging: rtl8188eu: clean up block comment style issues
      staging: rtl8188eu: clean up alignment style issues
      staging: rtl8192u: clean up blank line style issues
      staging: rtl8192u: correct placement of else if
      staging: rtl8192u: clean up comparsions to NULL
      staging: rtl8188eu: Reapply "staging:r8188eu: Use lib80211 to encrypt=
 (CCMP) tx frames"
      staging: rtl8188eu: remove unused macros and definitions
      staging: rtl8188eu: clean up comparsions to NULL
      staging: rtl8188eu: rename struct field Bssid -> bssid
      staging: rtl8188eu: use ETH_ALEN
      staging: rtl8188eu: rename struct field bUsed -> used
      staging: rtl8188eu: remove cckrates{only}_included()
      staging: rtl8188eu: remove unused variable ratelen
      staging: rtl8188eu: clean up indent style issue

Mikhail Gusarov (1):
      staging: emxx_udc: Remove misplaced debugging aid

Mohammed Rushad (2):
      Staging: rtl8192e: fix indent coding style issue in rtllib_tx.c
      staging: rtl8723bs: os_dep: fix brace coding style issue in sdio_intf=
.c

Naveen Panwar (1):
      drivers: staging: octeon-usb: fixed codestyle check warning

Necip Fazil Yildiran (3):
      staging: rtl8192e: fix kconfig dependency warning for RTLLIB_CRYPTO_C=
CMP
      staging: rtl8192e: fix kconfig dependency warning for RTLLIB_CRYPTO_T=
KIP
      staging: rtl8192e: fix kconfig dependency warning for RTLLIB_CRYPTO_W=
EP

Nishant Malpani (7):
      iio: gyro: Add driver support for ADXRS290
      dt-bindings: iio: gyro: Add DT binding doc for ADXRS290
      iio: gyro: adxrs290: Insert missing mutex initialization call
      iio: gyro: adxrs290: use hook for devm resource unwinding
      iio: gyro: adxrs290: Add triggered buffer support
      dt-bindings: iio: gyro: adxrs290: Add interrupts support
      iio: gyro: adxrs290: Add debugfs register access support

Nuno S=E1 (16):
      iio: adis16201: Use Managed device functions
      iio: adis16209: Use Managed device functions
      iio: adis16136: Use Managed device functions
      iio: adis16260: Use Managed device functions
      iio: adis16400: Use Managed device functions
      iio: adis16460: Use Managed device functions
      iio: adis16480: Use Managed device functions
      staging: iio: adis16203: Use Managed device functions
      staging: iio: adis16240: Use Managed device functions
      iio: adis: Drop non Managed device functions
      iio: adis: Move burst mode into adis_data
      iio: adis16400: Drop adis_burst usage
      iio: adis16475: Drop adis_burst usage
      iio: adis. Drop adis_burst struct
      iio: ltc2983: Fix of_node refcounting
      iio: ad7292: Fix of_node refcounting

N=EDcolas F. R. A. Prado (1):
      staging: most: dim2: Add missing identifier name to function argument

Phil Reid (1):
      dt-bindings: iio: adc: tlc4541 - recover accidentally dropped binding=
 doc

Randy Dunlap (1):
      platform_data: ad7793.h: drop a duplicated word

Rikard Falkeborn (2):
      iio: dac: ad5686: Constify static struct iio_chan_spec
      counter: microchip-tcb-capture: Constify mchp_tc_ops

Ross Schmidt (13):
      staging: rtl8723bs: os_dep: added blank line to fix coding style issue
      staging: qlge: fix quoted string split across lines
      staging: rtl8723bs: os_dep: fixed trailing statements
      staging: rtl8723bs: os_dep: fixed bracing issue
      staging: rtl8723bs: os_dep: fixed spacing around operators issue
      staging: rtl8723bs: replace RND4 with round_up()
      staging: rtl8723bs: replace _RND4 with round_up()
      staging: rtl8723bs: replace _RND8 with round_up()
      staging: rtl8723bs: remove unused macros
      staging: rtl8723bs: replace RTW_GET_BE24 with get_unaligned_be24
      staging: rtl8723bs: replace RTW_GET_LE16 with get_unaligned_le16
      staging: rtl8723bs: replace RTW_GET_BE16 with get_unaligned_be16
      staging: rtl8723bs: replace _cancel_timer with del_timer_sync

Ryan Kosta (1):
      Staging: nvec: Removes repeated word typo in comment

Sebastian Fuentes (3):
      staging: qlge: qlge_mpi: Fix several CHECKs involving braces
      staging: rts5208: rtsx_transport.c: Fix lines ending with parentheses
      staging: vt6655: Add spaces around arithmetic operators

Sergiu Cuciurean (5):
      iio: stm32-dac: Replace indio_dev->mlock with own device lock
      iio: dac: ti-dac7612: Replace indio_dev->mlock with own device lock
      iio: frequency: adf4350: Replace indio_dev->mlock with own device lock
      iio: adc: fsl-imx25-gcq: Replace indio_dev->mlock with own device lock
      iio: adc: exynos_adc: Replace indio_dev->mlock with own device lock

Stefan Popa (2):
      iio: adxl372_i2c: Add OF device ID table
      iio: accel: adxl372: Add support for FIFO peak mode

Steff Richards (1):
      staging: wlan-ng: fix alignment to match open parentheses

Stephen Boyd (3):
      iio: sx9310: Drop channel_users[]
      iio: sx9310: Enable vdd and svdd regulators at probe
      iio: sx9310: Use irq trigger flags from firmware

Tian Tao (1):
      iio: adc: adi-axi-adc: Use kobj_to_dev() instead of container_of()

Timo A. Aranjo (1):
      Staging: sm750fb: Fix basic coding style issues

Tobias Jordan (1):
      iio: adc: gyroadc: fix leak of device node iterator

Tom Rix (2):
      staging: wfx: simplify virt_addr_valid call
      iio:imu:st_lsm6dsx: check st_lsm6dsx_shub_read_output return

Tomer Samara (1):
      staging: wfx: clear alignment style issues

Vincent Whitchurch (1):
      iio: dac: dac5571: Support powerdown for multi-channel

Wang Qing (1):
      iio:light:gp2ap002 fix spelling typo in comments

Wang ShaoBo (2):
      iio: adc: at91-sama5d2_adc: Use devm_platform_get_and_ioremap_resourc=
e()
      iio: adc: stm32-dfsdm: Use devm_platform_get_and_ioremap_resource()

Yu Chen (2):
      staging: hikey9xx: add USB physical layer for Kirin 3670
      staging: hikey9xx: phy-hi3670-usb3: fix some issues at the init code

YueHaibing (3):
      staging: rtl8723bs: os_dep: return errcode in cfg80211_rtw_leave_ibss=
()
      staging: spmi: hisi-spmi-controller: Use proper format in call to dev=
_err()
      staging: regulator: hi6421v600-regulator: Remove unused including <li=
nux/version.h>

kernel test robot (1):
      drivers/iio/humidity/hdc2010.c:305:2-3: Unneeded semicolon

 CREDITS                                            |    4 +
 Documentation/ABI/testing/sysfs-bus-iio            |   90 +-
 .../ABI/testing/sysfs-bus-iio-accel-adxl372        |    7 +
 .../ABI/testing/sysfs-bus-iio-humidity-hdc2010     |    9 +
 .../ABI/testing/sysfs-bus-iio-light-tsl2772        |    0
 .../devicetree/bindings/iio/adc/ad7949.txt         |   16 -
 .../devicetree/bindings/iio/adc/adi,ad7291.yaml    |   46 +
 .../devicetree/bindings/iio/adc/adi,ad7768-1.txt   |   41 -
 .../devicetree/bindings/iio/adc/adi,ad7768-1.yaml  |   89 ++
 .../devicetree/bindings/iio/adc/adi,ad7949.yaml    |   57 +
 .../devicetree/bindings/iio/adc/adi,ad9467.yaml    |   15 +-
 .../devicetree/bindings/iio/adc/ads1015.txt        |   73 --
 .../bindings/iio/adc/amlogic,meson-saradc.txt      |   48 -
 .../bindings/iio/adc/amlogic,meson-saradc.yaml     |  149 +++
 .../bindings/iio/adc/aspeed,ast2400-adc.yaml       |   55 +
 .../devicetree/bindings/iio/adc/aspeed_adc.txt     |   22 -
 .../devicetree/bindings/iio/adc/berlin2_adc.txt    |   19 -
 .../devicetree/bindings/iio/adc/cc10001_adc.txt    |   22 -
 .../bindings/iio/adc/cosmic,10001-adc.yaml         |   59 +
 .../devicetree/bindings/iio/adc/cpcap-adc.txt      |   17 -
 .../devicetree/bindings/iio/adc/da9150-gpadc.txt   |   16 -
 .../bindings/iio/adc/dlg,da9150-gpadc.yaml         |   35 +
 .../devicetree/bindings/iio/adc/fsl,imx25-gcq.txt  |   57 -
 .../devicetree/bindings/iio/adc/fsl,imx25-gcq.yaml |  131 ++
 .../devicetree/bindings/iio/adc/fsl,imx7d-adc.yaml |   62 +
 .../devicetree/bindings/iio/adc/fsl,vf610-adc.yaml |   81 ++
 .../devicetree/bindings/iio/adc/hi8435.txt         |   21 -
 .../devicetree/bindings/iio/adc/holt,hi8435.yaml   |   50 +
 .../devicetree/bindings/iio/adc/imx7d-adc.txt      |   24 -
 .../devicetree/bindings/iio/adc/lltc,ltc2497.yaml  |   44 +
 .../devicetree/bindings/iio/adc/lpc1850-adc.txt    |   20 -
 .../devicetree/bindings/iio/adc/lpc32xx-adc.txt    |   21 -
 .../devicetree/bindings/iio/adc/ltc2497.txt        |   13 -
 .../bindings/iio/adc/marvell,berlin2-adc.yaml      |   50 +
 .../devicetree/bindings/iio/adc/max11100.txt       |   18 -
 .../devicetree/bindings/iio/adc/max1118.txt        |   21 -
 .../devicetree/bindings/iio/adc/max9611.txt        |   27 -
 .../bindings/iio/adc/maxim,max11100.yaml           |   49 +
 .../devicetree/bindings/iio/adc/maxim,max1118.yaml |   62 +
 .../devicetree/bindings/iio/adc/maxim,max9611.yaml |   51 +
 .../devicetree/bindings/iio/adc/mcp320x.txt        |   57 -
 .../devicetree/bindings/iio/adc/mcp3422.txt        |   19 -
 .../bindings/iio/adc/microchip,mcp3201.yaml        |   77 ++
 .../bindings/iio/adc/motorola,cpcap-adc.yaml       |   53 +
 .../bindings/iio/adc/nuvoton,nau7802.yaml          |   50 +
 .../bindings/iio/adc/nuvoton,npcm-adc.txt          |   26 -
 .../bindings/iio/adc/nuvoton,npcm750-adc.yaml      |   64 +
 .../bindings/iio/adc/nuvoton-nau7802.txt           |   18 -
 .../bindings/iio/adc/nxp,lpc1850-adc.yaml          |   61 +
 .../bindings/iio/adc/nxp,lpc3220-adc.yaml          |   50 +
 .../bindings/iio/adc/samsung,exynos-adc.yaml       |   15 +-
 .../bindings/iio/adc/sprd,sc2720-adc.yaml          |   72 ++
 .../bindings/iio/adc/sprd,sc27xx-adc.txt           |   40 -
 .../devicetree/bindings/iio/adc/st,stmpe-adc.yaml  |   45 +
 .../devicetree/bindings/iio/adc/stmpe-adc.txt      |   21 -
 .../devicetree/bindings/iio/adc/ti,adc0832.yaml    |   56 +
 .../devicetree/bindings/iio/adc/ti,adc108s102.yaml |   47 +
 .../devicetree/bindings/iio/adc/ti,adc12138.yaml   |   86 ++
 .../devicetree/bindings/iio/adc/ti,adc128s052.yaml |   59 +
 .../devicetree/bindings/iio/adc/ti,adc161s626.yaml |   51 +
 .../devicetree/bindings/iio/adc/ti,ads1015.yaml    |  112 ++
 .../devicetree/bindings/iio/adc/ti,ads7950.yaml    |   65 +
 .../devicetree/bindings/iio/adc/ti,ads8344.yaml    |   51 +
 .../devicetree/bindings/iio/adc/ti,tlc4541.yaml    |   52 +
 .../bindings/iio/adc/ti,twl4030-madc.yaml          |   48 +
 .../devicetree/bindings/iio/adc/ti-adc0832.txt     |   19 -
 .../devicetree/bindings/iio/adc/ti-adc108s102.txt  |   18 -
 .../devicetree/bindings/iio/adc/ti-adc12138.txt    |   37 -
 .../devicetree/bindings/iio/adc/ti-adc128s052.txt  |   25 -
 .../devicetree/bindings/iio/adc/ti-adc161s626.txt  |   18 -
 .../devicetree/bindings/iio/adc/ti-ads7950.txt     |   23 -
 .../devicetree/bindings/iio/adc/ti-ads8344.txt     |   19 -
 .../devicetree/bindings/iio/adc/twl4030-madc.txt   |   24 -
 .../devicetree/bindings/iio/adc/vf610-adc.txt      |   36 -
 .../bindings/iio/chemical/atlas,sensor.yaml        |    4 +
 .../devicetree/bindings/iio/dac/lltc,ltc2632.yaml  |   77 ++
 .../devicetree/bindings/iio/dac/ltc2632.txt        |   49 -
 .../bindings/iio/gyroscope/adi,adxrs290.yaml       |   59 +
 .../bindings/iio/humidity/ti,hdc2010.yaml          |   45 +
 .../devicetree/bindings/iio/light/ams,as73211.yaml |   54 +
 .../bindings/iio/light/vishay,vcnl4000.yaml        |    4 +
 .../bindings/iio/proximity/semtech,sx9310.yaml     |   65 +
 .../devicetree/bindings/iio/proximity/vl53l0x.txt  |    6 +
 .../devicetree/bindings/trivial-devices.yaml       |   16 +
 MAINTAINERS                                        |   72 +-
 drivers/counter/microchip-tcb-capture.c            |    2 +-
 drivers/counter/ti-eqep.c                          |    2 +-
 drivers/iio/Kconfig                                |    2 +-
 drivers/iio/accel/adis16201.c                      |   26 +-
 drivers/iio/accel/adis16209.c                      |   25 +-
 drivers/iio/accel/adxl372.c                        |  311 ++++-
 drivers/iio/accel/adxl372_i2c.c                    |    8 +
 drivers/iio/accel/adxl372_spi.c                    |    4 +-
 drivers/iio/accel/bma180.c                         |   22 +-
 drivers/iio/accel/bma220_spi.c                     |   85 +-
 drivers/iio/accel/cros_ec_accel_legacy.c           |    2 +-
 drivers/iio/accel/mma8452.c                        |   20 +-
 drivers/iio/adc/Kconfig                            |    4 +-
 drivers/iio/adc/ad7291.c                           |   35 +-
 drivers/iio/adc/ad7292.c                           |    4 +-
 drivers/iio/adc/ad7949.c                           |    2 +-
 drivers/iio/adc/ad9467.c                           |  124 +-
 drivers/iio/adc/adi-axi-adc.c                      |    2 +-
 drivers/iio/adc/at91-sama5d2_adc.c                 |   26 +-
 drivers/iio/adc/axp20x_adc.c                       |   14 +-
 drivers/iio/adc/bcm_iproc_adc.c                    |    4 +-
 drivers/iio/adc/envelope-detector.c                |   16 +-
 drivers/iio/adc/exynos_adc.c                       |   30 +-
 drivers/iio/adc/fsl-imx25-gcq.c                    |   15 +-
 drivers/iio/adc/ltc2497-core.c                     |   10 +-
 drivers/iio/adc/meson_saradc.c                     |   18 +-
 drivers/iio/adc/palmas_gpadc.c                     |   13 +-
 drivers/iio/adc/rcar-gyroadc.c                     |   30 +-
 drivers/iio/adc/stm32-adc-core.c                   |   80 +-
 drivers/iio/adc/stm32-adc.c                        |   10 +-
 drivers/iio/adc/stm32-dfsdm-adc.c                  |   10 +-
 drivers/iio/adc/stm32-dfsdm-core.c                 |   20 +-
 drivers/iio/adc/ti-adc081c.c                       |   24 +-
 drivers/iio/adc/ti-adc0832.c                       |   11 +-
 drivers/iio/adc/ti-adc108s102.c                    |    5 +-
 drivers/iio/adc/ti-adc12138.c                      |   13 +-
 drivers/iio/adc/ti-adc128s052.c                    |    3 +-
 drivers/iio/afe/iio-rescale.c                      |    8 +-
 drivers/iio/amplifiers/Kconfig                     |    1 +
 drivers/iio/amplifiers/hmc425a.c                   |    9 +-
 drivers/iio/buffer/Kconfig                         |   10 +-
 drivers/iio/buffer/industrialio-buffer-dmaengine.c |   12 +-
 drivers/iio/chemical/ams-iaq-core.c                |    3 +-
 drivers/iio/chemical/atlas-ezo-sensor.c            |   88 +-
 drivers/iio/chemical/atlas-sensor.c                |   10 +-
 drivers/iio/chemical/scd30_core.c                  |    9 +-
 drivers/iio/chemical/sgp30.c                       |   29 +-
 drivers/iio/chemical/vz89x.c                       |   18 +-
 .../iio/common/cros_ec_sensors/cros_ec_lid_angle.c |    3 +-
 .../iio/common/cros_ec_sensors/cros_ec_sensors.c   |    5 +-
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  |   11 +-
 drivers/iio/common/ssp_sensors/ssp_dev.c           |    3 +-
 drivers/iio/dac/ad5064.c                           |    6 +-
 drivers/iio/dac/ad5446.c                           |    5 +-
 drivers/iio/dac/ad5592r-base.c                     |   56 +-
 drivers/iio/dac/ad5592r.c                          |    7 +-
 drivers/iio/dac/ad5593r.c                          |    7 +-
 drivers/iio/dac/ad5686.c                           |    8 +-
 drivers/iio/dac/ad5686.h                           |    2 +-
 drivers/iio/dac/ad7303.c                           |    6 +-
 drivers/iio/dac/dpot-dac.c                         |   16 +-
 drivers/iio/dac/mcp4725.c                          |   29 +-
 drivers/iio/dac/stm32-dac-core.c                   |    5 +-
 drivers/iio/dac/stm32-dac.c                        |   13 +-
 drivers/iio/dac/ti-dac082s085.c                    |    5 +-
 drivers/iio/dac/ti-dac5571.c                       |   36 +-
 drivers/iio/dac/ti-dac7612.c                       |   14 +-
 drivers/iio/dummy/iio_dummy_evgen.c                |    4 +-
 drivers/iio/frequency/ad9523.c                     |   60 +-
 drivers/iio/frequency/adf4350.c                    |   21 +-
 drivers/iio/gyro/Kconfig                           |   12 +
 drivers/iio/gyro/Makefile                          |    1 +
 drivers/iio/gyro/adis16080.c                       |    2 +-
 drivers/iio/gyro/adis16136.c                       |   37 +-
 drivers/iio/gyro/adis16260.c                       |   33 +-
 drivers/iio/gyro/adxrs290.c                        |  710 +++++++++++
 drivers/iio/gyro/itg3200_buffer.c                  |   15 +-
 drivers/iio/health/max30102.c                      |   15 +-
 drivers/iio/humidity/Kconfig                       |   10 +
 drivers/iio/humidity/Makefile                      |    1 +
 drivers/iio/humidity/hdc100x.c                     |    3 +-
 drivers/iio/humidity/hdc2010.c                     |  353 ++++++
 drivers/iio/humidity/htu21.c                       |    3 +-
 drivers/iio/humidity/si7020.c                      |    3 +-
 drivers/iio/iio_core_trigger.h                     |    4 +-
 drivers/iio/imu/adis16400.c                        |   72 +-
 drivers/iio/imu/adis16460.c                        |   25 +-
 drivers/iio/imu/adis16475.c                        |   18 +-
 drivers/iio/imu/adis16480.c                        |   55 +-
 drivers/iio/imu/adis_buffer.c                      |   76 +-
 drivers/iio/imu/adis_trigger.c                     |   60 -
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         |   20 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h          |   12 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c         |   14 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |    6 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     |   42 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |  134 ++-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |    2 +
 drivers/iio/industrialio-buffer.c                  |   46 +-
 drivers/iio/industrialio-core.c                    |    5 +-
 drivers/iio/industrialio-event.c                   |   51 +-
 drivers/iio/industrialio-trigger.c                 |    3 +-
 drivers/iio/light/Kconfig                          |   15 +
 drivers/iio/light/Makefile                         |    1 +
 drivers/iio/light/as73211.c                        |  800 +++++++++++++
 drivers/iio/light/cros_ec_light_prox.c             |    5 +-
 drivers/iio/light/gp2ap002.c                       |    2 +-
 drivers/iio/light/isl29018.c                       |    9 +-
 drivers/iio/light/si1145.c                         |   19 +-
 drivers/iio/light/tsl2772.c                        |   10 +-
 drivers/iio/magnetometer/ak8974.c                  |   14 +-
 drivers/iio/magnetometer/ak8975.c                  |    8 +-
 drivers/iio/magnetometer/hmc5843_core.c            |    4 +-
 drivers/iio/magnetometer/mag3110.c                 |   20 +-
 drivers/iio/multiplexer/iio-mux.c                  |    8 +-
 drivers/iio/potentiometer/ad5272.c                 |    5 +-
 drivers/iio/potentiometer/ds1803.c                 |    6 +-
 drivers/iio/potentiometer/max5432.c                |    8 +-
 drivers/iio/potentiometer/max5481.c                |   23 +-
 drivers/iio/potentiometer/mcp4018.c                |   12 +-
 drivers/iio/potentiometer/mcp4131.c                |    8 +-
 drivers/iio/potentiometer/mcp4531.c                |   11 +-
 drivers/iio/potentiostat/lmp91000.c                |   11 +-
 drivers/iio/pressure/cros_ec_baro.c                |    5 +-
 drivers/iio/pressure/icp10100.c                    |    3 +-
 drivers/iio/pressure/ms5611_i2c.c                  |    6 +-
 drivers/iio/pressure/ms5611_spi.c                  |    6 +-
 drivers/iio/pressure/ms5637.c                      |    3 +-
 drivers/iio/pressure/zpa2326_i2c.c                 |    6 +-
 drivers/iio/pressure/zpa2326_spi.c                 |    6 +-
 drivers/iio/proximity/as3935.c                     |   44 +-
 drivers/iio/proximity/pulsedlight-lidar-lite-v2.c  |    3 +-
 drivers/iio/proximity/sx9310.c                     |  427 +++----
 drivers/iio/proximity/vl53l0x-i2c.c                |  104 +-
 drivers/iio/resolver/ad2s1200.c                    |    3 +-
 drivers/iio/temperature/ltc2983.c                  |   19 +-
 drivers/iio/temperature/mlx90632.c                 |  283 ++++-
 drivers/iio/temperature/tmp007.c                   |    4 +-
 drivers/iio/temperature/tsys01.c                   |    3 +-
 drivers/most/Kconfig                               |    9 +
 drivers/most/Makefile                              |    1 +
 .../{staging/most/cdev/cdev.c =3D> most/most_cdev.c} |    0
 drivers/net/wireless/microchip/wilc1000/spi.c      |    5 +-
 drivers/staging/Kconfig                            |    2 +
 drivers/staging/Makefile                           |    1 +
 drivers/staging/android/ion/ion.c                  |    6 +-
 drivers/staging/comedi/comedi.h                    |    4 +-
 drivers/staging/comedi/comedidev.h                 |    2 +-
 drivers/staging/comedi/drivers/addi_apci_1564.c    |    4 +-
 drivers/staging/comedi/drivers/comedi_8255.c       |    2 +-
 drivers/staging/comedi/drivers/ni_tiocmd.c         |    2 +-
 drivers/staging/comedi/drivers/pcl726.c            |    2 +-
 drivers/staging/comedi/drivers/pcmuio.c            |    2 +-
 drivers/staging/comedi/drivers/quatech_daqp_cs.c   |    2 +-
 drivers/staging/comedi/drivers/vmk80xx.c           |    3 +
 drivers/staging/emxx_udc/Kconfig                   |    2 +-
 drivers/staging/emxx_udc/emxx_udc.c                |   19 +-
 drivers/staging/emxx_udc/emxx_udc.h                |  461 ++++---
 drivers/staging/fsl-dpaa2/ethsw/ethsw-ethtool.c    |   55 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |  441 ++++---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h            |    2 +-
 drivers/staging/fwserial/fwserial.c                |    2 +-
 drivers/staging/greybus/audio_codec.c              |    4 +-
 drivers/staging/greybus/audio_module.c             |    6 +-
 drivers/staging/greybus/audio_topology.c           |   20 +-
 drivers/staging/greybus/gbphy.h                    |    4 +-
 drivers/staging/hikey9xx/Kconfig                   |   49 +
 drivers/staging/hikey9xx/Makefile                  |    7 +
 drivers/staging/hikey9xx/TODO                      |    5 +
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c        |  342 ++++++
 drivers/staging/hikey9xx/hi6421v600-regulator.c    |  478 ++++++++
 drivers/staging/hikey9xx/hisi-spmi-controller.c    |  358 ++++++
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml       |  159 +++
 .../hikey9xx/hisilicon,hisi-spmi-controller.yaml   |   62 +
 drivers/staging/hikey9xx/phy-hi3670-usb3.c         |  671 +++++++++++
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml      |   72 ++
 drivers/staging/iio/Documentation/dac/max517       |   41 -
 drivers/staging/iio/Documentation/device.txt       |   74 --
 drivers/staging/iio/Documentation/overview.txt     |   57 -
 drivers/staging/iio/Documentation/ring.txt         |   47 -
 .../staging/iio/Documentation/sysfs-bus-iio-light  |   79 --
 drivers/staging/iio/Documentation/trigger.txt      |   31 -
 drivers/staging/iio/accel/adis16203.c              |   26 +-
 drivers/staging/iio/accel/adis16240.c              |   25 +-
 drivers/staging/iio/frequency/ad9834.c             |    1 -
 drivers/staging/kpc2000/kpc_dma/fileops.c          |    4 +-
 drivers/staging/ks7010/ks7010_sdio.c               |    6 +-
 drivers/staging/ks7010/ks_hostif.c                 |    6 +-
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c |   68 +-
 .../staging/media/atomisp/include/media/lm3554.h   |    7 +-
 drivers/staging/media/tegra-vde/iommu.c            |    4 +-
 drivers/staging/most/Kconfig                       |    2 -
 drivers/staging/most/Makefile                      |    1 -
 drivers/staging/most/cdev/Kconfig                  |   13 -
 drivers/staging/most/cdev/Makefile                 |    4 -
 drivers/staging/most/dim2/dim2.c                   |    6 +-
 drivers/staging/mt7621-dma/mtk-hsdma.c             |    6 +-
 drivers/staging/mt7621-pci/TODO                    |    2 +-
 drivers/staging/nvec/nvec.c                        |    2 +-
 drivers/staging/octeon-usb/octeon-hcd.c            |    3 +-
 drivers/staging/pi433/pi433_if.h                   |   26 +-
 drivers/staging/qlge/qlge.h                        |   20 +-
 drivers/staging/qlge/qlge_dbg.c                    |   28 +-
 drivers/staging/qlge/qlge_main.c                   |   20 +-
 drivers/staging/qlge/qlge_mpi.c                    |   15 +-
 drivers/staging/ralink-gdma/ralink-gdma.c          |    6 +-
 drivers/staging/rtl8188eu/core/rtw_ap.c            |   10 +-
 drivers/staging/rtl8188eu/core/rtw_cmd.c           |   78 +-
 drivers/staging/rtl8188eu/core/rtw_debug.c         |    8 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |   14 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |   58 +-
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c       |   12 +-
 drivers/staging/rtl8188eu/core/rtw_security.c      |  790 ++----------
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |   92 +-
 drivers/staging/rtl8188eu/hal/hal_intf.c           |    4 +-
 drivers/staging/rtl8188eu/hal/odm.c                |   65 +-
 drivers/staging/rtl8188eu/hal/phy.c                |   49 +-
 drivers/staging/rtl8188eu/hal/pwrseqcmd.c          |   25 +-
 drivers/staging/rtl8188eu/hal/rf.c                 |    1 +
 drivers/staging/rtl8188eu/hal/rf_cfg.c             |    7 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c  |    6 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_recv.c     |    3 +-
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c     |    5 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c        |   13 +-
 drivers/staging/rtl8188eu/include/ieee80211.h      |   10 -
 drivers/staging/rtl8188eu/include/osdep_service.h  |    1 +
 drivers/staging/rtl8188eu/include/rtl8188e_recv.h  |    2 +-
 drivers/staging/rtl8188eu/include/rtl8188e_xmit.h  |    3 +-
 drivers/staging/rtl8188eu/include/rtw_mlme.h       |    4 +-
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h   |    5 +-
 drivers/staging/rtl8188eu/include/rtw_recv.h       |    2 +
 drivers/staging/rtl8188eu/include/rtw_security.h   |   62 +-
 drivers/staging/rtl8188eu/include/wifi.h           |   34 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |  329 +++--
 drivers/staging/rtl8188eu/os_dep/os_intfs.c        |   46 +-
 drivers/staging/rtl8188eu/os_dep/rtw_android.c     |   10 +-
 drivers/staging/rtl8188eu/os_dep/usb_intf.c        |   52 +-
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c   |    8 +-
 drivers/staging/rtl8188eu/os_dep/xmit_linux.c      |    2 +-
 drivers/staging/rtl8192e/Kconfig                   |    1 +
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c       |   27 +-
 drivers/staging/rtl8192e/rtllib_softmac.c          |    6 +-
 drivers/staging/rtl8192e/rtllib_tx.c               |    2 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |    2 +-
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c |    6 +-
 drivers/staging/rtl8192u/r8192U_core.c             |    9 +-
 drivers/staging/rtl8192u/r8192U_dm.c               |   12 +-
 drivers/staging/rtl8192u/r8192U_hw.h               |    1 +
 drivers/staging/rtl8192u/r8192U_wx.c               |   41 +-
 drivers/staging/rtl8192u/r819xU_cmdpkt.c           |    5 +-
 drivers/staging/rtl8192u/r819xU_firmware.c         |    6 -
 drivers/staging/rtl8192u/r819xU_firmware_img.h     |    3 -
 drivers/staging/rtl8192u/r819xU_phy.c              |   30 +-
 drivers/staging/rtl8192u/r819xU_phyreg.h           |    3 -
 drivers/staging/rtl8712/rtl8712_recv.c             |   19 +-
 drivers/staging/rtl8712/rtl871x_cmd.c              |    4 +-
 drivers/staging/rtl8712/rtl871x_io.c               |    2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      |   16 +-
 drivers/staging/rtl8712/rtl871x_mlme.c             |   11 +-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c         |    2 +-
 drivers/staging/rtl8712/rtl871x_recv.c             |   20 +-
 drivers/staging/rtl8712/rtl871x_security.c         |    8 +-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c          |    4 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |   34 +-
 drivers/staging/rtl8712/rtl871x_xmit.h             |    2 +-
 drivers/staging/rtl8712/usb_intf.c                 |    2 +-
 drivers/staging/rtl8712/usb_ops_linux.c            |    5 +-
 drivers/staging/rtl8723bs/core/rtw_ap.c            |    5 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |    5 +-
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c     |   11 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c          |   16 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |    7 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c          |    3 +-
 drivers/staging/rtl8723bs/core/rtw_security.c      |    6 +-
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     |   74 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c          |    4 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |   11 +-
 drivers/staging/rtl8723bs/hal/sdio_ops.c           |   11 +-
 drivers/staging/rtl8723bs/include/osdep_service.h  |   87 --
 .../rtl8723bs/include/osdep_service_linux.h        |   14 +-
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h   |    2 -
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  |    2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c      |    3 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |    4 +-
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c  |   42 +-
 drivers/staging/rts5208/rtsx_transport.c           |   24 +-
 drivers/staging/sm750fb/sm750.c                    |    3 +-
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    |    2 +-
 .../include/linux/raspberrypi/vchiq.h              |   11 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c           |   24 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 1257 ++++++++++------=
----
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |   25 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |   14 +-
 .../interface/vchiq_arm/vchiq_ioctl.h              |   29 +-
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c  |    2 +-
 drivers/staging/vt6655/device_main.c               |    6 +-
 drivers/staging/vt6655/mac.h                       |    2 +-
 drivers/staging/vt6655/rxtx.c                      |   24 +-
 .../bindings/net/wireless/silabs,wfx.yaml          |  125 ++
 .../bindings/net/wireless/siliabs,wfx.txt          |   98 --
 drivers/staging/wfx/TODO                           |   19 -
 drivers/staging/wfx/bh.c                           |   75 +-
 drivers/staging/wfx/bh.h                           |    2 +-
 drivers/staging/wfx/bus.h                          |    2 +-
 drivers/staging/wfx/bus_sdio.c                     |    2 +-
 drivers/staging/wfx/bus_spi.c                      |    2 +-
 drivers/staging/wfx/data_rx.c                      |   11 +-
 drivers/staging/wfx/data_rx.h                      |    2 +-
 drivers/staging/wfx/data_tx.c                      |   74 +-
 drivers/staging/wfx/data_tx.h                      |    5 +-
 drivers/staging/wfx/debug.c                        |   27 +-
 drivers/staging/wfx/fwio.c                         |    4 +-
 drivers/staging/wfx/hif_api_cmd.h                  |  256 ++--
 drivers/staging/wfx/hif_api_general.h              |  131 +-
 drivers/staging/wfx/hif_api_mib.h                  |   50 +-
 drivers/staging/wfx/hif_rx.c                       |   91 +-
 drivers/staging/wfx/hif_tx.c                       |  116 +-
 drivers/staging/wfx/hif_tx.h                       |   12 +-
 drivers/staging/wfx/hif_tx_mib.c                   |  124 +-
 drivers/staging/wfx/hif_tx_mib.h                   |   13 +-
 drivers/staging/wfx/hwio.c                         |    2 +-
 drivers/staging/wfx/hwio.h                         |    2 +-
 drivers/staging/wfx/key.c                          |   12 +-
 drivers/staging/wfx/key.h                          |    2 +-
 drivers/staging/wfx/main.c                         |   33 +-
 drivers/staging/wfx/main.h                         |    4 +-
 drivers/staging/wfx/queue.c                        |   16 +-
 drivers/staging/wfx/queue.h                        |    3 +-
 drivers/staging/wfx/scan.c                         |    6 +-
 drivers/staging/wfx/scan.h                         |    2 +-
 drivers/staging/wfx/secure_link.h                  |   59 -
 drivers/staging/wfx/sta.c                          |  348 +++---
 drivers/staging/wfx/sta.h                          |    4 +-
 drivers/staging/wfx/traces.h                       |    2 +-
 drivers/staging/wfx/wfx.h                          |    7 +-
 drivers/staging/wlan-ng/hfa384x_usb.c              |   18 +-
 drivers/staging/wlan-ng/p80211netdev.c             |   11 +-
 drivers/staging/wlan-ng/prism2mgmt.c               |   24 +-
 drivers/staging/wlan-ng/prism2mib.c                |    2 +-
 drivers/staging/wlan-ng/prism2sta.c                |    4 +-
 include/linux/iio/buffer-dmaengine.h               |    4 -
 include/linux/iio/common/cros_ec_sensors_core.h    |    4 +-
 include/linux/iio/iio.h                            |    3 +-
 include/linux/iio/imu/adis.h                       |   53 +-
 include/linux/iio/trigger_consumer.h               |    2 +-
 include/linux/iio/types.h                          |    1 +
 include/linux/mfd/hi6421-spmi-pmic.h               |   53 +
 include/linux/platform_data/ad7291.h               |   13 -
 include/linux/platform_data/ad7793.h               |    2 +-
 include/uapi/linux/iio/types.h                     |    1 +
 tools/iio/iio_event_monitor.c                      |    2 +
 436 files changed, 11422 insertions(+), 7211 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-accel-adxl372
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-humidity-hdc2010
 rename drivers/staging/iio/Documentation/light/sysfs-bus-iio-light-tsl2x7x=
 =3D> Documentation/ABI/testing/sysfs-bus-iio-light-tsl2772 (100%)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ad7949.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7291.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7768-1.=
yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7949.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ads1015.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/amlogic,meson=
-saradc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/amlogic,meson=
-saradc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/aspeed,ast240=
0-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/aspeed_adc.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/berlin2_adc.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/cc10001_adc.t=
xt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/cosmic,10001-=
adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/cpcap-adc.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/da9150-gpadc.=
txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/dlg,da9150-gp=
adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/fsl,imx25-gcq=
.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/fsl,imx25-gcq=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/fsl,imx7d-adc=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/fsl,vf610-adc=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/hi8435.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/holt,hi8435.y=
aml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/imx7d-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.=
yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/lpc1850-adc.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/lpc32xx-adc.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ltc2497.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/marvell,berli=
n2-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/max11100.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/max1118.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/max9611.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max1110=
0.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max1118=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max9611=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/mcp320x.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/mcp3422.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/microchip,mcp=
3201.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/motorola,cpca=
p-adc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,nau78=
02.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,npcm-=
adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,npcm7=
50-adc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton-nau78=
02.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,lpc1850-a=
dc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nxp,lpc3220-a=
dc.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/sprd,sc2720-a=
dc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/sprd,sc27xx-a=
dc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stmpe-adc.=
yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/stmpe-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,adc0832.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,adc108s102=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,adc12138.y=
aml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,adc128s052=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,adc161s626=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1015.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads7950.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads8344.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,tlc4541.ya=
ml
 create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,twl4030-ma=
dc.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-adc0832.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-adc108s102=
.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-adc12138.t=
xt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-adc128s052=
.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-adc161s626=
.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-ads7950.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/ti-ads8344.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/twl4030-madc.=
txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/vf610-adc.txt
 create mode 100644 Documentation/devicetree/bindings/iio/dac/lltc,ltc2632.=
yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/dac/ltc2632.txt
 create mode 100644 Documentation/devicetree/bindings/iio/gyroscope/adi,adx=
rs290.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/humidity/ti,hdc20=
10.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/light/ams,as73211=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/semtech=
,sx9310.yaml
 create mode 100644 drivers/iio/gyro/adxrs290.c
 create mode 100644 drivers/iio/humidity/hdc2010.c
 create mode 100644 drivers/iio/light/as73211.c
 rename drivers/{staging/most/cdev/cdev.c =3D> most/most_cdev.c} (100%)
 create mode 100644 drivers/staging/hikey9xx/Kconfig
 create mode 100644 drivers/staging/hikey9xx/Makefile
 create mode 100644 drivers/staging/hikey9xx/TODO
 create mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 create mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c
 create mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
 create mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller=
.yaml
 create mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 create mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
 delete mode 100644 drivers/staging/iio/Documentation/dac/max517
 delete mode 100644 drivers/staging/iio/Documentation/device.txt
 delete mode 100644 drivers/staging/iio/Documentation/overview.txt
 delete mode 100644 drivers/staging/iio/Documentation/ring.txt
 delete mode 100644 drivers/staging/iio/Documentation/sysfs-bus-iio-light
 delete mode 100644 drivers/staging/iio/Documentation/trigger.txt
 delete mode 100644 drivers/staging/most/cdev/Kconfig
 delete mode 100644 drivers/staging/most/cdev/Makefile
 create mode 100644 drivers/staging/wfx/Documentation/devicetree/bindings/n=
et/wireless/silabs,wfx.yaml
 delete mode 100644 drivers/staging/wfx/Documentation/devicetree/bindings/n=
et/wireless/siliabs,wfx.txt
 delete mode 100644 drivers/staging/wfx/secure_link.h
 create mode 100644 include/linux/mfd/hi6421-spmi-pmic.h
 delete mode 100644 include/linux/platform_data/ad7291.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
