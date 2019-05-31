Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DBE30657
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 03:47:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D73C7880A1;
	Fri, 31 May 2019 01:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fyc9nNlfjuZy; Fri, 31 May 2019 01:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D62D87E93;
	Fri, 31 May 2019 01:47:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C76C81BF98C
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 01:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C444A86962
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 01:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMBrfXnXVq7z for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 01:47:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06F3E8694A
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 01:47:32 +0000 (UTC)
Received: from localhost (ip67-88-213-2.z213-88-67.customer.algx.net
 [67.88.213.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B97002572F;
 Fri, 31 May 2019 01:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559267252;
 bh=+OeEewhapcQ/i3CLN4Cm0OE27Ar7683dWewuTciehp0=;
 h=Date:From:To:Cc:Subject:From;
 b=dO3JNUuP0GLdhhptxJJVh/Yf38FXkLmRItkZ2xE0xGm1IF7gwD/GY4mRKG0KFcs4V
 cVOmlafd7ldyJ5RI6DS8AXWIDQchh+gZYW55bGmJ+yy4hHRfnyV0K2rezEhCmTas5O
 A7b0NxI781PVVn8+8tuO3/wRtkl6zd9iIPgS99MI=
Date: Thu, 30 May 2019 18:47:32 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.2-rc3
Message-ID: <20190531014732.GA30765@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.0 (2019-05-25)
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.2-rc3

for you to fetch changes up to e61ff0fba72d981449c90b5299cebb74534b6f7c:

  staging: kpc2000: Add dependency on MFD_CORE to kconfig symbol 'KPC2000' =
(2019-05-24 09:41:09 +0200)

----------------------------------------------------------------
Staging/IIO driver fixes for 5.2-rc3

Here are some Staging and IIO driver fixes to resolve some reported
problems for 5.2-rc3.

Nothing major here, just some tiny changes, full details are in the
shortlog.

All have been in linux-next for a while with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Chengguang Xu (1):
      staging: erofs: set sb->s_root to NULL when failing from __getname()

Dan Carpenter (4):
      staging: kpc2000: double unlock in error handling in kpc_dma_transfer=
()
      Staging: vc04_services: Fix a couple error codes
      staging: vc04_services: prevent integer overflow in create_pagelist()
      staging: wilc1000: Fix some double unlock bugs in wilc_wlan_cleanup()

Geordan Neukum (1):
      staging: kpc2000: Add dependency on MFD_CORE to kconfig symbol 'KPC20=
00'

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.2a' of git://git.kernel.org/.../jic23/iio =
into staging-linus:

Max Filippov (1):
      staging: kpc2000: fix build error on xtensa

Ruslan Babayev (1):
      iio: dac: ds4422/ds4424 fix chip verification

Sean Nyekjaer (1):
      iio: adc: ti-ads8688: fix timestamp is not updated in buffer

Steve Moskovchenko (1):
      iio: imu: mpu6050: Fix FIFO layout for ICM20602

Tim Collier (1):
      staging: wlan-ng: fix adapter initialization failure

Tomer Maimon (1):
      iio: adc: modify NPCM ADC read reference voltage

Vincent Stehl=E9 (1):
      iio: adc: ads124: avoid buffer overflow

YueHaibing (1):
      staging: kpc2000: Fix build error without CONFIG_UIO

 drivers/iio/adc/npcm_adc.c                         |  2 +-
 drivers/iio/adc/ti-ads124s08.c                     |  2 +-
 drivers/iio/adc/ti-ads8688.c                       |  2 +-
 drivers/iio/dac/ds4424.c                           |  2 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c         | 46 ++++++++++++++++++=
++--
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h          | 20 +++++++++-
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c         |  3 ++
 drivers/staging/erofs/super.c                      |  1 +
 drivers/staging/kpc2000/Kconfig                    |  2 +
 drivers/staging/kpc2000/kpc_dma/fileops.c          |  4 +-
 .../vc04_services/bcm2835-camera/controls.c        |  4 +-
 .../interface/vchiq_arm/vchiq_2835_arm.c           |  9 +++++
 drivers/staging/wilc1000/wilc_wlan.c               |  8 +++-
 drivers/staging/wlan-ng/hfa384x_usb.c              |  3 +-
 14 files changed, 91 insertions(+), 17 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
