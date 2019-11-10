Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76678F69DD
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Nov 2019 16:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3109D858FC;
	Sun, 10 Nov 2019 15:43:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62amz6LvBsxW; Sun, 10 Nov 2019 15:43:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AF9285876;
	Sun, 10 Nov 2019 15:43:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7FE31BF33E
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 15:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CABC1204CE
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 15:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0voRPPddZ65 for <devel@linuxdriverproject.org>;
 Sun, 10 Nov 2019 15:43:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C82282040B
 for <devel@linuxdriverproject.org>; Sun, 10 Nov 2019 15:43:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF2DC206DF;
 Sun, 10 Nov 2019 15:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573400586;
 bh=3a18qqUhBkW4PUQrLLv6spd9GebwORwUzuDmnem1nKM=;
 h=Date:From:To:Cc:Subject:From;
 b=d7SbenSMIfm1D3v+SGjJLM4088aYrJ0ywZnwkcbd8xKmwyWXWkxhLUUchiDY07ewe
 dq3oMlCmycemAxLRf6CTmYB39aL2VRZcskUaNiATvMce1WMKen5R3xUsc8d+fv/o1w
 9zQePStnoBj75c5jFbWtDxr7+riAjcqfuO6dsn0Y=
Date: Sun, 10 Nov 2019 16:43:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] IIO fixes / Staging driver for 5.4-rc7
Message-ID: <20191110154303.GA2867499@kroah.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit d6d5df1db6e9d7f8f76d2911707f7d5877251b02:

  Linux 5.4-rc5 (2019-10-27 13:19:19 -0400)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.4-rc7

for you to fetch changes up to e39fcaef7ed993950af74a584f8246022b551971:

  staging: Fix error return code in vboxsf_fill_super() (2019-11-07 16:29:18 +0100)

----------------------------------------------------------------
IIO fixes / Staging driver for 5.4-rc7

Here is a mix of a number of IIO driver fixes for 5.4-rc7, and a whole
new staging driver.

The IIO fixes resolve some reported issues, all are tiny.

The staging driver addition is the vboxsf filesystem, which is the
VirtualBox guest shared folder code.  Hans has been trying to get
filesystem reviewers to review the code for many months now, and
Christoph finally said to just merge it in staging now as it is
stand-alone and the filesystem people can review it easier over time
that way.
I know it's late for this big of an addition, but it is stand-alone.

The code has been in linux-next for a while, long enough to pick up a
few tiny fixes for it already so people are looking at it.

All of these have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alexandru Ardelean (1):
      iio: imu: adis16480: make sure provided frequency is positive

Andreas Klinger (1):
      iio: srf04: fix wrong limitation in distance measuring

Colin Ian King (1):
      staging: vboxsf: fix dereference of pointer dentry before it is null checked

Fabrice Gasnier (1):
      iio: adc: stm32-adc: fix stopping dma

Greg Kroah-Hartman (1):
      Merge tag 'iio-fixes-for-5.4b' of https://git.kernel.org/.../jic23/iio into staging-linus

Hans de Goede (1):
      staging: Add VirtualBox guest shared folder (vboxsf) support

Jean-Baptiste Maneyrol (1):
      iio: imu: inv_mpu6050: fix no data on MPU6050

Wei Yongjun (1):
      staging: Fix error return code in vboxsf_fill_super()

YueHaibing (1):
      staging: vboxsf: Remove unused including <linux/version.h>

 MAINTAINERS                                |   6 +
 drivers/iio/adc/stm32-adc.c                |   4 +-
 drivers/iio/imu/adis16480.c                |   5 +-
 drivers/iio/imu/inv_mpu6050/inv_mpu_core.c |   9 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_iio.h  |   2 +
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c |  15 +-
 drivers/iio/proximity/srf04.c              |  29 +-
 drivers/staging/Kconfig                    |   2 +
 drivers/staging/Makefile                   |   1 +
 drivers/staging/vboxsf/Kconfig             |  10 +
 drivers/staging/vboxsf/Makefile            |   5 +
 drivers/staging/vboxsf/TODO                |   7 +
 drivers/staging/vboxsf/dir.c               | 418 +++++++++++++
 drivers/staging/vboxsf/file.c              | 370 ++++++++++++
 drivers/staging/vboxsf/shfl_hostintf.h     | 901 +++++++++++++++++++++++++++++
 drivers/staging/vboxsf/super.c             | 501 ++++++++++++++++
 drivers/staging/vboxsf/utils.c             | 551 ++++++++++++++++++
 drivers/staging/vboxsf/vboxsf_wrappers.c   | 371 ++++++++++++
 drivers/staging/vboxsf/vfsmod.h            | 137 +++++
 19 files changed, 3324 insertions(+), 20 deletions(-)
 create mode 100644 drivers/staging/vboxsf/Kconfig
 create mode 100644 drivers/staging/vboxsf/Makefile
 create mode 100644 drivers/staging/vboxsf/TODO
 create mode 100644 drivers/staging/vboxsf/dir.c
 create mode 100644 drivers/staging/vboxsf/file.c
 create mode 100644 drivers/staging/vboxsf/shfl_hostintf.h
 create mode 100644 drivers/staging/vboxsf/super.c
 create mode 100644 drivers/staging/vboxsf/utils.c
 create mode 100644 drivers/staging/vboxsf/vboxsf_wrappers.c
 create mode 100644 drivers/staging/vboxsf/vfsmod.h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
