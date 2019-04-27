Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83830B465
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 21:54:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD7FF860A2;
	Sat, 27 Apr 2019 19:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OW-HI9Tq9XEV; Sat, 27 Apr 2019 19:54:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C0A685475;
	Sat, 27 Apr 2019 19:54:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF5631BF28A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D73D722DC7
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QG06WgnJaqYB
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DD2821549
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 19:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=USF7LgGywSKxva/ukWGFpNzs9S2i20MX7rR0LPHRYkU=; b=Zy1nHUrHdmfa21EWMkP2BGXvbq
 O7cIt8vjlE6AlWPVzuEO2xgGrYMcbL6eWL1Dl4DGFq6MSIA89bO/+w3FdeX4Dxp3atospnaflY7ab
 Tbtbys7gNANJ3emfLrFId+YnrVoFZqU3Tm7+6qfbZ5rRauzgeoL6rXKMeVqDe2zQTH4PoRn9jzoU4
 +3Dz0xUJhse2KNsqHBoVwpQnWiOXTbIjRAxRk7h9TCPgR5sXuh958Hs4RAvuObczLwFJY6tTePbGN
 73Z0KI8O6iEs+aeEAKODywHTPjocOEPqG/33twLTVMK5rjnCljCy1D+1DUkOjI7xuFhK8P/GDlQ4Q
 cMttU0zA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hKTOb-0002Tf-H2
 for driverdev-devel@linuxdriverproject.org; Sat, 27 Apr 2019 20:54:01 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 2/2] staging: kpc2000_spi: eliminated duplicate initialization
 of master local variable.
Date: Sat, 27 Apr 2019 20:54:01 +0100
Message-Id: <20190427195401.12650-3-jeremy@azazel.net>
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

master was being initialized to a particular value and then having the
same value assigned to it immediately afterwards.  Removed the
initializer.

Since the value assigned to master was dynamically allocated, this fixes
a memory-leak.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc_spi/spi_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_spi/spi_driver.c b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
index e77f04bf02d9..c0999e080577 100644
--- a/drivers/staging/kpc2000/kpc_spi/spi_driver.c
+++ b/drivers/staging/kpc2000/kpc_spi/spi_driver.c
@@ -408,7 +408,7 @@ static int
 kp_spi_probe(struct platform_device *pldev)
 {
     struct kpc_core_device_platdata *drvdata;
-    struct spi_master *master = spi_alloc_master(&pldev->dev, sizeof(struct kp_spi));
+    struct spi_master *master;
     struct kp_spi *kpspi;
     struct resource *r;
     int status = 0;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
