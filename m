Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB4AB468
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 21:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B165686F85;
	Sat, 27 Apr 2019 19:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9JCp-np-Ees; Sat, 27 Apr 2019 19:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DC7586E88;
	Sat, 27 Apr 2019 19:54:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07D031BF8A8
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 051A3853FC
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jTi4-RcyLUy7
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95A98853E3
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tgIWw9Z/6d6Qt18CGymWo8hq82QTc/DaKectH1YrHEg=; b=h6+OmbJznb/7RhbD/S8h8CY/4A
 2PZ2331V+zLIILIPbOU3gRsRAn5Ix0y1P07a9FOTxJtTLiMyQ5ng+DYDKDSlYJDelBhwUcMAfHZoq
 FFaAmdc8LE26VF/H5QYIXjxVNNsvK9TDb+M/if4CUXJ6vhcm8WaLXaYbxscGqXsCXlsme697xYwYr
 uFmxTcnyFLIMybrAwFKtV9uEn2cNtZ47oD6//zdJ63oWxksFFjgaOq141zDx1JEiYhV6DsK0J4SZg
 YQPiqY+EGZab0rmYbiVUTHCnvicHO+ThzDMs5b3/AZnyti1n8Gfnl+XiVHvqoAuHtLkW1Ha/1oWcv
 T/2a2gWw==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hKTOb-0002Tf-D1
 for driverdev-devel@linuxdriverproject.org; Sat, 27 Apr 2019 20:54:01 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 1/2] staging: kpc2000_spi: eliminated duplicate initialization
 of drvdata local variable.
Date: Sat, 27 Apr 2019 20:54:00 +0100
Message-Id: <20190427195401.12650-2-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190427195401.12650-1-jeremy@azazel.net>
References: <20190427195401.12650-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drvdata was being initialized to a particular value and then
having the same value assigned to it immediately afterwards.  Removed
the initializer.

Since the value assigned, pldev->dev.platform_data, is a pointer-to-
void, removed superfluous cast.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
index 63b4616bf538..e77f04bf02d9 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
@@ -407,14 +407,14 @@ kp_spi_cleanup(struct spi_device *spidev)
 static int
 kp_spi_probe(struct platform_device *pldev)
 {
-    struct kpc_core_device_platdata *drvdata = (struct kpc_core_device_platdata *)pldev->dev.platform_data;
+    struct kpc_core_device_platdata *drvdata;
     struct spi_master *master = spi_alloc_master(&pldev->dev, sizeof(struct kp_spi));
     struct kp_spi *kpspi;
     struct resource *r;
     int status = 0;
     int i;
 
-    drvdata = (struct kpc_core_device_platdata *)pldev->dev.platform_data;
+    drvdata = pldev->dev.platform_data;
     if (!drvdata){
         dev_err(&pldev->dev, "kp_spi_probe: platform_data is NULL!\n");
         return -ENODEV;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
