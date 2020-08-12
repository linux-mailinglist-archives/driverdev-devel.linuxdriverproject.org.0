Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7768F242C81
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2644688252;
	Wed, 12 Aug 2020 15:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TuRHnKnXcwQh; Wed, 12 Aug 2020 15:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15B4288266;
	Wed, 12 Aug 2020 15:57:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD2831BF9B5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C93A986A79
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CRb9GTJT9qAd for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7BC8586A5D
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3728922B49;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=F4/0N358UMInRTChm1W025kSLWvagEEmCODOlEavrPA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Owpp0QA19AC4Hs0o7VUlHXmV0MZOhFhBA6a7EJpbjzEEB0OuGT0scQ+QtjzoYkbp6
 Mc8vtK35EgOjCFtd0vd1cLkRSreu4Gll4ZQlkDn3hHDeO2T0AqP1Ni7P07Sw97Dwy0
 Qc93PbwQv87Ixzq1es0BC6HP1MpUR2lVmbdBMpgE=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7a-005t6N-9b; Wed, 12 Aug 2020 17:56:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 18/44] staging: mfd: hi6421-spmi-pmic: cleanup OF properties
Date: Wed, 12 Aug 2020 17:56:28 +0200
Message-Id: <64e7e7d39b4fd738a9202d970b42b01b7bf49069.1597247164.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Simplify the names of the DT properties and do some cleanups,
in order to better document them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index f523b2d844b9..aed2d3ec2227 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -209,37 +209,37 @@ static int get_pmic_device_tree_data(struct device_node *np, struct hisi_pmic *p
 	int ret = 0;
 
 	/*get pmic irq num*/
-	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-num",
+	ret = of_property_read_u32_array(np, "irq-num",
 					 &pmic->irqnum, 1);
 	if (ret) {
-		pr_err("no hisilicon,hisi-pmic-irq-num property set\n");
+		pr_err("no irq-num property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
 
 	/*get pmic irq array number*/
-	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-array",
+	ret = of_property_read_u32_array(np, "irq-array",
 					 &pmic->irqarray, 1);
 	if (ret) {
-		pr_err("no hisilicon,hisi-pmic-irq-array property set\n");
+		pr_err("no irq-array property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
 
 	/*SOC_PMIC_IRQ_MASK_0_ADDR*/
-	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-mask-addr",
+	ret = of_property_read_u32_array(np, "irq-mask-addr",
 					 (int *)&pmic->irq_mask_addr, 2);
 	if (ret) {
-		pr_err("no hisilicon,hisi-pmic-irq-mask-addr property set\n");
+		pr_err("no irq-mask-addr property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
 
 	/*SOC_PMIC_IRQ0_ADDR*/
-	ret = of_property_read_u32_array(np, "hisilicon,hisi-pmic-irq-addr",
+	ret = of_property_read_u32_array(np, "irq-addr",
 					 (int *)&pmic->irq_addr, 2);
 	if (ret) {
-		pr_err("no hisilicon,hisi-pmic-irq-addr property set\n");
+		pr_err("no irq-addr property set\n");
 		ret = -ENODEV;
 		return ret;
 	}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
