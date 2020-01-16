Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B70F813E468
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 18:08:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 895EB86BDB;
	Thu, 16 Jan 2020 17:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lk9222Q0H9ya; Thu, 16 Jan 2020 17:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4EDBF86A4F;
	Thu, 16 Jan 2020 17:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E79A41BF2B0
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:08:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E4A5686388
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:08:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9sHH5OGIAzq for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 17:08:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 35DBD86502
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 17:08:07 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2C4F2467C;
 Thu, 16 Jan 2020 17:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194487;
 bh=mpGL97m6k814QXjnL2ki81L3W3OZi3I9xyhDVPmMuY8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SbaaxJ3Q+Jzm0nOtelDq9GMhzjTvOZUJg06BXlhfCkgz/SStqP2ZKyJpwLWAn8Fav
 MTfyZ/F9b9zubMqRpCojSSbfCHd4JNESSd70INixALx1lr0j61Fydx4i77RNb2Pb/9
 idiy7S71KaIOgSioSGeq3LWK+U9KatuXU4zoLxYk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 387/671] media: Staging: media: Release the
 correct resource in an error handling path
Date: Thu, 16 Jan 2020 12:00:25 -0500
Message-Id: <20200116170509.12787-124-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

[ Upstream commit 3b6471c7becd06325eb5e701cc2602b2edbbc7b6 ]

'res' is reassigned several times in the function and if we 'goto
error_unmap', its value is not the returned value of 'request_mem_region()'
anymore.

Introduce a new 'struct resource *' variable (i.e. res2) to keep a pointer
to the right resource, if needed in the error handling path.

Fixes: 4b4eda001704 ("Staging: media: Unmap and release region obtained by ioremap_nocache")

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 95942768639c..7bf2648affc0 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1777,7 +1777,7 @@ vpfe_ipipe_init(struct vpfe_ipipe_device *ipipe, struct platform_device *pdev)
 	struct media_pad *pads = &ipipe->pads[0];
 	struct v4l2_subdev *sd = &ipipe->subdev;
 	struct media_entity *me = &sd->entity;
-	struct resource *res, *memres;
+	struct resource *res, *res2, *memres;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 4);
 	if (!res)
@@ -1791,11 +1791,11 @@ vpfe_ipipe_init(struct vpfe_ipipe_device *ipipe, struct platform_device *pdev)
 	if (!ipipe->base_addr)
 		goto error_release;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 6);
-	if (!res)
+	res2 = platform_get_resource(pdev, IORESOURCE_MEM, 6);
+	if (!res2)
 		goto error_unmap;
-	ipipe->isp5_base_addr = ioremap_nocache(res->start,
-						resource_size(res));
+	ipipe->isp5_base_addr = ioremap_nocache(res2->start,
+						resource_size(res2));
 	if (!ipipe->isp5_base_addr)
 		goto error_unmap;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
