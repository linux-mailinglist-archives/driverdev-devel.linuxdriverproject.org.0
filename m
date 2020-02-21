Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FD6167C5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Feb 2020 12:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2035B20378;
	Fri, 21 Feb 2020 11:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gqgn8McYtW7A; Fri, 21 Feb 2020 11:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD35A22049;
	Fri, 21 Feb 2020 11:39:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 248BC1BF2F9
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 11:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 211A387EBA
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 11:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZzD1vVpxfMF1 for <devel@linuxdriverproject.org>;
 Fri, 21 Feb 2020 11:39:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BBC487EB8
 for <devel@linuxdriverproject.org>; Fri, 21 Feb 2020 11:39:54 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E02C5222C4;
 Fri, 21 Feb 2020 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582285194;
 bh=f4ezhykKHcP/SWrvI48MdWlXIkNcS65/Djgm3IMolHs=;
 h=Date:From:To:Cc:Subject:From;
 b=XpQ1mAzlntRYGnrUF68ySE4KCPEBC/+uYg9yNfYw0VOmbL1dPBqT/mBlvFrR9M8sP
 rlUioMTfnMh4AauwauGJ49vou9YyvQAMsY9pu4Yu2ZBNXjPbgPHmKyA0UJUesgMSrI
 Y9ispbtswT0u+acLFe/43qxtPwnlwexsXTYPorKs=
Date: Fri, 21 Feb 2020 12:39:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.6-rc3
Message-ID: <20200221113952.GA114312@kroah.com>
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.6-rc3

for you to fetch changes up to 9a4556bd8f23209c29f152e6a930b6a893b0fc81:

  staging: rtl8723bs: Remove unneeded goto statements (2020-02-10 10:32:38 -0800)

----------------------------------------------------------------
Staging driver fixes for 5.6-rc3

Here are some small staging driver fixes for 5.6-rc3, along with the
removal of an unused/unneeded driver as well.

The android vsoc driver is not needed anymore by anyone, so it was
removed.

The other driver fixes are:
	- ashmem bugfixes
	- greybus audio driver bugfix
	- wireless driver bugfixes and tiny cleanups to error paths

All of these have been in linux-next for a while now with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alistair Delva (1):
      staging: android: Delete the 'vsoc' driver

Colin Ian King (1):
      staging: rtl8723bs: fix copy of overlapping memory

Dan Carpenter (1):
      staging: greybus: use after free in gb_audio_manager_remove_all()

Larry Finger (6):
      staging: rtl8188eu: Fix potential security hole
      staging: rtl8723bs: Fix potential security hole
      staging: rtl8188eu: Fix potential overuse of kernel memory
      staging: rtl8723bs: Fix potential overuse of kernel memory
      staging: rtl8188eu: Remove some unneeded goto statements
      staging: rtl8723bs: Remove unneeded goto statements

Malcolm Priestley (1):
      staging: vt6656: fix sign of rx_dbm to bb_pre_ed_rssi.

Suren Baghdasaryan (1):
      staging: android: ashmem: Disallow ashmem memory from being remapped

 drivers/staging/android/Kconfig                |    8 -
 drivers/staging/android/Makefile               |    1 -
 drivers/staging/android/TODO                   |    9 -
 drivers/staging/android/ashmem.c               |   28 +
 drivers/staging/android/uapi/vsoc_shm.h        |  295 ------
 drivers/staging/android/vsoc.c                 | 1149 ------------------------
 drivers/staging/greybus/audio_manager.c        |    2 +-
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c |   40 +-
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |    5 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c |   47 +-
 drivers/staging/vt6656/dpc.c                   |    2 +-
 11 files changed, 56 insertions(+), 1530 deletions(-)
 delete mode 100644 drivers/staging/android/uapi/vsoc_shm.h
 delete mode 100644 drivers/staging/android/vsoc.c
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
