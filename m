Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D950FD50E9
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 18:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A45D7877D0;
	Sat, 12 Oct 2019 16:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w29mg2UMHJlz; Sat, 12 Oct 2019 16:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33E4C86E9E;
	Sat, 12 Oct 2019 16:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76FDE1BF584
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 16:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7399187A62
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 16:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jN6EmIx8uupt for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 16:16:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C57487A0A
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 16:16:46 +0000 (UTC)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 599AA2190F;
 Sat, 12 Oct 2019 16:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570897006;
 bh=pXshyxxGscE0pxiId3p1pRQLZygTthV934U804pN8xU=;
 h=Date:From:To:Cc:Subject:From;
 b=XFRYSInYXGIbjq7lVOuQwqw7PcSk3vgW+GQyPI9dqs34zJhh86R3SM3vZuCrLPrDG
 wmasCg/GL7QDZuX8xe+gjEFUXAaGXWNenNRQHNFxsJLSzeiBWyCqOpILC0XgmTuJJ8
 YMwh3HvmTdqSF9Dqq4WFuDoBu/JFp4+KU8C+4N5o=
Date: Sat, 12 Oct 2019 18:16:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.4-rc3
Message-ID: <20191012161638.GA2191707@kroah.com>
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.4-rc3

for you to fetch changes up to 3f3d31622a2c18b644328965925110dd7638b376:

  Merge tag 'iio-fixes-for-5.4a' of https://git.kernel.org/pub/scm/linux/ke=
rnel/git/jic23/iio into staging-linus (2019-10-10 11:18:37 +0200)

----------------------------------------------------------------
Staging/IIO driver fixes for 5.4-rc3

Here are some staging and IIO driver fixes for 5.4-rc3.

The "biggest" thing here is a removal of the fbtft device and flexfb
code as they have been abandoned by their authors and are no longer
needed for that hardware.

Other than that, the usual amount of staging driver and iio driver fixes
for reported issues, and some speakup sysfs file documentation, which
has been long awaited for.

All have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Andreas Klinger (1):
      iio: adc: hx711: fix bug in sampling of data

Connor Kuehl (1):
      staging: rtl8188eu: fix null dereference when kzalloc fails

David Frey (1):
      iio: light: opt3001: fix mutex unlock race

Denis Efremov (1):
      staging: rtl8188eu: fix HighestRate check in odm_ARFBRefresh_8188E()

Fabrice Gasnier (2):
      iio: adc: stm32-adc: move registers definitions
      iio: adc: stm32-adc: fix a race when using several adcs with dma and =
irq

Geert Uytterhoeven (1):
      staging: octeon: Use "(uintptr_t)" to cast from pointer to int

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.4a' of https://git.kernel.org/.../jic23/ii=
o into staging-linus

Hans de Goede (1):
      iio: adc: axp288: Override TS pin bias current for some models

Jia-Ye Li (1):
      staging: exfat: Use kvzalloc() instead of kzalloc() for exfat_sb_info

Lorenzo Bianconi (2):
      iio: imu: st_lsm6dsx: forbid 0 sensor sensitivity
      iio: imu: st_lsm6dsx: fix waitime for st_lsm6dsx i2c controller

Marco Felsch (3):
      iio: light: fix vcnl4000 devicetree hooks
      iio: light: add missing vcnl4040 of_compatible
      iio: adc: ad799x: fix probe error handling

Masanari Iida (1):
      staging: exfat: Fix a typo in Kconfig

Michael Straube (1):
      staging: exfat: add missing SPDX line to Kconfig

Navid Emamdoost (4):
      Staging: fbtft: fix memory leak in fbtft_framebuffer_alloc
      staging: vt6655: Fix memory leak in vt6655_probe
      iio: imu: adis16400: release allocated memory on failure
      iio: imu: adis16400: fix memory leak

Noralf Tr=F8nnes (3):
      staging/fbtft: Depend on OF
      staging/fbtft: Remove fbtft_device
      staging/fbtft: Remove flexfb

Okash Khawaja (1):
      staging: speakup: document sysfs attributes

Pascal Bouwmann (1):
      iio: fix center temperature of bmc150-accel-core

Remi Pommarel (1):
      iio: adc: meson_saradc: Fix memory allocation order

Stefan Popa (3):
      iio: accel: adxl372: Fix/remove limitation for FIFO samples
      iio: accel: adxl372: Fix push to buffers lost samples
      iio: accel: adxl372: Perform a reset at start up

Takashi Iwai (1):
      staging: bcm2835-audio: Fix draining behavior regression

Valdis Kletnieks (1):
      staging: exfat - fix SPDX tags..

zhong jiang (1):
      iio: Fix an undefied reference error in noa1305_probe

 drivers/iio/accel/adxl372.c                        |   22 +-
 drivers/iio/accel/bmc150-accel-core.c              |    2 +-
 drivers/iio/adc/ad799x.c                           |    4 +-
 drivers/iio/adc/axp288_adc.c                       |   32 +
 drivers/iio/adc/hx711.c                            |   10 +-
 drivers/iio/adc/meson_saradc.c                     |   10 +-
 drivers/iio/adc/stm32-adc-core.c                   |   70 +-
 drivers/iio/adc/stm32-adc-core.h                   |  137 +++
 drivers/iio/adc/stm32-adc.c                        |  109 --
 drivers/iio/imu/adis_buffer.c                      |   10 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |    2 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       |   28 +-
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |   15 +-
 drivers/iio/light/Kconfig                          |    1 +
 drivers/iio/light/opt3001.c                        |    6 +-
 drivers/iio/light/vcnl4000.c                       |   14 +-
 drivers/staging/exfat/Kconfig                      |    3 +-
 drivers/staging/exfat/Makefile                     |    2 +-
 drivers/staging/exfat/exfat.h                      |    2 +-
 drivers/staging/exfat/exfat_blkdev.c               |    2 +-
 drivers/staging/exfat/exfat_cache.c                |    2 +-
 drivers/staging/exfat/exfat_core.c                 |    2 +-
 drivers/staging/exfat/exfat_nls.c                  |    2 +-
 drivers/staging/exfat/exfat_super.c                |    7 +-
 drivers/staging/exfat/exfat_upcase.c               |    2 +-
 drivers/staging/fbtft/Kconfig                      |   12 +-
 drivers/staging/fbtft/Makefile                     |    4 -
 drivers/staging/fbtft/fbtft-core.c                 |    7 +-
 drivers/staging/fbtft/fbtft_device.c               | 1261 ----------------=
----
 drivers/staging/fbtft/flexfb.c                     |  851 -------------
 drivers/staging/octeon/ethernet-tx.c               |    9 +-
 drivers/staging/octeon/octeon-stubs.h              |    2 +-
 .../staging/rtl8188eu/hal/hal8188e_rate_adaptive.c |    2 +-
 drivers/staging/rtl8188eu/os_dep/usb_intf.c        |    6 +-
 drivers/staging/speakup/sysfs-driver-speakup       |  369 ++++++
 .../vc04_services/bcm2835-audio/bcm2835-pcm.c      |    4 +-
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c    |    1 +
 drivers/staging/vt6655/device_main.c               |    4 +-
 38 files changed, 695 insertions(+), 2333 deletions(-)
 delete mode 100644 drivers/staging/fbtft/fbtft_device.c
 delete mode 100644 drivers/staging/fbtft/flexfb.c
 create mode 100644 drivers/staging/speakup/sysfs-driver-speakup
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
