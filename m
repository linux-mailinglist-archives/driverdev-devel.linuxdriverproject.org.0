Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E32711F269
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 16:27:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C01CF85E8C;
	Sat, 14 Dec 2019 15:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3R51ftcAWsAP; Sat, 14 Dec 2019 15:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A97A85B04;
	Sat, 14 Dec 2019 15:27:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A87371BF3DC
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 15:27:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A250686B19
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 15:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FmVoo3q8hz7h for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 15:27:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6D89086B0E
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 15:27:50 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C46A0214AF;
 Sat, 14 Dec 2019 15:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576337270;
 bh=y5MB+qGzyOrtC6JL8tH+Wpn8yVc6/kX3dLZJJyDxdpw=;
 h=Date:From:To:Cc:Subject:From;
 b=fQiKq8UrUnBNe6Z/JOM1RMEwBTqYjZk7kW50vjUEIzTixoXf5ElhkVagExLphJkK+
 vPpkLacrwqltEO9cOIo5v4FbtCjwVLEKC4cW7SGTc4wU/5n4LhzrSq9R7lYV3B8eG8
 CDWECd6DZJl+qHV/K1Gs32R21Y3WRb25pfUGlE0g=
Date: Sat, 14 Dec 2019 16:27:48 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging / IIO driver fixes for 5.5-rc2
Message-ID: <20191214152748.GA3460096@kroah.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc2

for you to fetch changes up to 4bcd9eae731083bb724faf68cce6021213308333:

  fbtft: Fix the initialization from property algorithm (2019-12-10 15:55:55 +0100)

----------------------------------------------------------------
Staging/IIO fixes for 5.5-rc2

Here are a number of small staging and IIO driver fixes for reported
issues for 5.5-rc2

Nothing major, a bunch of tiny IIO driver issues resolved, and some
staging driver fixes for things that people ran into with 5.5-rc1.  Full
details are in the shortlog.

All of these have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Andrea Merello (1):
      iio: ad7949: fix channels mixups

Andrea Righi (1):
      staging: exfat: properly support discard in clr_alloc_bitmap()

Andy Shevchenko (1):
      fbtft: Fix the initialization from property algorithm

Beniamin Bia (1):
      iio: adc: ad7606: fix reading unnecessary data from device

Brendan Higgins (1):
      staging: exfat: fix multiple definition error of `rename_file'

Chris Lesiak (1):
      iio: humidity: hdc100x: fix IIO_HUMIDITYRELATIVE channel reporting

Chuhong Yuan (1):
      iio: adc: max1027: fix not unregistered iio trigger

Colin Ian King (1):
      iio: temperature: ltc2983: fix u32 read into a unsigned long long

Dan Carpenter (1):
      iio: adc: intel_mrfld_adc: Allocating too much data in probe()

Geert Uytterhoeven (1):
      iio: adc: max9611: Fix too short conversion time delay

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.5a' of git://git.kernel.org/.../jic23/iio into staging-linus

Guenter Roeck (1):
      staging/octeon: Mark Ethernet driver as BROKEN

Jean-Baptiste Maneyrol (1):
      iio: imu: inv_mpu6050: fix temperature reporting using bad unit

Johan Hovold (5):
      staging: gigaset: fix general protection fault on probe
      staging: gigaset: fix illegal free on probe errors
      staging: gigaset: add endpoint-type sanity check
      staging: rtl8188eu: fix interface sanity check
      staging: rtl8712: fix interface sanity check

Kay Friedrich (1):
      staging/wlan-ng: add CRC32 dependency in Kconfig

Linus Walleij (1):
      staging: fbtft: Do not hardcode SPI CS polarity inversion

Lorenzo Bianconi (3):
      iio: imu: st_lsm6dsx: fix decimation factor estimation
      iio: imu: st_lsm6dsx: track hw FIFO buffering with fifo_mask
      iio: imu: st_lsm6dsx: do not power-off accel if events are enabled

Marcelo Diop-Gonzalez (1):
      staging: vchiq: call unregister_chrdev_region() when driver registration fails

Marcelo Schmitt (2):
      dt-bindings: iio: adc: ad7292: Update SPDX identifier
      dt-bindings: iio: adc: ad7292: fix constraint over channel quantity

Mircea Caprioru (1):
      iio: adc: ad7124: Enable internal reference

YueHaibing (2):
      iio: st_accel: Fix unused variable warning
      staging: hp100: Fix build error without ETHERNET

 .../devicetree/bindings/iio/adc/adi,ad7292.yaml    |  5 ++-
 drivers/iio/accel/st_accel_core.c                  |  8 +++-
 drivers/iio/adc/ad7124.c                           |  7 ++-
 drivers/iio/adc/ad7606.c                           |  2 +-
 drivers/iio/adc/ad7949.c                           | 22 +++++++---
 drivers/iio/adc/intel_mrfld_adc.c                  |  2 +-
 drivers/iio/adc/max1027.c                          |  8 +++-
 drivers/iio/adc/max9611.c                          | 16 ++++---
 drivers/iio/humidity/hdc100x.c                     |  2 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         | 23 +++++-----
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h          | 16 +++++--
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h            |  6 +--
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c     | 50 ++++++++++++++--------
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c       | 34 ++++++++++++---
 drivers/iio/temperature/ltc2983.c                  |  6 ++-
 drivers/staging/exfat/exfat.h                      |  4 +-
 drivers/staging/exfat/exfat_core.c                 | 10 +++--
 drivers/staging/exfat/exfat_super.c                |  4 +-
 drivers/staging/fbtft/fb_uc1611.c                  | 12 ++++--
 drivers/staging/fbtft/fb_watterott.c               | 13 ++++--
 drivers/staging/fbtft/fbtft-core.c                 |  6 +--
 drivers/staging/hp/Kconfig                         |  1 +
 drivers/staging/isdn/gigaset/usb-gigaset.c         | 23 +++++++---
 drivers/staging/octeon/Kconfig                     |  1 +
 drivers/staging/rtl8188eu/os_dep/usb_intf.c        |  2 +-
 drivers/staging/rtl8712/usb_intf.c                 |  2 +-
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |  2 +-
 drivers/staging/wlan-ng/Kconfig                    |  1 +
 28 files changed, 198 insertions(+), 90 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
