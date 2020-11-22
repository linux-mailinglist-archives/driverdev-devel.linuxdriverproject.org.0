Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 781482BC570
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 12:42:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A7BA86469;
	Sun, 22 Nov 2020 11:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id awAjM4IL9luC; Sun, 22 Nov 2020 11:42:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D34C685FDE;
	Sun, 22 Nov 2020 11:42:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 336CF1BF5F4
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 11:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 300F685FDE
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 11:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CrZ0lqzAPReS for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 11:42:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 966DE85FA5
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 11:42:36 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFDEE208D5;
 Sun, 22 Nov 2020 11:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1606045356;
 bh=u9wt6zWQXqhPbLe88eGaTAtgK4qyg1Qlp00FPr9i2ZM=;
 h=Date:From:To:Cc:Subject:From;
 b=nK+mQGu0EYSPkK5eEbE7KgkFxchQJDFI9j74vY7HjR2B8EA0b8vtN5kQidc7Jrk+n
 sRhmpb90J18mh2jJuZgMszn2sPDGlCl+4dyFCx6xPnXO4fgRE+g3CQ+8aoi5K0kVpJ
 DSYMQYxJm7fLByieuEt8wAtoX5EwjbBYDOnlwkY4=
Date: Sun, 22 Nov 2020 12:43:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.10-rc5
Message-ID: <X7pO0mtUNsMsE9F7@kroah.com>
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

The following changes since commit 3cea11cd5e3b00d91caf0b4730194039b45c5891:

  Linux 5.10-rc2 (2020-11-01 14:43:51 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.10-rc5

for you to fetch changes up to 2dde2821b57f12fa8601d35d438b5e300fcbbe1d:

  Merge tag 'iio-fixes-for-5.10a' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-linus (2020-11-17 10:53:00 +0100)

----------------------------------------------------------------
Staging/IIO fixes for 5.10-rc5

Here are some small Staging and IIO driver fixes for 5.10-rc5.  They
include:
	- IIO fixes for reported regressions and problems
	- new device ids for IIO drivers
	- new device id for rtl8723bs driver
	- staging ralink driver Kconfig dependency fix
	- staging mt7621-pci bus resource fix

All of these have been in linux-next all week with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Brian O'Keefe (1):
      staging: rtl8723bs: Add 024c:0627 to the list of SDIO device-ids

David Lechner (1):
      counter/ti-eqep: Fix regmap max_register

Fabien Parent (1):
      iio: adc: mediatek: fix unset field

Fabrice Gasnier (1):
      docs: ABI: testing: iio: stm32: remove re-introduced unsupported ABI

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.10a' of https://git.kernel.org/.../jic23/iio into staging-linus

Gwendal Grignou (1):
      iio: cros_ec: Use default frequencies when EC returns invalid information

Hans de Goede (2):
      iio: accel: kxcjk1013: Replace is_smo8500_device with an acpi_type enum
      iio: accel: kxcjk1013: Add support for KIOX010A ACPI DSM for setting tablet-mode

Lorenzo Bianconi (1):
      iio: imu: st_lsm6dsx: set 10ms as min shub slave timeout

Necip Fazil Yildiran (2):
      staging: ralink-gdma: fix kconfig dependency bug for DMA_RALINK
      iio: light: fix kconfig dependency bug for VCNL4035

Olivier Moysan (1):
      iio: adc: stm32-adc: fix a regression when using dma and irq

Paul Cercueil (2):
      iio/adc: ingenic: Fix battery VREF for JZ4770 SoC
      iio/adc: ingenic: Fix AUX/VBAT readings when touchscreen is used

Sergio Paracuellos (1):
      staging: mt7621-pci: avoid to request pci bus resources

 .../ABI/testing/sysfs-bus-iio-timer-stm32          | 24 ----------
 drivers/counter/ti-eqep.c                          |  4 +-
 drivers/iio/accel/kxcjk-1013.c                     | 51 +++++++++++++++++++---
 drivers/iio/adc/ingenic-adc.c                      | 34 ++++++++++++---
 drivers/iio/adc/mt6577_auxadc.c                    |  6 ++-
 drivers/iio/adc/stm32-adc-core.c                   | 41 ++++++++---------
 drivers/iio/adc/stm32-adc.c                        | 50 ++++++++++++++++++++-
 .../common/cros_ec_sensors/cros_ec_sensors_core.c  | 16 ++++---
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c       |  6 ++-
 drivers/iio/light/Kconfig                          |  1 +
 drivers/staging/mt7621-pci/pci-mt7621.c            | 15 ++-----
 drivers/staging/ralink-gdma/Kconfig                |  1 +
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c       |  1 +
 13 files changed, 165 insertions(+), 85 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
