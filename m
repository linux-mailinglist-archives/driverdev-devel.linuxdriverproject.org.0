Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A52F3189
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 15:33:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A95D8870AD;
	Thu,  7 Nov 2019 14:33:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KZsyFiixSs7; Thu,  7 Nov 2019 14:33:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EC188707A;
	Thu,  7 Nov 2019 14:33:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B76E41BF3D2
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B078C86FAD
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNfp4SNzg6Po for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:33:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6335486F8D
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 14:33:02 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 43DD08EECB916765CD18;
 Thu,  7 Nov 2019 22:32:58 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Thu, 7 Nov 2019
 22:32:50 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <perex@perex.cz>, <gregkh@linuxfoundation.org>, <tglx@linutronix.de>,
 <rfontana@redhat.com>, <yuehaibing@huawei.com>, <joe@perches.com>
Subject: [PATCH -next] staging: hp100: Use match_string() helper to simplify
 the code
Date: Thu, 7 Nov 2019 22:32:23 +0800
Message-ID: <20191107143223.44696-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

match_string() returns the array index of a matching string.
Use it instead of the open-coded implementation.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/hp/hp100.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 6ec78f5..e2f0b58 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -339,14 +339,11 @@ static __init int hp100_isa_probe1(struct net_device *dev, int ioaddr)
 	if (sig == NULL)
 		goto err;
 
-	for (i = 0; i < ARRAY_SIZE(hp100_isa_tbl); i++) {
-		if (!strcmp(hp100_isa_tbl[i], sig))
-			break;
-
-	}
+	i = match_string(hp100_isa_tbl, ARRAY_SIZE(hp100_isa_tbl), sig);
+	if (i < 0)
+		goto err;
 
-	if (i < ARRAY_SIZE(hp100_isa_tbl))
-		return hp100_probe1(dev, ioaddr, HP100_BUS_ISA, NULL);
+	return hp100_probe1(dev, ioaddr, HP100_BUS_ISA, NULL);
  err:
 	return -ENODEV;
 
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
