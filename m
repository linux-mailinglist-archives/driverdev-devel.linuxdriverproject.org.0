Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F1D32FB2A
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 15:27:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8A16843C5;
	Sat,  6 Mar 2021 14:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eT4Wlb1GnqZg; Sat,  6 Mar 2021 14:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D3F984365;
	Sat,  6 Mar 2021 14:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F46E1BF5DC
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 14:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F265742FB0
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 14:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=seznam.cz
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4JgZVH5TkYcP for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 14:27:26 +0000 (UTC)
X-Greylist: delayed 00:13:41 by SQLgrey-1.8.0
Received: from mxe2.seznam.cz (mxe2.seznam.cz [IPv6:2a02:598:2::34])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D59942FFD
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 14:27:25 +0000 (UTC)
Received: from email.seznam.cz
 by email-smtpc22a.ng.seznam.cz (email-smtpc22a.ng.seznam.cz [10.23.18.28])
 id 242d44d70f24fcd520745860; Sat, 06 Mar 2021 15:27:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seznam.cz; s=beta;
 t=1615040842; bh=6J8EgNHJnWziHVT9MNKzvy5L2WLLJqTPisB4qjoONwo=;
 h=Received:From:To:Cc:Subject:Date:Message-Id:X-Mailer:MIME-Version:
 Content-Transfer-Encoding;
 b=dYoyM918hyrJzGh8RLih2279bJHsdoEXAyXpS8Y+CwqAnzZ+ECPuAjxiqb1kUjDWM
 NO7kxxwmAT+z2SsCh38x9UuXmiAM7VZaEK68vnG/HoeTqnvKXoYH7yhekFKBI93tEV
 V7W1VHsryBdt5PJ+/g9AjOa2Zq8iohXaaeCdhfxs=
Received: from linux.local (cst-prg-27-252.cust.vodafone.cz [46.135.27.252])
 by email-relay10.ng.seznam.cz (Seznam SMTPD 1.3.124) with ESMTP;
 Sat, 06 Mar 2021 15:13:35 +0100 (CET)  
From: Giovanni Gherdovich <bobdc9664@seznam.cz>
To: George Hilliard <thirtythreeforty@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ralink-gdma: Check return code of device_reset
Date: Sat,  6 Mar 2021 15:13:22 +0100
Message-Id: <20210306141322.7516-1-bobdc9664@seznam.cz>
X-Mailer: git-send-email 2.26.2
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
Cc: Neil Brown <neil@brown.name>, Giovanni Gherdovich <bobdc9664@seznam.cz>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 John Crispin <blogic@openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The device_reset() function is marked as "__must_check", thus the static
analysis tool "sparse" complains that in ralink-gdma its return value is
ignored. Log a warning in case it returns an error.

Signed-off-by: Giovanni Gherdovich <bobdc9664@seznam.cz>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 655df317d0ee..3c26b665ee7c 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -833,7 +833,9 @@ static int gdma_dma_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	device_reset(&pdev->dev);
+	ret = device_reset(&pdev->dev);
+	if (ret)
+		dev_err(&pdev->dev, "failed to reset: %d\n", ret);
 
 	dd = &dma_dev->ddev;
 	dma_cap_set(DMA_MEMCPY, dd->cap_mask);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
