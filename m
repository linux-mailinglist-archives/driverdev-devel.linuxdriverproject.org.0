Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B17D164707
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 15:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DD4386B90;
	Wed, 10 Jul 2019 13:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id au2vjqJCXfYC; Wed, 10 Jul 2019 13:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFCF586B38;
	Wed, 10 Jul 2019 13:32:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE9F51BF297
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 13:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A140A85F51
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 13:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wgd6zOTImMo1 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 13:32:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFB8A85F32
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 13:32:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF54E2064B;
 Wed, 10 Jul 2019 13:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562765538;
 bh=kgVYSjL9L0b2vv82jzwvx0sJ/SztTPv+Q3WDh5I0Tc0=;
 h=Date:From:To:Cc:Subject:From;
 b=F6LHuqQliwCh0XHkkJJaR3u61jFjef7QdZY1qM8aQP9kjj2+Sr3FG9RW12AmOG1Gw
 6OEWe3xSXnWxTAVEm8cDSKtao0HZM4/NYys8weDjSG8hdr969/2ssjYhtvBnLFrtl8
 Z8k4FA/AP0aKzQNwaNA4ZN2zQ78buZTZbcAf1PeA=
Date: Wed, 10 Jul 2019 15:32:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver patches for 5.3-rc1
Message-ID: <20190710133215.GA24032@kroah.com>
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

The following changes since commit 4b972a01a7da614b4796475f933094751a295a2f:

  Linux 5.2-rc6 (2019-06-22 16:01:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.3-rc1

for you to fetch changes up to 5d1532482943403eb11911898565628fa45863d7:

  staging: kpc2000: simplify comparison to NULL in fileops.c (2019-07-04 10=
:40:44 +0200)

----------------------------------------------------------------
Staging / IIO driver update for 5.3-rc1

Here is the big Staging and IIO driver update for 5.3-rc1.

Lots of new IIO drivers are in here, along with loads of tiny staging
driver cleanups and fixes.  Overall we almost break even with the same
lines added as removed.

Full details are in the shortlog, they are too large to list here.

All of these changes have been in linux-next for a while with no
reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Adham Abozaeid (1):
      staging: wilc1000: add passive scan support

Ajay Singh (8):
      staging: wilc1000: handle p2p operations in caller context
      staging: wilc1000: fix error path cleanup in wilc_wlan_initialize()
      staging: wilc1000: added support to dynamically add/remove interfaces
      staging: wilc1000: remove use of driver_handler_id & ifc_id
      staging: wilc1000: remove unnecessary loop to traverse vif interfaces
      staging: wilc1000: remove use of 'src_addr' element in 'wilc_vif' str=
uct
      staging: wilc1000: remove extra argument passing to wilc_send_config_=
pkt()
      staging: wilc1000: rename 'host_interface' source and header

Alexander Dahl (1):
      staging: rtl8188eu: Add 'rtl8188eufw.bin' to MODULE_FIRMWARE list

Alexandru Ardelean (11):
      dt-bindings: iio: accel: adxl345: switch to YAML bindings
      staging: iio: ad2s1210: Remove platform data NULL check in probe
      iio: adxl372: fix iio_triggered_buffer_{pre,post}enable positions
      iio: amplifiers: update license information
      iio: amplifiers: ad8366: use own lock to guard state
      iio: amplifiers: ad8366: rework driver to allow other chips
      iio: amplifiers: ad8366: Add support for ADL5240 VGA
      iio: ad_sigma_delta: return directly in ad_sd_buffer_postenable()
      iio: st_accel: fix iio_triggered_buffer_{pre,post}enable positions
      iio: adis162xx: fix low-power docs & reports
      MAINTAINERS: add ADIS IMU driver library entry

Arnd Bergmann (1):
      staging: rtl8712: reduce stack usage, again

Bastien Nocera (2):
      staging: rtl8723bs: Remove myself from CC:
      iio: iio-utils: Fix possible incorrect mask calculation

Beniamin Bia (2):
      iio: adc: ad7606: Move oversampling and scale options to chip info
      iio: adc: ad7606: Add software configuration

Benjamin Sherman (1):
      staging: mt7621-dma: sizeof via pointer dereference

Brian Masney (3):
      dt-bindings: iio: tsl2583: convert bindings to YAML format
      dt-bindings: iio: tsl2772: convert bindings to YAML format
      dt-bindings: iio: isl29018: convert bindings to YAML format

B=E1rbara Fernandes (2):
      staging: iio: cdc: ad7150: create macro for capacitance channels
      staging: iio: adt7316: create of_device_id array

Christian Gromm (3):
      staging: most: register net and video config subsystems with configFS
      staging: most: deregister net and video config subsystems with config=
FS
      staging: most: remove data sanity check

Christian M=FCller (2):
      drivers/staging/rtl8192u: drop first comment line
      drivers/staging/rtl8192u: style nonstyled comments

Christopher Bostic (1):
      iio: dps310: Temperature measurement errata

Chun-Hung Wu (2):
      dt-bindings: iio: adc: mediatek: Add document for mt6765
      iio: adc: mediatek: mt6577-auxadc, add mt6765 support

Colin Ian King (11):
      staging: vc04_services: bcm2835-camera: remove redundant assignment t=
o variable ret
      staging: wilc1000: remove redundant masking of pkt_offset
      staging: vc04_services: remove redundant assignment to pointer service
      staging: fsl-dpaa2/ethsw: fix memory leak of switchdev_work
      staging: comedi: usbdux: remove redundant initialization of fx2delay
      staging: erofs: clean up initialization of pointer de
      staging: vt6656: fix indentation on break statement
      staging: kpc2000: fix integer overflow with left shifts
      staging: rtl8723bs: os_dep: fix indentation on break statement
      staging: rtl8192e: remove redundant initialization of rtstatus
      staging: rtl8723bs: hal: remove redundant assignment to packetType

Dan Carpenter (1):
      iio: sca3000: Potential endian bug in sca3000_read_event_value()

Daniel Gomez (4):
      iio: temperature: maxim_thermocouple: declare missing of table
      iio: accel: kxsd9: declare missing of table
      iio: adxl372: declare missing of table
      iio: dac: ad5758: declare missing of table

Dave Stevenson (29):
      staging: bcm2835-camera: Check the error for REPEAT_SEQ_HEADER
      staging: bcm2835-camera: Replace spinlock protecting context_map with=
 mutex
      staging: bcm2835-camera: Do not bulk receive from service thread
      staging: bcm2835-camera: Correctly denote key frames in encoded data
      staging: bcm2835-camera: Return early on errors
      staging: bcm2835-camera: Remove dead email addresses
      staging: bcm2835-camera: Fix comment style violations.
      staging: bcm2835-camera: Fix spacing around operators
      staging: bcm2835-camera: Reduce length of enum names
      staging: bcm2835-camera: Fix multiple line dereference errors
      staging: bcm2835-camera: Fix brace style issues.
      staging: bcm2835-camera: Fix missing lines between items
      staging: bcm2835-camera: Fix open parenthesis alignment
      staging: bcm2835-camera: Ensure all buffers are returned on disable
      staging: bcm2835-camera: Remove check of the number of buffers suppli=
ed
      staging: bcm2835-camera: Handle empty EOS buffers whilst streaming
      staging: bcm2835-camera: Set sequence number correctly
      staging: bcm2835-camera: Add multiple inclusion protection to headers
      staging: bcm2835-camera: Unify header inclusion defines
      staging: bcm2835-camera: Fix multiple assignments should be avoided
      staging: bcm2835-camera: Fix up mmal-parameters.h
      staging: bcm2835-camera: Use enums for max value in controls
      staging: bcm2835-camera: Correct V4L2_CID_COLORFX_CBCR behaviour
      staging: bcm2835-camera: Remove/amend some obsolete comments
      staging: mmal-vchiq: Avoid use of bool in structures
      staging: bcm2835-camera: Fix stride on RGB3/BGR3 formats
      staging: bcm2835-camera: Add sanity checks for queue_setup/CREATE_BUFS
      staging: bcm2835-camera: Set the field value within each buffer
      staging: bcm2835-camera: Correct ctrl min/max/step/def to 64bit

Deepak Mishra (6):
      staging: rtl8712: Fixed CamelCase for EepromAddressSize
      staging: rtl8712: Removed redundant code from function oid_rt_pro_wri=
te_register_hdl
      staging: rtl8712: Fixed CamelCase cmdThread rename to cmd_thread
      staging: rtl8712: removed unused variables from struct _adapter
      staging: rtl8712: Fixed CamelCase lockRxFF0Filter renamed to lock_rx_=
ff0_filter
      staging: rtl8712: Fixed CamelCase wkFilterRxFF0 renamed to wk_filter_=
rx_ff0

Eddie James (1):
      iio: dps310: Add pressure sensing capability

Fabian Krueger (6):
      staging: kpc2000: add line breaks
      staging: kpc2000: blank lines after declaration
      staging: kpc2000: introduce usage of __packed
      staging: kpc2000: introduce 'unsigned int'
      staging: kpc2000: introduce __func__
      staging: kpc2000: remove needless 'break'

Fabien Dessenne (2):
      iio: adc: stm32-dfsdm: manage the get_irq error case
      iio: adc: stm32-dfsdm: missing error case during probe

Fabien Lahoudere (1):
      docs: iio: add precision about sampling_frequency_available

Fabio Estevam (6):
      staging: kpc2000: Use '%llx' for printing 'long long int' type
      staging: kpc2000: Use '%zu' for printing 'size_t' type
      iio: imx7d_adc: Remove unneeded error message
      iio: imx7d_adc: Introduce a definition for the input clock
      iio: imx7d_adc: Fit into a single line
      iio: imx7d_adc: Remove unneeded 'average_en' member

Fabrice Gasnier (2):
      dt-bindings: iio: adc: stm32: add missing vdda supply
      iio: adc: stm32-adc: add missing vdda-supply

Gao Xiang (12):
      staging: erofs: support statx
      staging: erofs: fix i_blocks calculation
      staging: erofs: rename data_mapping_mode to datamode
      staging: erofs: add compacted ondisk compression indexes
      staging: erofs: add compacted compression indexes support
      staging: erofs: move per-CPU buffers implementation to utils.c
      staging: erofs: move stagingpage operations to compress.h
      staging: erofs: introduce generic decompression backend
      staging: erofs: introduce LZ4 decompression inplace
      staging: erofs: switch to new decompression backend
      staging: erofs: integrate decompression inplace
      staging: erofs: fix LZ4 limited bounced page mis-reuse

Geert Uytterhoeven (2):
      iio: adc: rcar-gyroadc: Remove devm_iio_device_alloc() error printing
      staging: Add missing newline at end of file

Geordan Neukum (29):
      staging: kpc2000: kpc_i2c: reindent i2c_driver.c
      staging: kpc2000: kpc_i2c: reformat copyright for better readability
      staging: kpc2000: kpc_i2c: prevent memory leak in probe() error case
      staging: kpc2000: kpc_i2c: use %s with __func__ identifier in log mes=
sages
      staging: kpc2000: kpc_i2c: fixup block comment style in i2c_driver.c
      staging: kpc2000: kpc_i2c: remove unused module param disable_features
      staging: kpc2000: kpc_i2c: newline fixups to meet linux style guide
      staging: kpc2000: kpc_i2c: use <linux/io.h> instead of <asm/io.h>
      staging: kpc2000: kpc_i2c: Remove unnecessary function tracing prints
      staging: kpc2000: kpc_i2c: add static qual to local symbols in kpc_i2=
c.c
      staging: kpc2000: kpc_i2c: Remove unused rw_sem
      staging: kpc2000: kpc_i2c: Remove pldev from i2c_device structure
      staging: kpc2000: kpc_i2c: Use BIT macro rather than manual bit shift=
ing
      staging: kpc2000: kpc_i2c: Remove unnecessary consecutive newlines
      staging: kpc2000: kpc_i2c: Use drvdata instead of platform_data
      staging: kpc2000: kpc_i2c: fail probe if unable to get I/O resource
      staging: kpc2000: kpc_i2c: fail probe if unable to map I/O space
      staging: kpc2000: kpc_i2c: Use devm_* API to manage mapped I/O space
      staging: kpc2000: kpc_spi: Remove unnecessary consecutive newlines
      staging: kpc2000: kpc_spi: column-align switch and subordinate cases
      staging: kpc2000: kpc_spi: remove fifo_depth from kp_spi struct
      staging: kpc2000: kpc_spi: remove function kp_spi_bytes_per_word()
      staging: kpc2000: kpc_spi: use devm_* API to manage mapped I/O space
      staging: kpc2000: kpc_spi: remove unnecessary struct member phys
      staging: kpc2000: kpc_spi: remove unnecessary struct member pin_dir
      staging: kpc2000: kpc_spi: remove unnecessary struct member word_len
      staging: kpc2000: kpc_spi: remove unnecessary struct member chip_sele=
ct
      staging: kpc2000: kpc_spi: remove unnecessary ulong repr of i/o addr
      staging: kpc2000: kpc_spi: remove unnecessary cast in [read|write]_re=
g()

George G. Davis (1):
      staging: most: trivial: fix a couple of typos

Greg Kroah-Hartman (17):
      Merge tag 'iio-for-5.3a' of git://git.kernel.org/.../jic23/iio into s=
taging-next
      staging: kpc2000: fix coding style in uapi.h
      staging: kpc2000: remove kp200_module.c file
      staging: kpc2000: remove lock_card/unlock_card functions
      staging: kpc2000: remove fileops.c file.
      staging: kpc2000: fix coding style in pcie.h
      staging: kpc2000: remove spi_parts.h
      staging: kpc2000: move the spi driver out of its subdirectory
      staging: kpc2000: move the i2c driver out of its subdirectory
      staging: kpc2000: dma_common_defs.h: remove unused inline functions
      staging: kpc2000: remove SetBackEndControl() function
      Merge 5.2-rc3 into staging-next
      Merge branch 'erofs_fix' into staging-next
      iio: core: no need to check return value of debugfs_create functions
      Merge 5.2-rc6 into staging-next
      Revert "staging: ks7010: Fix build error"
      Merge tag 'iio-for-5.3b' of git://git.kernel.org/.../jic23/iio into s=
taging-next

Gwendal Grignou (1):
      iio: cros_ec: add 'id' sysfs entry

Hans Verkuil (1):
      staging/most/video: set device_caps in struct video_device

Hans de Goede (1):
      staging: rtl8723bs: Fix Coverity warning in rtw_dbg_port()

Hao Xu (2):
      staging: kpc2000: kpc2000_i2c: void* -> void *
      staging: kpc2000: kpc2000_i2c: add space after ,

Hariprasad Kelam (55):
      drivers: staging : wlan-ng : collect return status without variable
      staging: rtl8723bs: os_dep: Remove Unneeded variable ret
      staging: rtl8723bs: core: rtw_recv: fix warning Unneeded variable ret
      staging: erofs: fix Warning Use BUG_ON instead of if condition follow=
ed by BUG
      staging: unisys: visornic: Replace GFP_ATOMIC with GFP_KERNEL
      staging: rtl8723bs: core: rtw_recv: fix warning Comparison to NULL
      staging: speakup: serialio: fix warning linux/serial.h is included mo=
re than once
      staging: rtl8723bs: core: rtw_ap: fix Unneeded variable: "ret". Retur=
n "0"
      Staging: rtl8723bs: hal: fix warning possible condition with no effec=
t (if =3D=3D else)
      staging: rtl8723bs: core: fix warning Comparison to NULL
      staging: rtl8723bs: hal: fix error "do not initialise globals to 0"
      staging: erofs: fix warning Comparison to bool
      staging: erofs: make use of DBG_BUGON
      staging: rtl8723bs: hal: move common code to macro
      staging: rtl8723bs: fix warning comparison to NULL
      staging: rtl8723bs: fix issue "Using comparison to true is error pron=
e"
      staging: rtl8723bs: provide spaces around unary operators
      staging: rtl8723bs: fix spaces required around unary operator
      staging: rtl8723bs: fix issue Comparison to NULL
      staging: rtl8723bs: hal: sdio_ops: fix Comparison to NULL
      staging: rtl8723bs: hal: sdio_ops: fix spaces preferred around unary =
operator
      staging: rtl8723bs: hal: sdio_ops: fix braces {} are not necessary fo=
r single statement blocks
      staging: rtl8723bs: hal: Change return type to void from u8
      staging: rtl8723bs: hal: sdio_halinit: fix comparison to true/false i=
s error prone
      staging: rtl8723bs: hal: sdio_halinit: fix spaces preferred around th=
at unary operator
      staging: rtl8723bs: hal: sdio_halinit: fix Comparison to NULL
      staging: rtl8723bs: hal: Using comparison to true is error prone
      staging: rtl8723bs: hal: spaces preferred around unary operator
      staging: rtl8723bs: hal: Remove return type of initrecvbuf
      staging: rtl8723bs: hal: fix Using comparison to false is error prone
      staging: rtl8723bs: hal: Add null check after memory allocation
      staging/rtl8723bs/core: Remove redundant call to memset
      staging/rtl8723bs/core/rtw_ap: Remove redundant call to memset
      staging: rtl8723bs: hal: rtl8723b_hal_init: fix Comparison to NULL
      staging: rtl8723bs: hal: rtl8723b_hal_init: fix Using comparison to t=
rue is error prone
      staging: rtl8723bs: hal: rtl8723b_hal_init: Remove set but unused var=
iable
      staging: rtl8723bs: hal: rtl8723b_rf6052: fix spaces preferred around=
 unary operator
      staging: rtl8723bs: hal: odm_HWConfig: Unneeded variable: "result". R=
eturn "HAL_STATUS_SUCCESS"
      staging: wilc1000: Remove redundant memset
      staging: rtl8192e: rtllib_module: Remove redundant memset
      staging: rtl8192u: ieee80211: Remove redundant memset
      staging: rtl8712: rtl87x_io : make use of kzalloc
      staging: rtl8723bs: hal: rtl8723b_cmd: fix Comparison to NULL
      staging: rtl8723bs: hal: rtl8723b_cmd: fix comparison to true is erro=
r prone
      staging: rtl8723bs: os_dep: ioctl_linux: make use of kzalloc
      staging: rtl8723bs: hal: odm_RegConfig8723B: fix Lines should not end=
 with a '('
      staging: rtl8723bs: hal: hal_btcoex: Remove variables pHalData and pU=
1Tmp
      staging: netlogic: Change GFP_ATOMIC to GFP_KERNEL
      staging/rtl8188eu/os_dep: Remove unneeded variable ret
      staging: rtl8723bs: hal: hal_btcoex: Using comparison to true is erro=
r prone
      staging: rtl8723bs: hal: hal_btcoex: Remove unneeded variable PHalData
      staging: rtl8723bs: hal: rtl8723b_cmd: remove set but unused variable
      staging: rtl8723bs: hal: rtl8723b_hal_init: remove set but unused var=
iable pHalData
      staging: rtl8723bs: hal: rtl8723b_rf6052: collect return status direc=
tly
      staging: rtl8723bs: hal: sdio_halinit: Remove set but unused varilabl=
e pHalData

Harold Andr=E9 (1):
      Staging: ralink-gdma: fixed a brace coding style issue

Ian Abbott (3):
      staging: comedi: use dma_mmap_coherent for DMA-able buffer mmap
      staging: comedi: amplc_pci230: fix null pointer deref on interrupt
      staging: comedi: dt282x: fix a null pointer deref on interrupt

Jean Delvare (1):
      staging: kpc2000: drop useless softdep statement

Jeeeun Evans (1):
      staging: rtl8723bs: Fix boolinit.cocci warnings

Jeremy Sowden (17):
      staging: kpc2000: inverted conditional in order to reduce indentation.
      staging: kpc2000: declare two functions as static.
      staging: kpc2000: added designated initializers to two structs.
      staging: kpc2000: added missing clean-up to probe_core_uio.
      staging: kpc2000: clean up after probe failure.
      staging: kpc2000: removed trailing white-space.
      staging: kpc2000: added separate show functions for kpc_uio_class dev=
ice attributes, defined them as read-only and declared them static.
      staging: kpc2000: removed two kpc_uio_class device attributes.
      staging: kpc2000: improved formatting of core.c.
      staging: kpc2000: added a helper to get struct kp2000_device from str=
uct device.
      staging: kpc2000: added separate show functions for readable kp devic=
e attributes, defined them as read-only, and declared them static.
      staging: kpc2000: use IDA to assign card numbers.
      staging: kpc2000: simplified kp2000_device retrieval in device attrib=
ute call-backs.
      staging: kpc2000: removed superfluous NULL checks from device attribu=
te call-backs.
      staging: kpc2000: export more device attributes via sysfs.
      staging: kpc2000: removed misc device.
      staging: kpc2000: removed DMA AIO implementation.

Joel Stanley (1):
      iio: Add driver for Infineon DPS310

Jo=E3o Seckler (2):
      staging: iio: adt7316: match parenthesis alignment
      staging: iio: ad7746: add device tree support

Jo=E3o Victor Marques de Oliveira (1):
      staging: iio: ad9834: add of_device_id table

Kefeng Wang (1):
      iio: adc: at91: Use dev_get_drvdata()

Lars-Peter Clausen (1):
      iio: ad9523-1: Improve reported VCO frequency accuracy

Li Mingshuo (1):
      staging: rtl8712: remove the leading spaces

Lorenzo Bianconi (1):
      iio: imu: st_lsm6dsx: get device name from st_lsm6dsx_sensor_settings

Lucas Oshiro (2):
      staging: iio: adis16240: add device to module device table
      dt-bindings: iio: accel: adxl372: switch to YAML bindings

Lu=EDs Ferreira (1):
      iio: accel: add missing sensor for some 2-in-1 based ultrabooks

Madhumitha Prabakaran (2):
      Staging: kpc2000: Cleanup in kpc_dma_transfer()
      Staging: bcm2835-camera: Prefer kernel types

Mao Wenan (2):
      staging: kpc2000: report error status to spi core
      staging: kpc2000: replace white spaces with tabs for kpc2000_spi.c

Martijn Braam (1):
      iio: light: stk3310: Add support for stk3335

Masahiro Yamada (1):
      staging: erofs: drop unneeded -Wall addition

Matt Sickler (1):
      staging: kpc_i2c: Remove unused file

Mauro Carvalho Chehab (1):
      docs: iio: convert to ReST

Maxime Desroches (1):
      Staging: vc04_services : vchiq_core: Fix a brace issue

Melissa Wen (4):
      staging: iio: ad7150: use ternary operating to ensure 0/1 value
      staging: iio: ad7150: use FIELD_GET and GENMASK
      staging: iio: ad7150: simplify i2c SMBus return treatment
      staging: iio: ad7150: clean up of comments

Michael Straube (9):
      staging: rtl8712: get rid of IS_MCAST
      staging: rtl8188eu: remove redundant definition of ETH_ALEN
      staging: rtl8188eu: remove unused definitions from ieee80211.h
      staging: rtl8188eu: remove ODM_PhyStatusQuery() wrapper
      staging: rtl8188eu: remove unused code
      staging: rtl8188eu: cleanup lines ending with a '('
      staging: rtl8188eu: remove hal_init_macaddr()
      staging: rtl8188eu: remove unused function get_bsstype()
      staging: rtl8188eu: remove unused function is_ap_in_wep()

Mircea Caprioru (5):
      iio: adc: ad7124: Remove input number limitation
      iio: adc: ad7124: Add buffered input support
      iio: adc: ad7124: Shift to dynamic allocation for channel configurati=
on
      Convert AD7124 bindings documentation to YAML format.
      dt-bindings: iio: adc: Add buffered input property

Moses Christopher (6):
      staging: fsl-dpaa2: use help instead of ---help--- in Kconfig
      staging: most: use help instead of ---help--- in Kconfig
      staging: unisys: use help instead of ---help--- in Kconfig
      staging: rtl8188eu: use help instead of ---help--- in Kconfig
      staging: rtl8723bs: use help instead of ---help--- in Kconfig
      staging: vt665*: use help instead of ---help--- in Kconfig

Naoto Kobayashi (1):
      staging: kpc2000: remove extra white space in kpc2000_spi.c

Nathan Chancellor (1):
      staging: rtl8192u: Remove an unnecessary NULL check

Neil Armstrong (1):
      iio: adc: meson_saradc: update with SPDX Licence identifier

NeilBrown (2):
      staging: mt7621-dts: update sdhci config.
      staging: mt7621-dts: add support for second network interface

Nicolas Saenz Julienne (4):
      staging: vchiq_2835_arm: revert "quit using custom down_interruptible=
()"
      staging: vchiq: revert "switch to wait_for_completion_killable"
      staging: vchiq: make wait events interruptible
      staging: vchiq: stop explicitly comparing with zero to catch errors

Nishka Dasgupta (147):
      staging: rtl8723bs: hal: Remove unused variable
      staging: pi433: Remove unnecessary variable
      staging: kpc2000: Change to use DIV_ROUND_UP
      staging: ks7010: Remove initialisation in ks_hostif.c
      staging: ks7010: Merge multiple return variables in ks_hostif.c
      staging: ks7010: Remove initialisation in ks7010_sdio.c
      staging: octeon-usb: Remove return variable
      staging: rts5208: Remove negations
      staging: rtl8712: Remove return variable of different type
      staging: rtl8712: Remove initialisations
      staging: rtl8712: ieee80211.c: Remove leading p from variable names
      staging: rtl8712: Replace function r8712_init_mlme_priv
      staging: vt6655: Change return type of function and remove variable
      staging: rtl8188eu: core: Remove initialisation of return variable
      staging: rtl8712: Replace function r8712_free_network_queue
      staging: rtl8712: hal_init.c: Remove leading p from variable names
      staging: rtl8712: recv_linux.c: Remove leading p from variable names
      staging: rtl8712: xmit_linux.c: Remove leading p from variable names
      staging: rtl8712: usb_ops.c: Remove leading p from variable names
      staging: rtl8712: usb_halinit.c: Remove p from variable names
      staging: rtl8188eu: core: Replace function rtw_free_network_nolock()
      staging: rtl8712: Change return values of r8712_setdatarate_cmd()
      staging: rtl8712: Change return values of r8712_createbss_cmd()
      staging: rtl8723bs: Change type of rtw_os_recv_resource_alloc()
      staging: rtl8723bs: Change type of rtw_os_recvbuf_resource_free()
      staging: rtl8723bs: os_dep: ioctl_linux.c: Remove return variables
      staging: rtl8723bs: hal: sdio_halinit.c: Remove variables
      staging: rtl8723bs: hal: hal_btcoex.c: Remove variables
      staging: rtl8723bs: core: Remove variable change_priority
      staging: rtl8723bs: hal: rtl8723b_cmd.c: Remove variables
      staging: rtl8723bs: core: rtw_mlme_ext.c: Remove unused variables
      staging: rtl8723bs: rtw_get_sec_ie(): Change return type
      staging: rtl8723bs: os_dep: Remove variable pos
      staging: rtl8188eu: Change type of rtw_get_sec_ie()
      staging: rtl8723bs: core: Remove function eeprom_read_sz()
      staging: rtl8723bs: core: Remove function read_eeprom_content()
      staging: rtl8723bs: core: Remove eeprom_write16()
      staging: rtl8723bs: core: Replace function Set_MSR()
      staging: rtl8723bs: core: Remove function enable_rate_adaptive()
      staging: rtl8723bs: core: Remove wrapper functions
      staging: rtl8723bs: Replace function rtw_free_network_queue()
      staging: rtl8723bs: Remove function rtw_set_scan_deny_timer_hdl()
      staging: rtl8723bs: Fix typo in function name
      staging: rtl8723bs: hal: Replace function _InitQueuePriority()
      staging: rtl8723bs: Remove rtw_btcoex_Initialize()
      staging: rts5208: Remove function soft_reset_sd_card()
      staging: rtl8712: mlme_linux.c: Remove leading p from variable names
      staging: rtl8712: rtl8712_efuse.c: Remove leading p from variable nam=
es
      staging: rtl8712: rtl871x_cmd.c: Remove unnecessary null check
      staging: rtl8712: r8712_joinbss_cmd(): Change return values and type
      staging: rtl8712: Change (r8712)_enqueue_cmd to void
      staging: rtl8712: r8712_set_chplan_cmd(): Change return type
      staging: rtl8712: r8712_disassoc_cmd(): Change type to void
      staging: rtl8712: r8712_setopmode_cmd(): Change return type
      staging: rtl8712: r8712_setstakey_cmd(): Change return type
      staging: rtl8712: r8712_setMacAddr_cmd(): Change return type
      staging: rtl8723bs: Delete file odm_AntDiv.c
      staging: rtl8712: r8712_addbareq_cmd(): Change return type
      staging: rtl8712: r8712_disconnectCtrlEx_cmd(): Change return type
      staging: rtl8712: r8712_wdg_wk_cmd(): Change return type
      staging: rtl8712: r8712_wdg_timeout_handler: Remove function
      staging: rtl8712: r8712_enqueue_cmd_ex(): Change return type
      staging: rtl8712: Remove function r8712_setbasicrate_cmd
      staging: rtl8712: Remove function r8712_setfwdig_cmd()
      staging: rtl8712: Remove function r8712_setfwra_cmd()
      staging: rtl8712: Remove function r8712_setrfintfs_cmd()
      staging: rtl8712: Replace function r8712_init_cmd_priv()
      staging: vc04_services: Remove function vchiu_queue_is_full()
      staging: vc04_services: Remove function vchiq_arm_allow_resume()
      staging: vc04_services: Remove vchiq_arm_force_suspend()
      staging: vc04_services: Remove vchiq_pause_internal()
      staging: vc04_services: Remove vchiq_resume_internal()
      staging: vc04_services: Remove vchiq_use_service_no_resume()
      staging: vc04_services: Remove vchiq_send_remote_release()
      staging: vc04_services: Remove function output_timeout_error()
      staging: vc04_services: Remove function block_resume()
      staging: rtl8712: Change return values in r8712_init_cmd_priv()
      staging: rtl8712: Replace function r8712_init_evt_priv()
      staging: rtl8712: Change return values of r8712_init_evt_priv()
      staging: rtl8712: Replace r8712_free_cmd_priv()
      staging: rtl8712: Replace r8712_free_evt_priv()
      staging: rtl8712: Remove r8712_setrttbl_cmd()
      staging: rtl8712: Replace r8712_find_network()
      staging: rtl8712: Remove mp_start_joinbss()
      staging: rtl8712: Remove r8712_setassocsta_cmd()
      staging: rtl8712: Change return values of r8712_setrfreg_cmd()
      staging: greybus: tools: Remove function log_csv_error()
      staging: rtl8188eu: os_dep: Remove return variable
      staging: rtl8188eu: hal: Replace function odm_TXPowerTrackingInit()
      staging: rtl8188eu: hal: Replace function ODM_TXPowerTrackingCheck()
      staging: rtl8188eu: Remove declarations of unused functions
      staging: rtl8192u: Change type of rtl8192_rx_initiate()
      staging: rtl8192u: Remove function dm_backup_dynamic_mechanism_state()
      staging: rtl8712: Change return values of r8712_getrfreg_cmd()
      staging: rtl8712: r8712_parse_wpa_ie(): Change return values
      staging: rtl8712: r8712_parse_wpa2_ie(): Change return values
      staging: rtl8712: mp_start_test(): Change return values
      staging: rtl8712: _r8712_free_sta_priv(): Change return type
      staging: rtl8712: _r8712_init_sta_priv(): Change return values
      staging: rtl8712: r8712_xmit_resource_alloc(): Change return values
      staging: rtl8712: Replace function r8712_enqueue_cmd()
      staging: rtl8712: Replace function r8712_dequeue_cmd()
      staging: rtl8723bs: hal: Replace function rtl8723b_set_rssi_cmd()
      staging: rtl8723bs: hal: Remove PHY_RFShadowRefresh()
      staging: rtl8723bs: hal: Remove PHY_RFShadowRecorverFlagSetAll()
      staging: rtl8723bs: hal: Remove function PHY_CalculateBitShift()
      staging: rtl8723bs: core: Remove function wait_eeprom_cmd_done()
      staging: rtl8723bs: hal: Remove function clearinterrupt8723bsdio()
      staging: rtl8723bs: Remove rtw_hal_c2h_evt_read()
      staging: rtl8723bs: Change return type of networktype_to_raid_ex()
      staging: rtl8723bs: Remove rtw_hal_networktype_to_raid()
      staging: rtl8723bs: Replace function odm_SignalScaleMapping()
      staging: rtl8723bs: Remove function rtw_modular64()
      staging: rtl8723bs: Remove rtw_btcoex_PowerOnSetting()
      staging: rtl8723bs: Remove rtw_btcoex_HAL_Initialize()
      staging: rtl8723bs: Remove rtw_btcoex_IQKNotify()
      staging: rtl8723bs: Remove rtw_btcoex_IpsNotify()
      staging: rtl8723bs: Remove rtw_btcoex_LpsNotify()
      staging: rtl8723bs: Remove rtw_btcoex_SpecialPacketNotify()
      staging: rtl8723bs: Remove rtw_btcoex_SetManualControl()
      staging: rtl8723bs: Remove rtw_btcoex_SuspendNotify()
      staging: rtl8723bs: Remove rtw_btcoex_IsLpsOn()
      staging: android: ion: Remove file ion_carveout_heap.c
      staging: android: ion: Remove file ion_chunk_heap.c
      staging: comedi: amplc_dio200: Remove function clk_sce()
      staging: comedi: amplc_dio200: Remove function gat_sce()
      staging: comedi: mite: Replace function mite_request_channel_in_range=
()
      staging: rtl8192u: Replace function rtl8192_rx_enable()
      staging: rtl8723bs: Remove rtw_btcoex_RpwmVal()
      staging: rtl8723bs: Remove rtw_btcoex_RecordPwrMode()
      staging: rtl8723bs: Remove rtw_btcoex_LpsVal()
      staging: rtl8723bs: Remove rtw_btcoex_Handler()
      staging: rtl8723bs: Remove rtw_btcoex_IsBtControlLps()
      staging: rtl8723bs: Remove rtw_btcoex_IsBtDisabled()
      staging: rtl8723bs: Remove rtw_btcoex_SetBTCoexist()
      staging: rtl8723bs: Remove rtw_btcoex_ConnectNotify()
      staging: rtl8723bs: Remove rtw_btcoex_SetChipType()
      staging: rtl8723bs: Remove rtw_btcoex_GetRaMask()
      staging: rtl8723bs: Remove rtw_btcoex_SetPGAntNum()
      staging: rtl8723bs: Remove rtw_btcoex_SetSingleAntPath()
      staging: rtl8723bs: Remove rtw_btcoex_ScanNotify()
      staging: rtl8723bs: Remove rtw_btcoex_BtInfoNotify()
      staging: rtl8723bs: Remove rtw_btcoex_IsBTCoexCtrlAMPDUSize()
      staging: rtl8723bs: Remove function rtw_btcoex_SetDBG()
      staging: rtl8723bs: Remove function rtw_btcoex_GetDBG()
      staging: rtl8723bs: Remove rtw_btcoex_DisplayBtCoexInfo()
      staging: rtl8723bs: Change return type of hal_btcoex_IsBtDisabled()

Olivier Moysan (5):
      iio: adc: stm32-dfsdm: fix output resolution
      iio: adc: stm32-dfsdm: fix data type
      iio: adc: stm32-dfsdm: manage data resolution in trigger mode
      iio: adc: stm32-dfsdm: add fast mode support
      iio: adc: stm32-dfsdm: add comment for 16 bits record

Oscar Gomez Fuente (1):
      staging: fieldbus: solve warning incorrect type dev_core.c

Patrick Havelange (2):
      MAINTAINERS: add counter/ftm-quaddec driver entry
      counter/ftm-quaddec: Add missing '>' in MODULE_AUTHOR

Paul Cercueil (1):
      iio: amplifiers: ad8366: Add support for the ADA4961 DGA

Philippe Schenker (6):
      iio: stmpe-adc: Remove unnecessary assignment
      iio: stmpe-adc: Add compatible name
      iio: stmpe-adc: Reinit completion struct on begin conversion
      iio: stmpe-adc: Enable all stmpe-adc interrupts just once
      iio: stmpe-adc: Use wait_for_completion_timeout
      iio: stmpe-adc: Reset possible interrupts

Puranjay Mohan (22):
      Staging: rtl8723bs: os_dep: Fix switch-case indentation error
      Staging: rtl8723bs: core: Fix Spelling mistake in comments
      Staging: rtl8723bs: os_dep: Remove braces from single if statement
      Staging: rtl8723bs: os_dep: Fix if-else coding style issues
      Staging: rtl8192e: Use %s and __func__ in strings
      Staging: rtl8192u: ieee80211: Fix coding style warning
      Staging: rtl8192u: ieee80211: Fix spelling mistake
      Staging: rtl8192u: ieee80211: Fix coding style errors
      Staging: rtl8192u: ieee80211: Add spaces around '&&' operator
      Staging: rtl8192u: ieee80211: Use !x in place of NULL comparison
      Staging: rtl8192u: ieee80211: Fix coding style issues related to if e=
lse
      Staging: rtl8188eu: os_dep: Use %s and __func__ in strings
      Staging: kpc2000: kpc_dma: include <linux/io.h> instead of <asm/io.h>
      Staging: rtl8723bs: hal: Fix comparison to bool in if statements
      Staging: rtl8192u: ieee80211: Use !x in place of NULL comparisons
      Staging: mt7621-dma: Remove braces around single if statement
      Staging: rtl8188eu: core: Remove else after break
      Staging: rtl8192u: ieee80211: Fix if-else coding style issue
      Staging: rtl8723bs: os_dep: Remove functions that don't do anything.
      Staging: rtl8192u: ieee80211: Replace function names in strings with =
"%s", __func__
      Staging: rtl8188eu: os_dep: Replace comparison with zero to !x
      Staging: rtl8188eu: core: Use !x in place of NULL comparisons

Quentin Deslandes (7):
      staging: vt6656: fix potential NULL pointer dereference
      staging: vt6656: clean function's error path in usbpipe.c
      staging: vt6656: avoid discarding called function's return code
      staging: vt6656: clean error path for firmware management
      staging: vt6656: use meaningful error code during buffer allocation
      staging: vt6656: clean-up registers initialization error path
      staging: vt6656: manage error path during device initialization

Renato Lui Geh (2):
      dt-bindings: iio: adc: add adi,ad7780.yaml binding
      MAINTAINERS: add entry for ad7780 adc driver

Rishiraj Manwatkar (1):
      staging: kpc2000: Fix: 'kpc_dma_del_device' and other symbols were no=
t declared

Robert Hancock (1):
      iio: adc: xilinx: support all platforms

Rodrigo Ribeiro (1):
      staging: iio: adis16240: add of_match_table entry

Ruslan Babayev (1):
      iio: dac: ds4422/ds4424 drop of_node check

Saiyam Doshi (1):
      staging: android: fix style problem

Sergio Paracuellos (9):
      staging: mt7621-pci: fix two messages in driver code
      staging: mt7621-pci: use gpio perst instead of builtin behaviour
      staging: mt7621-dts: add gpio perst to pcie bindings node
      staging: mt7621-pci: dt-bindings: add perst-gpio to sample bindings
      staging: mt7621-pci: disable pcie port clock if there is no pcie link
      staging: mt7621-pci: add phy exit call if phy_power_on call fails
      staging: mt7621-pci-phy: remove disable clock from the phy exit funct=
ion
      staging: mt7621-pci: use 'module_init' instead of 'arch_initcall'
      staging: mt7621-pci: fix PCIE_FTS_NUM_LO macro

Shobhit Kukreti (14):
      staging: rtl8723bs: Resolve "(foo*)" should be "(foo *)" error report=
ed by checkpatch
      staging: rtl8723bs: Fix Unneeded variable: "ret". Return "0"
      iio: humidity: Replace older GPIO APIs with GPIO Consumer APIs for th=
e dht11 sensor
      staging: rtl8723bs: hal: Remove True/False Comparisons
      staging: rtl8723bs: hal: Fix Brace Style Issues in if/else statements
      staging: rtl8723bs: Resolve checkpatch error "that open brace { shoul=
d be on the previous line" in the rtl8723 driver
      staging: rtl8723bs: Resolve the checkpatch error: else should follow =
close brace '}'
      staging: rtl8723bs: Fix Indentation Error: code indent should use tab=
s where possible
      staging: rtl8723bs: os_dep: Modify return type of function loadparam(=
..) to void
      staging: rtl8723bs: os_dep: Modify return type of function rtw_reset_=
drv_sw() to void.
      staging: rtl8723bs: os_dep: Change return type of function rtw_suspen=
d_normal() to void
      staging: rtl8723bs: os_dep: modified return type of function rtw_susp=
end_wow() to void
      staging: rtl8723bs: os_dep: Change return type of rtw_init_default_va=
lue() to void
      staging: erofs: Replace kzalloc(struct ..) with kzalloc(*ptr)

Simon Sandstr=F6m (41):
      staging: kpc2000: fix indent in cell_probe.c
      staging: kpc2000: add space between ) and { in cell_probe.c
      staging: kpc2000: fix invalid linebreaks in cell_probe.c
      staging: kpc2000: add spaces around operators in cell_probe.c
      staging: kpc2000: add space after comma in cell_probe.c
      staging: kpc2000: remove invalid spaces in cell_probe.c
      staging: kpc2000: add blank line after declarations
      staging: kpc2000: use __func__ in debug messages
      staging: kpc2000: add missing asterisk in comment
      staging: kpc2000: fix alignment issues in cell_probe.c
      staging: kpc2000: remove extra blank lines in cell_probe.c
      staging: kpc2000: use kzalloc(sizeof(var)...) in cell_probe.c
      staging: kpc2000: remove unnecessary braces in cell_probe.c
      staging: kpc2000: remove unnecessary include in cell_probe.c
      staging: kpc2000: remove unnecessary oom message
      staging: kpc2000: fix typo in Kconfig
      staging: kpc2000: remove extra blank line in core.c
      staging: kpc2000: remove extra spaces in core.c
      staging: kpc2000: replace bogus variable name in core.c
      staging: kpc2000: simplify comparisons to NULL in core.c
      staging: kpc2000: remove unnecessary parentheses in core.c
      staging: kpc2000: remove unnecessary oom message in core.c
      staging: kpc2000: use __func__ in debug messages in core.c
      staging: kpc2000: remove unnecessary include in core.c
      staging: kpc2000: use sizeof(var) in kzalloc call
      staging: kpc2000: fix incorrect code comment in core.c
      staging: kpc2000: remove unnecessary debug prints in cell_probe.c
      staging: kpc2000: remove unnecessary debug prints in core.c
      staging: kpc2000: remove unnecessary debug prints in dma.c
      staging: kpc2000: remove unnecessary debug prints in fileops.c
      staging: kpc2000: remove unnecessary debug prints in kpc_dma_driver.c
      staging: kpc2000: improve label names in kp2000_pcie_probe
      staging: kpc2000: remove unnecessary comments in kp2000_pcie_probe
      staging: kpc2000: remove dead code in core.c
      staging: kpc2000: simplify error handling in kp2000_pcie_probe
      staging: kpc2000: add missing spaces in kpc2000_i2c.c
      staging: kpc2000: add missing spaces in kpc2000_spi.c
      staging: kpc2000: fix brace issues in kpc2000_spi.c
      staging: kpc2000: simplify comparison to NULL in kpc2000_spi.c
      staging: kpc2000: simplify comparison to NULL in dma.c
      staging: kpc2000: simplify comparison to NULL in fileops.c

Stefan Popa (5):
      iio: frequency: adf4371: Add support for ADF4371 PLL
      dt-bindings: iio: frequency: Add docs for ADF4371 PLL
      iio: frequency: adf4371: Add support for ADF4372 PLL
      dt-bindings: iio: frequency: Add ADF4372 PLL documentation
      iio: frequency: adf4371: Add support for output stage mute

Stefan Wahren (1):
      staging: bcm2835-camera: Restore return behavior of ctrl_set_bitrate()

Sven Van Asbroeck (3):
      staging: fieldbus: arcx-anybus: change custom -> mmio regmap
      MAINTAINERS: Add entry for fieldbus subsystem
      MAINTAINERS: Add entry for anybuss drivers

Thiago Estrela (1):
      staging: iio: adis16203: Add of_device_id table

Tianzheng Li (1):
      staging/gasket: Fix string split

Tobias Nie=DFen (2):
      staging: rts5208: Rewrite redundant if statement to improve code style
      staging: rts5208: Simplify boolean expression to improve code style

Tomasz Duszynski (2):
      dt-bindings: iio: chemical: sps30: convert bindings to yaml
      MAINTAINERS: add entry for sensirion sps30 driver

Valerio Genovese (1):
      staging: staging: kpc2000: kpc_dma: fix symbol 'kpc_dma_add_device' w=
as not declared.

Vandana BN (8):
      Staging: kpc2000: kpc_dma: Resolve trailing whitespace error reported=
 by checkpatch
      Staging: kpc2000: kpc_dma: Resolve space errors around pointers and f=
unction declarations reported by checkpatch.
      Staging: kpc2000: kpc_dma: Resolve checkpatch space errors around bra=
ce '{', '!' and open paranthesis '('.
      Staging: kpc2000: kpc_dma: Resolve code indent and trailing statement=
s on next line errors reported by checkpatch.
      Staging: kpc2000: kpc_dma: Resolve checkpath errors Macros in paranth=
esis & trailing statements on next line.
      Staging: kpc2000: kpc_dma: Resolve warning Missing blank line after d=
eclarations & labels not to be indented.
      Staging: kpc2000: kpc_dma: Resolve warning to use __func__ insted of =
funtion name reported by checkpatch.
      Staging: kpc2000: kpc_dma: Resolve cast warning and use const for fil=
e_operation

Vatsala Narang (6):
      staging: iio: adc: Add paragraph to describe Kconfig symbol
      staging: rtl8723bs: core: Remove blank line.
      staging: rtl8723bs: core: Replace NULL comparisons.
      staging: rtl8723bs: core: Remove unnecessary parentheses.
      staging: rtl8723bs: core: Remove braces from single if statement.
      staging: rtl8723bs: core: Fix variable constant comparisons.

Wolfram Sang (1):
      iio: light: bh1780: simplify getting the adapter of a client

Yangtao Li (1):
      iio: adc: sun4i-gpadc-iio convert to SPDX license tags

Yannick Loeck (1):
      staging: pi433: fix misspelling of packet

Young Xiao (1):
      iio:core: Fix bug in length of event info_mask and catch unhandled bi=
ts set in masks.

Yue Hu (2):
      staging: erofs: return the error value if fill_inline_data() fails
      staging: erofs: don't check special inode layout

YueHaibing (7):
      iio: dac: ad5758: remove set but not used variable 'dc_dc_mode'
      staging: kpc2000: remove unused function kp2000_cdev_write
      staging: rtl8723bs: hal: Remove set but not used variable 'no_res' an=
d 'phal'
      staging: fieldbus: Fix build error without CONFIG_REGMAP_MMIO
      Staging: kpc2000: kpc_dma: Make some symbols static
      Staging: kpc2000: kpc_dma: Fix platform_no_drv_owner.cocci warnings
      staging: ks7010: Fix build error

Zhiyong Tao (1):
      dt-bindings: adc: mt8183: add binding document

kbuild test robot (1):
      staging: kpc2000: kpc_i2c: fix platform_no_drv_owner.cocci warnings

 Documentation/ABI/testing/sysfs-bus-iio            |   7 +-
 Documentation/ABI/testing/sysfs-bus-iio-cros-ec    |  10 +-
 .../ABI/testing/sysfs-bus-iio-frequency-adf4371    |  44 +
 .../devicetree/bindings/iio/accel/adi,adxl345.yaml |  72 ++
 .../devicetree/bindings/iio/accel/adi,adxl372.yaml |  63 ++
 .../devicetree/bindings/iio/accel/adxl345.txt      |  39 -
 .../devicetree/bindings/iio/accel/adxl372.txt      |  33 -
 .../devicetree/bindings/iio/adc/adi,ad7124.txt     |  75 --
 .../devicetree/bindings/iio/adc/adi,ad7124.yaml    | 155 ++++
 .../devicetree/bindings/iio/adc/adi,ad7780.txt     |  48 --
 .../devicetree/bindings/iio/adc/adi,ad7780.yaml    |  87 ++
 .../devicetree/bindings/iio/adc/mt6577_auxadc.txt  |   2 +
 .../devicetree/bindings/iio/adc/st,stm32-adc.txt   |   1 +
 .../bindings/iio/chemical/sensirion,sps30.txt      |  12 -
 .../bindings/iio/chemical/sensirion,sps30.yaml     |  39 +
 .../devicetree/bindings/iio/frequency/adf4371.yaml |  63 ++
 .../devicetree/bindings/iio/light/isl29018.txt     |  27 -
 .../devicetree/bindings/iio/light/isl29018.yaml    |  56 ++
 .../devicetree/bindings/iio/light/tsl2583.txt      |  25 -
 .../devicetree/bindings/iio/light/tsl2583.yaml     |  46 ++
 .../devicetree/bindings/iio/light/tsl2772.txt      |  42 -
 .../devicetree/bindings/iio/light/tsl2772.yaml     |  83 ++
 .../iio/{ep93xx_adc.txt =3D> ep93xx_adc.rst}         |  15 +-
 .../iio/{iio_configfs.txt =3D> iio_configfs.rst}     |  52 +-
 Documentation/iio/index.rst                        |  12 +
 MAINTAINERS                                        |  50 +-
 drivers/counter/ftm-quaddec.c                      |   4 +-
 drivers/iio/Kconfig                                |   2 +-
 drivers/iio/accel/adis16201.c                      |   4 +-
 drivers/iio/accel/adis16209.c                      |   4 +-
 drivers/iio/accel/adxl372.c                        |  27 +-
 drivers/iio/accel/adxl372_spi.c                    |   9 +
 drivers/iio/accel/kxcjk-1013.c                     |   1 +
 drivers/iio/accel/kxsd9-spi.c                      |   9 +
 drivers/iio/accel/sca3000.c                        |   7 +-
 drivers/iio/accel/st_accel_buffer.c                |  22 +-
 drivers/iio/adc/Kconfig                            |   1 -
 drivers/iio/adc/ad7124.c                           |  33 +-
 drivers/iio/adc/ad7606.c                           |  97 ++-
 drivers/iio/adc/ad7606.h                           |  17 +-
 drivers/iio/adc/ad_sigma_delta.c                   |   3 +-
 drivers/iio/adc/at91-sama5d2_adc.c                 |  12 +-
 drivers/iio/adc/at91_adc.c                         |   4 +-
 drivers/iio/adc/imx7d_adc.c                        |  24 +-
 drivers/iio/adc/meson_saradc.c                     |   2 +-
 drivers/iio/adc/mt6577_auxadc.c                    |  54 +-
 drivers/iio/adc/rcar-gyroadc.c                     |   4 +-
 drivers/iio/adc/stm32-adc-core.c                   |  21 +-
 drivers/iio/adc/stm32-dfsdm-adc.c                  | 239 +++++-
 drivers/iio/adc/stm32-dfsdm-core.c                 |   8 +-
 drivers/iio/adc/stm32-dfsdm.h                      |  24 +-
 drivers/iio/adc/stmpe-adc.c                        |  40 +-
 drivers/iio/adc/sun4i-gpadc-iio.c                  |   2 +-
 drivers/iio/amplifiers/Kconfig                     |  13 +-
 drivers/iio/amplifiers/ad8366.c                    | 146 +++-
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  |  14 +
 drivers/iio/dac/ad5758.c                           |  18 +-
 drivers/iio/dac/ds4424.c                           |   6 -
 drivers/iio/frequency/Kconfig                      |  10 +
 drivers/iio/frequency/Makefile                     |   1 +
 drivers/iio/frequency/ad9523.c                     |   8 +-
 drivers/iio/frequency/adf4371.c                    | 632 +++++++++++++++
 drivers/iio/humidity/dht11.c                       |  28 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |   9 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |  53 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.c        |   3 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.c        |   3 +-
 drivers/iio/industrialio-core.c                    |  37 +-
 drivers/iio/light/bh1780.c                         |   2 +-
 drivers/iio/light/stk3310.c                        |   6 +-
 drivers/iio/pressure/Kconfig                       |  11 +
 drivers/iio/pressure/Makefile                      |   1 +
 drivers/iio/pressure/dps310.c                      | 827 +++++++++++++++++=
++
 drivers/iio/temperature/maxim_thermocouple.c       |  10 +
 drivers/staging/android/ion/Kconfig                |  18 -
 drivers/staging/android/ion/Makefile               |   2 -
 drivers/staging/android/ion/ion_carveout_heap.c    | 133 ---
 drivers/staging/android/ion/ion_chunk_heap.c       | 146 ----
 drivers/staging/comedi/comedi_buf.c                | 150 ++--
 drivers/staging/comedi/comedi_fops.c               |  39 +-
 .../staging/comedi/drivers/amplc_dio200_common.c   |  16 +-
 drivers/staging/comedi/drivers/amplc_pci230.c      |   3 +-
 drivers/staging/comedi/drivers/dt282x.c            |   3 +-
 drivers/staging/comedi/drivers/mite.c              |  27 +-
 drivers/staging/comedi/drivers/usbdux.c            |   2 +-
 drivers/staging/erofs/Makefile                     |   4 +-
 drivers/staging/erofs/compress.h                   |  62 ++
 drivers/staging/erofs/data.c                       |   4 +-
 drivers/staging/erofs/decompressor.c               | 335 ++++++++
 drivers/staging/erofs/dir.c                        |   3 +-
 drivers/staging/erofs/erofs_fs.h                   |  68 +-
 drivers/staging/erofs/inode.c                      |  58 +-
 drivers/staging/erofs/internal.h                   |  58 +-
 drivers/staging/erofs/namei.c                      |   1 +
 drivers/staging/erofs/super.c                      |   2 +-
 drivers/staging/erofs/unzip_pagevec.h              |   5 +-
 drivers/staging/erofs/unzip_vle.c                  | 373 +--------
 drivers/staging/erofs/unzip_vle.h                  |  44 +-
 drivers/staging/erofs/unzip_vle_lz4.c              | 229 ------
 drivers/staging/erofs/utils.c                      |  12 +
 drivers/staging/erofs/zmap.c                       | 463 +++++++++++
 drivers/staging/fieldbus/anybuss/Kconfig           |   1 +
 drivers/staging/fieldbus/anybuss/arcx-anybus.c     |  44 +-
 drivers/staging/fieldbus/dev_core.c                |   6 +-
 drivers/staging/fsl-dpaa2/Kconfig                  |   8 +-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c            |   1 +
 drivers/staging/gasket/gasket_core.c               |   6 +-
 drivers/staging/gasket/gasket_ioctl.c              |   3 +-
 drivers/staging/gasket/gasket_page_table.c         |  14 +-
 drivers/staging/greybus/tools/loopback_test.c      |   6 -
 drivers/staging/iio/accel/adis16203.c              |  12 +-
 drivers/staging/iio/accel/adis16240.c              |   9 +-
 drivers/staging/iio/adc/Kconfig                    |   3 +
 drivers/staging/iio/addac/adt7316-spi.c            |  13 +
 drivers/staging/iio/addac/adt7316.c                |   2 +-
 drivers/staging/iio/cdc/ad7150.c                   |  58 +-
 drivers/staging/iio/cdc/ad7746.c                   |  10 +
 drivers/staging/iio/frequency/ad9834.c             |  11 +
 drivers/staging/iio/resolver/ad2s1210.c            |   3 -
 drivers/staging/kpc2000/Kconfig                    |   4 +-
 drivers/staging/kpc2000/Makefile                   |   4 +-
 drivers/staging/kpc2000/TODO                       |   6 -
 drivers/staging/kpc2000/kpc2000/Makefile           |   2 +-
 drivers/staging/kpc2000/kpc2000/cell_probe.c       | 750 +++++++++--------
 drivers/staging/kpc2000/kpc2000/core.c             | 892 ++++++++++++-----=
----
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h  |  19 -
 drivers/staging/kpc2000/kpc2000/fileops.c          | 131 ---
 drivers/staging/kpc2000/kpc2000/kp2000_module.c    |  54 --
 drivers/staging/kpc2000/kpc2000/pcie.h             | 119 ++-
 drivers/staging/kpc2000/kpc2000/uapi.h             |  22 +-
 drivers/staging/kpc2000/kpc2000_i2c.c              | 651 +++++++++++++++
 drivers/staging/kpc2000/kpc2000_spi.c              | 520 ++++++++++++
 drivers/staging/kpc2000/kpc_dma/dma.c              | 142 ++--
 drivers/staging/kpc2000/kpc_dma/fileops.c          | 269 +++----
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c   | 122 ++-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h   |  34 +-
 drivers/staging/kpc2000/kpc_i2c/Makefile           |   4 -
 drivers/staging/kpc2000/kpc_i2c/fileops.c          | 181 -----
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c       | 699 ----------------
 drivers/staging/kpc2000/kpc_spi/Makefile           |   4 -
 drivers/staging/kpc2000/kpc_spi/spi_driver.c       | 507 ------------
 drivers/staging/kpc2000/kpc_spi/spi_parts.h        |  48 --
 drivers/staging/ks7010/ks7010_sdio.c               |   2 +-
 drivers/staging/ks7010/ks_hostif.c                 |   7 +-
 .../most/Documentation/ABI/configfs-most.txt       |  16 +-
 .../staging/most/Documentation/driver_usage.txt    |   8 +-
 drivers/staging/most/Kconfig                       |   2 +-
 drivers/staging/most/configfs.c                    |  14 -
 drivers/staging/most/net/net.c                     |  13 +-
 drivers/staging/most/video/video.c                 |  19 +-
 drivers/staging/mt7621-dma/mtk-hsdma.c             |   5 +-
 drivers/staging/mt7621-dts/Kconfig                 |   7 +-
 drivers/staging/mt7621-dts/Makefile                |   1 +
 drivers/staging/mt7621-dts/TODO                    |   2 +-
 drivers/staging/mt7621-dts/gbpc1.dts               |   2 +-
 drivers/staging/mt7621-dts/gbpc2.dts               |  21 +
 drivers/staging/mt7621-dts/mt7621.dtsi             |  55 +-
 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c    |   8 -
 drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt |   2 +
 drivers/staging/mt7621-pci/pci-mt7621.c            | 120 +--
 drivers/staging/netlogic/xlr_net.c                 |   2 +-
 drivers/staging/octeon-usb/octeon-hcd.c            |   3 +-
 drivers/staging/pi433/pi433_if.c                   |   5 +-
 drivers/staging/pi433/rf69.c                       |   4 +-
 drivers/staging/pi433/rf69_registers.h             |   2 +-
 drivers/staging/ralink-gdma/ralink-gdma.c          |   3 +-
 drivers/staging/rtl8188eu/Kconfig                  |   4 +-
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |   4 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |  35 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      |   2 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c          |  14 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     |  46 --
 drivers/staging/rtl8188eu/hal/hal_com.c            |   6 -
 drivers/staging/rtl8188eu/hal/odm.c                |  10 -
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c       |  15 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c        |  24 +-
 drivers/staging/rtl8188eu/include/hal_com.h        |   1 -
 drivers/staging/rtl8188eu/include/ieee80211.h      |  10 +-
 drivers/staging/rtl8188eu/include/odm_precomp.h    |   2 -
 drivers/staging/rtl8188eu/include/rtw_eeprom.h     |   6 -
 drivers/staging/rtl8188eu/include/rtw_mlme.h       |   3 -
 drivers/staging/rtl8188eu/include/rtw_mlme_ext.h   |   2 -
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c     |  22 +-
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c      |   8 +-
 drivers/staging/rtl8188eu/os_dep/os_intfs.c        |   1 +
 drivers/staging/rtl8188eu/os_dep/rtw_android.c     |   2 +-
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c     |   2 +-
 drivers/staging/rtl8192e/rtl8192e/rtl_dm.c         |   4 +-
 drivers/staging/rtl8192e/rtllib_module.c           |   1 -
 .../staging/rtl8192u/ieee80211/ieee80211_module.c  |   3 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |  33 +-
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c |  13 +-
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |   4 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c  |  58 +-
 drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c  |  36 +-
 .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    |  10 +-
 drivers/staging/rtl8192u/r8192U_core.c             |  10 +-
 drivers/staging/rtl8192u/r8192U_dm.c               | 109 +--
 drivers/staging/rtl8192u/r8192U_dm.h               |   1 -
 drivers/staging/rtl8712/drv_types.h                |  13 +-
 drivers/staging/rtl8712/hal_init.c                 | 174 ++--
 drivers/staging/rtl8712/ieee80211.c                |  74 +-
 drivers/staging/rtl8712/mlme_linux.c               |  36 +-
 drivers/staging/rtl8712/os_intfs.c                 |  13 +-
 drivers/staging/rtl8712/recv_linux.c               |  50 +-
 drivers/staging/rtl8712/rtl8712_efuse.c            | 152 ++--
 drivers/staging/rtl8712/rtl8712_xmit.c             |   2 +-
 drivers/staging/rtl8712/rtl871x_cmd.c              | 306 ++-----
 drivers/staging/rtl8712/rtl871x_cmd.h              |  43 +-
 drivers/staging/rtl8712/rtl871x_eeprom.c           |   6 +-
 drivers/staging/rtl8712/rtl871x_io.c               |   4 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c      | 171 ++--
 drivers/staging/rtl8712/rtl871x_ioctl_rtl.c        |   4 +-
 drivers/staging/rtl8712/rtl871x_ioctl_set.c        |   4 +-
 drivers/staging/rtl8712/rtl871x_mlme.c             |  45 +-
 drivers/staging/rtl8712/rtl871x_mlme.h             |   3 +-
 drivers/staging/rtl8712/rtl871x_mp.c               |  14 +-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c         |  27 +-
 drivers/staging/rtl8712/rtl871x_mp_ioctl.h         |   2 -
 drivers/staging/rtl8712/rtl871x_recv.c             |  14 +-
 drivers/staging/rtl8712/rtl871x_security.c         |   4 +-
 drivers/staging/rtl8712/rtl871x_sta_mgt.c          |   9 +-
 drivers/staging/rtl8712/rtl871x_xmit.c             |  17 +-
 drivers/staging/rtl8712/rtl871x_xmit.h             |   4 +-
 drivers/staging/rtl8712/sta_info.h                 |   4 +-
 drivers/staging/rtl8712/usb_halinit.c              | 288 +++----
 drivers/staging/rtl8712/usb_intf.c                 |   4 +-
 drivers/staging/rtl8712/usb_ops.c                  |  84 +-
 drivers/staging/rtl8712/wifi.h                     |  11 -
 drivers/staging/rtl8712/xmit_linux.c               |  56 +-
 drivers/staging/rtl8723bs/Kconfig                  |   2 +-
 drivers/staging/rtl8723bs/TODO                     |   3 +-
 drivers/staging/rtl8723bs/core/rtw_ap.c            |  25 +-
 drivers/staging/rtl8723bs/core/rtw_btcoex.c        | 147 +---
 drivers/staging/rtl8723bs/core/rtw_cmd.c           |  37 +-
 drivers/staging/rtl8723bs/core/rtw_debug.c         |   7 +-
 drivers/staging/rtl8723bs/core/rtw_eeprom.c        | 139 ----
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c     |   4 +-
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c     |   2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c          |  24 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c      |  83 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c       |  52 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c          |  56 +-
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c     |  19 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c          |  70 +-
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c    |   8 +-
 drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c    | 742 +++++++----------
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.c   |   4 +-
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_MAC.c  |   2 +-
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_RF.c   |   2 +-
 drivers/staging/rtl8723bs/hal/HalPhyRf_8723B.c     |   6 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c         |  66 +-
 drivers/staging/rtl8723bs/hal/hal_com.c            |   8 +-
 drivers/staging/rtl8723bs/hal/hal_intf.c           |   5 -
 drivers/staging/rtl8723bs/hal/hal_phy.c            |  59 --
 drivers/staging/rtl8723bs/hal/odm_AntDiv.c         |  62 --
 drivers/staging/rtl8723bs/hal/odm_AntDiv.h         |  30 -
 drivers/staging/rtl8723bs/hal/odm_DIG.c            |  11 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c       |  36 +-
 drivers/staging/rtl8723bs/hal/odm_HWConfig.h       |   2 -
 drivers/staging/rtl8723bs/hal/odm_RegConfig8723B.h |  61 +-
 drivers/staging/rtl8723bs/hal/odm_precomp.h        |   1 -
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c       |  43 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c        |   4 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c  |  76 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c    |   2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_rf6052.c    |  10 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c     |  10 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c     |  39 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c       | 145 ++--
 drivers/staging/rtl8723bs/hal/sdio_ops.c           |  68 +-
 drivers/staging/rtl8723bs/include/drv_types.h      |   2 +-
 drivers/staging/rtl8723bs/include/hal_btcoex.h     |   4 +-
 drivers/staging/rtl8723bs/include/hal_com.h        |   1 -
 drivers/staging/rtl8723bs/include/hal_intf.h       |   1 -
 drivers/staging/rtl8723bs/include/ieee80211.h      |   2 +-
 drivers/staging/rtl8723bs/include/osdep_intf.h     |   2 +-
 drivers/staging/rtl8723bs/include/osdep_service.h  |   2 -
 drivers/staging/rtl8723bs/include/recv_osdep.h     |   4 +-
 drivers/staging/rtl8723bs/include/rtw_ap.h         |   4 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h     |  28 -
 drivers/staging/rtl8723bs/include/rtw_mlme.h       |   3 -
 drivers/staging/rtl8723bs/include/rtw_mlme_ext.h   |   2 +-
 drivers/staging/rtl8723bs/include/sdio_ops.h       |   2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c  |  34 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c     | 520 ++++++------
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c      |  20 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c        |  30 +-
 drivers/staging/rtl8723bs/os_dep/osdep_service.c   |  41 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c      | 101 +--
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c        |  30 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |  75 +-
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c  |  24 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c      |  10 +-
 drivers/staging/rts5208/TODO                       |   2 +-
 drivers/staging/rts5208/rtsx_chip.c                |  20 +-
 drivers/staging/rts5208/sd.c                       |  30 +-
 drivers/staging/rts5208/sd.h                       |   1 -
 drivers/staging/rts5208/xd.c                       |   8 +-
 drivers/staging/speakup/serialio.h                 |   3 -
 drivers/staging/unisys/Kconfig                     |   4 +-
 drivers/staging/unisys/visornic/visornic_main.c    |   4 +-
 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 375 +++++----
 .../vc04_services/bcm2835-camera/bcm2835-camera.h  |  32 +-
 .../vc04_services/bcm2835-camera/controls.c        | 208 ++---
 .../vc04_services/bcm2835-camera/mmal-common.h     |  12 +-
 .../vc04_services/bcm2835-camera/mmal-encodings.h  |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-common.h |   9 +-
 .../vc04_services/bcm2835-camera/mmal-msg-format.h | 104 +--
 .../vc04_services/bcm2835-camera/mmal-msg-port.h   | 133 +--
 .../vc04_services/bcm2835-camera/mmal-msg.h        | 154 ++--
 .../vc04_services/bcm2835-camera/mmal-parameters.h | 286 ++++---
 .../vc04_services/bcm2835-camera/mmal-vchiq.c      | 159 ++--
 .../vc04_services/bcm2835-camera/mmal-vchiq.h      |  22 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c           |   2 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 356 +-------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h  |   6 -
 .../interface/vchiq_arm/vchiq_connected.c          |   4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 106 +--
 .../vc04_services/interface/vchiq_arm/vchiq_core.h |   9 -
 .../interface/vchiq_arm/vchiq_debugfs.c            |   4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_if.h   |   2 -
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |   4 +-
 .../vc04_services/interface/vchiq_arm/vchiq_util.c |  11 +-
 .../vc04_services/interface/vchiq_arm/vchiq_util.h |   1 -
 drivers/staging/vt6655/Kconfig                     |   5 +-
 drivers/staging/vt6655/card.c                      |   8 +-
 drivers/staging/vt6655/card.h                      |   2 +-
 drivers/staging/vt6655/test                        |   2 +-
 drivers/staging/vt6656/Kconfig                     |   5 +-
 drivers/staging/vt6656/baseband.c                  | 130 ++-
 drivers/staging/vt6656/baseband.h                  |   8 +-
 drivers/staging/vt6656/card.c                      |  22 +-
 drivers/staging/vt6656/firmware.c                  |  91 +--
 drivers/staging/vt6656/int.c                       |   8 +-
 drivers/staging/vt6656/int.h                       |   2 +-
 drivers/staging/vt6656/mac.c                       |  19 +-
 drivers/staging/vt6656/mac.h                       |   6 +-
 drivers/staging/vt6656/main_usb.c                  | 230 ++++--
 drivers/staging/vt6656/rf.c                        |  38 +-
 drivers/staging/vt6656/rf.h                        |   2 +-
 drivers/staging/vt6656/usbpipe.c                   | 115 +--
 drivers/staging/vt6656/usbpipe.h                   |   4 +-
 drivers/staging/wilc1000/Makefile                  |   2 +-
 .../wilc1000/{host_interface.c =3D> wilc_hif.c}      | 188 ++---
 .../wilc1000/{host_interface.h =3D> wilc_hif.h}      |   2 -
 drivers/staging/wilc1000/wilc_mon.c                |   9 +-
 drivers/staging/wilc1000/wilc_netdev.c             | 294 +++----
 drivers/staging/wilc1000/wilc_sdio.c               |   7 +-
 drivers/staging/wilc1000/wilc_spi.c                |   3 +-
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c  | 548 ++++++++-----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h  |  13 +-
 drivers/staging/wilc1000/wilc_wfi_netdevice.h      |  24 +-
 drivers/staging/wilc1000/wilc_wlan.c               |  26 +-
 drivers/staging/wilc1000/wilc_wlan.h               |   8 +-
 drivers/staging/wilc1000/wilc_wlan_if.h            |   2 +-
 drivers/staging/wlan-ng/cfg80211.c                 |  14 +-
 tools/iio/iio_utils.c                              |   4 +-
 358 files changed, 10815 insertions(+), 10006 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-frequency-adf43=
71
 create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adxl345=
.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adxl372=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/adxl345.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/accel/adxl372.txt
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7124.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7124.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/chemical/sensirio=
n,sps30.txt
 create mode 100644 Documentation/devicetree/bindings/iio/chemical/sensirio=
n,sps30.yaml
 create mode 100644 Documentation/devicetree/bindings/iio/frequency/adf4371=
.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/isl29018.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/isl29018.ya=
ml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/tsl2583.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/tsl2583.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/light/tsl2772.txt
 create mode 100644 Documentation/devicetree/bindings/iio/light/tsl2772.yaml
 rename Documentation/iio/{ep93xx_adc.txt =3D> ep93xx_adc.rst} (71%)
 rename Documentation/iio/{iio_configfs.txt =3D> iio_configfs.rst} (73%)
 create mode 100644 Documentation/iio/index.rst
 create mode 100644 drivers/iio/frequency/adf4371.c
 create mode 100644 drivers/iio/pressure/dps310.c
 delete mode 100644 drivers/staging/android/ion/ion_carveout_heap.c
 delete mode 100644 drivers/staging/android/ion/ion_chunk_heap.c
 create mode 100644 drivers/staging/erofs/compress.h
 create mode 100644 drivers/staging/erofs/decompressor.c
 delete mode 100644 drivers/staging/erofs/unzip_vle_lz4.c
 create mode 100644 drivers/staging/erofs/zmap.c
 delete mode 100644 drivers/staging/kpc2000/kpc2000/fileops.c
 delete mode 100644 drivers/staging/kpc2000/kpc2000/kp2000_module.c
 create mode 100644 drivers/staging/kpc2000/kpc2000_i2c.c
 create mode 100644 drivers/staging/kpc2000/kpc2000_spi.c
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/Makefile
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/fileops.c
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/Makefile
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/spi_driver.c
 delete mode 100644 drivers/staging/kpc2000/kpc_spi/spi_parts.h
 create mode 100644 drivers/staging/mt7621-dts/gbpc2.dts
 delete mode 100644 drivers/staging/rtl8723bs/hal/odm_AntDiv.c
 delete mode 100644 drivers/staging/rtl8723bs/hal/odm_AntDiv.h
 rename drivers/staging/wilc1000/{host_interface.c =3D> wilc_hif.c} (91%)
 rename drivers/staging/wilc1000/{host_interface.h =3D> wilc_hif.h} (99%)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
