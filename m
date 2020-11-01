Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9EB2A1E34
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Nov 2020 14:08:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6992B87A63;
	Sun,  1 Nov 2020 13:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nCnxMu4rk8TV; Sun,  1 Nov 2020 13:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62C3887A72;
	Sun,  1 Nov 2020 13:08:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 955C41BF285
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 13:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91B228676C
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 13:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcOjYS-r11D3 for <devel@linuxdriverproject.org>;
 Sun,  1 Nov 2020 13:08:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CEB186731
 for <devel@linuxdriverproject.org>; Sun,  1 Nov 2020 13:08:39 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 757FD208B6;
 Sun,  1 Nov 2020 13:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604236119;
 bh=xuPt7xRSZgxYbAIJjWopt6d6RBzug/vvyxWqA/RixRQ=;
 h=Date:From:To:Cc:Subject:From;
 b=hR9F5nDU1OLiGo5DORUNgQrrJji9lxLFn3A84QvlNedJBmgDBMRNJV24VUc/aKtyH
 OWyQIGSA1eHrVJl4BvzomdUY9ZBTHBSFfiBSLhzaIlDKtot5fTYtRoaUy8GoMOi8GL
 2XlMyBaJSTMITHNM4whaPHgjcT2NDym3LQCtvIWQ=
Date: Sun, 1 Nov 2020 14:09:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging driver fixes for 5.10-rc2
Message-ID: <20201101130921.GA4115310@kroah.com>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:

  Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git tags/sta=
ging-5.10-rc2

for you to fetch changes up to 7e97e4cbf30026b49b0145c3bfe06087958382c5:

  staging: fieldbus: anybuss: jump to correct label in an error path (2020-=
10-27 13:24:51 +0100)

----------------------------------------------------------------
Staging driver fixes for 5.10-rc2

Here are some small staging driver fixes for issues that have been
reported in 5.10-rc1:
  - octeon driver fixes
  - wfx driver fixes
  - memory leak fix in vchiq driver
  - fieldbus driver bugfix
  - comedi driver bugfix

All of these have been in linux-next with no reported issues

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Alexander Sverdlin (2):
      staging: octeon: repair "fixed-link" support
      staging: octeon: Drop on uncorrectable alignment or FCS error

Ian Abbott (1):
      staging: comedi: cb_pcidas: Allow 2-channel commands for AO subdevice

Jing Xiangfeng (1):
      staging: fieldbus: anybuss: jump to correct label in an error path

J=E9r=F4me Pouiller (2):
      staging: wfx: fix use of uninitialized pointer
      staging: wfx: fix test on return value of gpiod_get_value()

Seung-Woo Kim (1):
      staging: mmal-vchiq: Fix memory leak for vchiq_instance

 drivers/staging/comedi/drivers/cb_pcidas.c         |  1 +
 drivers/staging/fieldbus/anybuss/arcx-anybus.c     |  2 +-
 drivers/staging/octeon/ethernet-mdio.c             |  6 ----
 drivers/staging/octeon/ethernet-rx.c               | 34 ++++++++++++------=
----
 drivers/staging/octeon/ethernet.c                  |  9 ++++++
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c  | 19 +++++++++---
 drivers/staging/wfx/bh.c                           |  2 +-
 drivers/staging/wfx/data_tx.c                      |  6 ++--
 8 files changed, 49 insertions(+), 30 deletions(-)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
