Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464C2200B73
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 16:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46A23899F8;
	Fri, 19 Jun 2020 14:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7OY5kmSDZEkM; Fri, 19 Jun 2020 14:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C03E9899BD;
	Fri, 19 Jun 2020 14:30:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6D4C1BF860
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 14:30:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC04A8951F
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 14:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 96uSpyczVg9m for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 14:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ECFBF89514
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 14:30:16 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JEDCmA158837;
 Fri, 19 Jun 2020 14:30:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=rogk33tCLb714YF5tgoNqkyveFcOFQsCLb6Cz+GSq0k=;
 b=zV8TEMGvvNfbISMYwnSqPuACfelJaCsusMmgz6xP4P6Hv0fL0LnzGdgOVTYIItGtkVOx
 dSpLwOnTK6UmGibPbtXkSvYawRsrTWR09g4Qs9mige6QVGhujOKXWRFzOYa5nnZIGIkk
 bCqRI7oPs3eaCJkTUGD3rGwgAWv93XMFSjYfwf04/h70FUpDcWPWvxxVGqPF7N5FbY/d
 rRBrlirr/LWTU7pPzQ+1Pk5CRCswJG4ORHZvtJQQa2C09LyYBhvslZJQ1BEOqcRZXccl
 21Kx75qEn1jzBp/QRlTVKOmHlrpZcz7X7sxVt/rbq9982H5M63qQoKJsVj05dmI43gPp ZA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31qecm5jvm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Jun 2020 14:30:16 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05JE9PYR111479;
 Fri, 19 Jun 2020 14:30:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 31q66vm1rw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jun 2020 14:30:15 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05JEUE3V027999;
 Fri, 19 Jun 2020 14:30:14 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jun 2020 07:30:13 -0700
Date: Fri, 19 Jun 2020 17:30:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH] media: allegro: Fix some NULL vs IS_ERR() checks in probe
Message-ID: <20200619143007.GC267142@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9656
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 malwarescore=0
 clxscore=1011 adultscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006190106
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The devm_ioremap() function doesn't return error pointers, it returns
NULL on error.

Fixes: f20387dfd065 ("media: allegro: add Allegro DVT video IP core driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 70f133a842dd..3ed66aae741d 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -3065,9 +3065,9 @@ static int allegro_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 	regs = devm_ioremap(&pdev->dev, res->start, resource_size(res));
-	if (IS_ERR(regs)) {
+	if (!regs) {
 		dev_err(&pdev->dev, "failed to map registers\n");
-		return PTR_ERR(regs);
+		return -ENOMEM;
 	}
 	dev->regmap = devm_regmap_init_mmio(&pdev->dev, regs,
 					    &allegro_regmap_config);
@@ -3085,9 +3085,9 @@ static int allegro_probe(struct platform_device *pdev)
 	sram_regs = devm_ioremap(&pdev->dev,
 				 sram_res->start,
 				 resource_size(sram_res));
-	if (IS_ERR(sram_regs)) {
+	if (!sram_regs) {
 		dev_err(&pdev->dev, "failed to map sram\n");
-		return PTR_ERR(sram_regs);
+		return -ENOMEM;
 	}
 	dev->sram = devm_regmap_init_mmio(&pdev->dev, sram_regs,
 					  &allegro_sram_config);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
