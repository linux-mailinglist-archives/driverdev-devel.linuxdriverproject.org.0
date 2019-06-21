Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5C34E1B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 10:11:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8583A86073;
	Fri, 21 Jun 2019 08:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sxB1g_gLXF-Y; Fri, 21 Jun 2019 08:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AD7FC840B2;
	Fri, 21 Jun 2019 08:11:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCD721BF5DF
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C44CB1FEB7
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cx722f1K07gt for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 08:11:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9BA6220033
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 08:11:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E5439208C3;
 Fri, 21 Jun 2019 08:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561104665;
 bh=+jBq7H953ib5nQuYrIc7CFnlGp5JodSLhuZNmZmVCaw=;
 h=Date:From:To:Cc:Subject:From;
 b=cXMBn6Z6qxBu8wz9H9EdczUJ5W5WOhC9mKUTsnSfuLaKySCs6e6yfPoru6t2FhW9e
 zNZdadMcZsjURCy4eP37QpJLAz2cBYzCSRlJEZQYOC1hT7sWnOvNRiHFDPrNPWijLU
 I4UTL7ZJELU5LGVS/crGzls5qP6cTsel9/uZKoPc=
Date: Fri, 21 Jun 2019 10:11:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.2-rc6
Message-ID: <20190621081102.GA28012@kroah.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a:

  Linux 5.2-rc3 (2019-06-02 13:55:33 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.2-rc6

for you to fetch changes up to 9b9410766f5422d1e736783dc0c3a053eefedac4:

  Merge branch 'erofs_fix' into staging-linus (2019-06-17 22:59:28 +0200)

----------------------------------------------------------------
Staging/IIO/Counter fixes for 5.2-rc6

Here are some small driver bugfixes for some staging/iio/counter
drivers.

Staging and IIO have been lumped together for a while, as those
subsystems cross the areas a log, and counter is used by IIO, so that's
why they are all in one pull request here.

These are small fixes for reported issues in some iio drivers, the erofs
filesystem, and a build issue for counter code.

All have been in linux-next with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Crt Mori (1):
      iio: temperature: mlx90632 Relax the compatibility check

Fabio Estevam (1):
      staging: iio: adt7316: Fix build errors when GPIOLIB is not set

Gao Xiang (1):
      staging: erofs: add requirements field in superblock

Greg Kroah-Hartman (2):
      Merge tag 'iio-fixes-for-5.2b' of git://git.kernel.org/.../jic23/iio into staging-linus
      Merge branch 'erofs_fix' into staging-linus

Lorenzo Bianconi (1):
      iio: imu: st_lsm6dsx: fix PM support for st_lsm6dsx i2c controller

Melissa Wen (1):
      staging:iio:ad7150: fix threshold mode config bit

Patrick Havelange (1):
      counter/ftm-quaddec: Add missing dependencies in Kconfig

 drivers/counter/Kconfig                      |  1 +
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h      |  2 ++
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c | 25 +++++++++++++++++--------
 drivers/iio/temperature/mlx90632.c           |  9 +++++++--
 drivers/staging/erofs/erofs_fs.h             | 13 ++++++++++---
 drivers/staging/erofs/internal.h             |  2 ++
 drivers/staging/erofs/super.c                | 19 +++++++++++++++++++
 drivers/staging/iio/addac/adt7316.c          |  3 ++-
 drivers/staging/iio/cdc/ad7150.c             | 19 +++++++++++--------
 9 files changed, 71 insertions(+), 22 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
