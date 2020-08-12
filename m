Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8912D242C75
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BB9486A54;
	Wed, 12 Aug 2020 15:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f0DQy5bxs6nt; Wed, 12 Aug 2020 15:57:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E79186A90;
	Wed, 12 Aug 2020 15:57:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE8CB1BF9B5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB6EE87E5C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EDdCYVDUWr9X for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E73387B05
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4922322D04;
 Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=Gpq5ix4ezroTt36b6Z1RuaTnByqc8WPwI1MtpDCopoQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ecVF+S00hrK+LBZLxx3QnnwVH38ERNtt8aS/rX4YLc8RunTl0o0WHK3SLFkDRXF2A
 hSw0e9HIAlhJo2xqrsrWtZDqXI41h/tMpaVc5rq5zM5StlJITXZmQ4lSvrxg6K0UmB
 TY39DkVUGrQsGz/b5gzml+kyWoNr5qV+OsZPOmT8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7a-005t6T-CZ; Wed, 12 Aug 2020 17:56:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 20/44] staging: mfd: hi6421-spmi-pmic: fix some coding style
 issues
Date: Wed, 12 Aug 2020 17:56:30 +0200
Message-Id: <867108ee50302f933fade56f8c25ef775ade36b3.1597247164.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Checkpatch complains about some minor issues inside this
driver that were not addressed by the previous patch.

Address them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 4 ++--
 include/linux/mfd/hi6421-spmi-pmic.h        | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 09cedfa1e4bb..d8b84d64041e 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -189,7 +189,7 @@ static struct irq_chip hi6421_spmi_pmu_irqchip = {
 };
 
 static int hi6421_spmi_irq_map(struct irq_domain *d, unsigned int virq,
-			irq_hw_number_t hw)
+			       irq_hw_number_t hw)
 {
 	struct hi6421_spmi_pmic *pmic = d->host_data;
 
@@ -350,7 +350,7 @@ static int hi6421_spmi_pmic_probe(struct spmi_device *pdev)
 	 * The logic below will rely that the pmic is already stored at
 	 * drvdata.
 	 */
-	dev_dbg(&pdev->dev, "SPMI-PMIC: adding childs for %pOF\n",
+	dev_dbg(&pdev->dev, "SPMI-PMIC: adding children for %pOF\n",
 		pdev->dev.of_node);
 	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
 				   hi6421v600_devs, ARRAY_SIZE(hi6421v600_devs),
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index d12ad7484018..aeff96c4a37e 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -38,7 +38,8 @@ struct hi6421_spmi_pmic {
 	unsigned int				*irqs;
 	int					irqnum;
 	int					irqarray;
-	struct hi6421_spmi_irq_mask_info 	irq_mask_addr;
+
+	struct hi6421_spmi_irq_mask_info	irq_mask_addr;
 	struct hi6421_spmi_irq_info		irq_addr;
 };
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
