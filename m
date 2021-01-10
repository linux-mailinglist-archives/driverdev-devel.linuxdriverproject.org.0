Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5202F0786
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 Jan 2021 15:08:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2092486113;
	Sun, 10 Jan 2021 14:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5YM1PeRlDOo; Sun, 10 Jan 2021 14:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D91DC860C5;
	Sun, 10 Jan 2021 14:08:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82B3D1BF4DB
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 14:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 68AC620358
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 14:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hiuJZRMR0Ks6 for <devel@linuxdriverproject.org>;
 Sun, 10 Jan 2021 14:08:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id F059720111
 for <devel@linuxdriverproject.org>; Sun, 10 Jan 2021 14:08:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1532F23741;
 Sun, 10 Jan 2021 14:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1610287728;
 bh=H4C/kgtcqODsENedvtiyfwLLRJosZe1/by42z5lqayQ=;
 h=Date:From:To:Cc:Subject:From;
 b=ooBtaeEloDWzze3HSAjQg6uJpHaNYeF/pGJ+ait60pYUJoysSOC/rYWpOOKENcI2P
 RILXB7dXpbw5h+u0coIC54iYFxwPVglnRnVGVSxrXUA78ryF5jMZ7oTjPPi5R2glap
 arzyIMUtSV1AslmItA9zBrJ4QolyPCvTIYJWuY2Y=
Date: Sun, 10 Jan 2021 15:10:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.11-rc3
Message-ID: <X/sKurcTpwVvIuOs@kroah.com>
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

The following changes since commit 5c8fe583cce542aa0b84adc939ce85293de36e5e:

  Linux 5.11-rc1 (2020-12-27 15:30:22 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.11-rc3

for you to fetch changes up to 00b8c557d096f0930d5c07df618223d3d06902d6:

  staging: ION: remove some references to CONFIG_ION (2021-01-06 17:39:38 +0100)

----------------------------------------------------------------
Staging driver fixes for 5.11-rc3

Here are some small staging driver fixes for 5.11-rc3.  Nothing major,
just resolving some reported issues:
	- cleanup some remaining mentions of the ION drivers that were
	  removed in 5.11-rc1
	- comedi driver bugfix
	- 2 error path memory leak fixes

All have been in linux-next for a while with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Christophe JAILLET (2):
      staging: spmi: hisi-spmi-controller: Fix some error handling paths
      staging: mt7621-dma: Fix a resource leak in an error handling path

Dan Carpenter (1):
      Staging: comedi: Return -EFAULT if copy_to_user() fails

Matthias Maennich (1):
      staging: ION: remove some references to CONFIG_ION

 drivers/staging/comedi/comedi_fops.c               |  4 +++-
 drivers/staging/hikey9xx/hisi-spmi-controller.c    | 21 +++++++++++++++------
 drivers/staging/media/atomisp/pci/atomisp_subdev.c | 20 --------------------
 drivers/staging/mt7621-dma/mtk-hsdma.c             |  4 +++-
 kernel/configs/android-recommended.config          |  1 -
 5 files changed, 21 insertions(+), 29 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
