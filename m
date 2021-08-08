Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA543E39FE
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Aug 2021 13:31:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5B9F6077D;
	Sun,  8 Aug 2021 11:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KuYfo7KLSZFS; Sun,  8 Aug 2021 11:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 575B860654;
	Sun,  8 Aug 2021 11:31:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 18F811BF5A1
 for <devel@linuxdriverproject.org>; Sun,  8 Aug 2021 11:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0766C40403
 for <devel@linuxdriverproject.org>; Sun,  8 Aug 2021 11:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HG-lhDhtc1Go for <devel@linuxdriverproject.org>;
 Sun,  8 Aug 2021 11:31:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 032FA403E5
 for <devel@linuxdriverproject.org>; Sun,  8 Aug 2021 11:31:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 037ED6101D;
 Sun,  8 Aug 2021 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1628422288;
 bh=92qWD8sTNHhxOHQgDUsVIP6UvOBYfIM2nmUo8Ta8Ftc=;
 h=Date:From:To:Cc:Subject:From;
 b=2C85e8YCglK8Eevp4s86/Nx+wzJzgVXqM4xRR1+emW/fFqyhtvGjD8i8LppQ3IvKc
 KOgB1WcYwr0cloz/S7xkxcbVWszIS613xcmnIXIre64G9cUSHv7EjyhUOlTWSn7k/q
 EDWu1fcrV/fQTgkMGB/VnWMwtERyXyJ1V+LSJk5M=
Date: Sun, 8 Aug 2021 13:31:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.14-rc5
Message-ID: <YQ/AjpNS3y41k/uT@kroah.com>
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
Cc: devel@linuxdriverproject.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 2734d6c1b1a089fb593ef6a23d4b70903526fe0c:

  Linux 5.14-rc2 (2021-07-18 14:13:49 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.14-rc5

for you to fetch changes up to c7b65650c7f41d3946c4e2f0bb56dfdb92cfe127:

  staging: mt7621-pci: avoid to re-disable clock for those pcies not in use (2021-07-27 15:48:43 +0200)

----------------------------------------------------------------
Staging driver fixes for 5.14-rc5

Here are a few small staging driver fixes for 5.14-rc5 to resolve some
reported problems.  They include:
	- mt7621 driver fix
	- rtl8723bs driver fixes
	- rtl8712 driver fixes.
Nothing major, just small problems resolved.

All have been in linux-next for a while with no reported issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Arnd Bergmann (1):
      staging: rtl8723bs: select CONFIG_CRYPTO_LIB_ARC4

Pavel Skripkin (2):
      staging: rtl8712: get rid of flush_scheduled_work
      staging: rtl8712: error handling refactoring

Sergio Paracuellos (1):
      staging: mt7621-pci: avoid to re-disable clock for those pcies not in use

Xiangyang Zhang (1):
      staging: rtl8723bs: Fix a resource leak in sd_int_dpc

 drivers/staging/mt7621-pci/pci-mt7621.c   |  1 -
 drivers/staging/rtl8712/hal_init.c        | 30 ++++++++++++------
 drivers/staging/rtl8712/rtl8712_led.c     |  8 +++++
 drivers/staging/rtl8712/rtl871x_led.h     |  1 +
 drivers/staging/rtl8712/rtl871x_pwrctrl.c |  8 +++++
 drivers/staging/rtl8712/rtl871x_pwrctrl.h |  1 +
 drivers/staging/rtl8712/usb_intf.c        | 51 ++++++++++++++-----------------
 drivers/staging/rtl8723bs/Kconfig         |  1 +
 drivers/staging/rtl8723bs/hal/sdio_ops.c  |  2 ++
 9 files changed, 64 insertions(+), 39 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
