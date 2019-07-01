Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A80D5B280
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 02:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6C96856E9;
	Mon,  1 Jul 2019 00:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXAQh_HMsrrr; Mon,  1 Jul 2019 00:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56D2485108;
	Mon,  1 Jul 2019 00:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B51691BF2C2
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 00:53:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B041E8511C
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 00:53:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qP1PTs2KgnkZ for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 00:53:47 +0000 (UTC)
X-Greylist: delayed 00:10:10 by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E54F385108
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 00:53:46 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F1F4CADE6;
 Mon,  1 Jul 2019 00:43:31 +0000 (UTC)
From: NeilBrown <neil@brown.name>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 01 Jul 2019 10:43:07 +1000
Subject: [PATCH 0/2] staging: update mt7621 dts for some recent driver changes
Message-ID: <156194175140.1430.2478988354194078582.stgit@noble.brown>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The mt7621 MMC driver was recently removed from staging due to
copyright concerns.  Since then drivers/mmc/host/mtk-sd.c has been
enhanced to work with the mt7621 IP.  The first patch updates
the dts file to match this driver.

Earlier, the drivers/net/ethernet/mediatek/ driver was enhanced
to work with mt7621 hardware and the mt7621-eth driver was removed
from staging.  The second patch enhances the mt7621.dtsi to better
support this driver and particularly to allow the second network port
to be used in at least one of its possible configurations.

Thanks,
NeilBrown

---

NeilBrown (2):
      staging: mt7621-dts: update sdhci config.
      staging: mt7621-dts: add support for second network interface


 drivers/staging/mt7621-dts/Kconfig     |    7 ++++
 drivers/staging/mt7621-dts/Makefile    |    1 +
 drivers/staging/mt7621-dts/gbpc1.dts   |    2 +
 drivers/staging/mt7621-dts/gbpc2.dts   |   21 +++++++++++++
 drivers/staging/mt7621-dts/mt7621.dtsi |   53 +++++++++++++++++++++++++++++---
 5 files changed, 77 insertions(+), 7 deletions(-)
 create mode 100644 drivers/staging/mt7621-dts/gbpc2.dts

--
Signature

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
