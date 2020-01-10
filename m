Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0573F137852
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 22:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 493DC22728;
	Fri, 10 Jan 2020 21:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0nxSZYFv6Dp; Fri, 10 Jan 2020 21:08:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 996AD221F0;
	Fri, 10 Jan 2020 21:08:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CE4C71BF616
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 21:08:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB1A786C19
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 21:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qxFLsIeLEqqU for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 21:08:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D99486C15
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 21:08:53 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C4BF205F4;
 Fri, 10 Jan 2020 21:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578690532;
 bh=krz+Fo5CPvIpRgDBbneffb9nEQaQF58cdZqCforIrgw=;
 h=Date:From:To:Cc:Subject:From;
 b=gV2PEgKO52NCP6Mw47gjwxK8z46YcxMCSkwFpdqXy6BHma9YwS09HXhibEolPNx5h
 OBo7bs4D3XjIAtKZeKmw0Nlba01xYcU7ZAHaBRvVxf0hf0x8zcbGVwzabjSvnR6Ewp
 kP6yH4bpXyoc6oZ4ngdDHfazRoaWNOep7Ak1oMpw=
Date: Fri, 10 Jan 2020 22:08:50 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.5-rc6
Message-ID: <20200110210850.GA1871133@kroah.com>
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

The following changes since commit 46cf053efec6a3a5f343fead837777efe8252a46:

  Linux 5.5-rc3 (2019-12-22 17:02:23 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/staging-5.5-rc6

for you to fetch changes up to 58dcc5bf4030cab548d5c98cd4cd3632a5444d5a:

  staging: rtl8188eu: Add device code for TP-Link TL-WN727N v5.21 (2020-01-03 11:47:00 +0100)

----------------------------------------------------------------
Staging fixes for 5.5-rc6

Here are some small staging driver fixes for 5.5-rc6.

Nothing major here, just some small fixes for a comedi driver, the
vt6656 driver, and a new device id for the rtl8188eu driver.

All of these have been in linux-next for a while with no reported
issues.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Ian Abbott (1):
      staging: comedi: adv_pci1710: fix AI channels 16-31 for PCI-1713

Malcolm Priestley (5):
      staging: vt6656: Fix non zero logical return of, usb_control_msg
      staging: vt6656: correct return of vnt_init_registers.
      staging: vt6656: limit reg output to block size
      staging: vt6656: remove bool from vnt_radio_power_on ret
      staging: vt6656: set usb_set_intfdata on driver fail.

Michael Straube (1):
      staging: rtl8188eu: Add device code for TP-Link TL-WN727N v5.21

 drivers/staging/comedi/drivers/adv_pci1710.c |  4 ++--
 drivers/staging/rtl8188eu/os_dep/usb_intf.c  |  1 +
 drivers/staging/vt6656/baseband.c            |  4 ++--
 drivers/staging/vt6656/card.c                |  2 +-
 drivers/staging/vt6656/device.h              |  1 +
 drivers/staging/vt6656/main_usb.c            |  3 ++-
 drivers/staging/vt6656/usbpipe.c             | 25 +++++++++++++++++++++++--
 drivers/staging/vt6656/usbpipe.h             |  5 +++++
 drivers/staging/vt6656/wcmd.c                |  1 +
 9 files changed, 38 insertions(+), 8 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
