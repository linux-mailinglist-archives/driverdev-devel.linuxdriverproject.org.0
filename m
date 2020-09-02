Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 796A025B0D8
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B0B94228E2;
	Wed,  2 Sep 2020 16:11:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mjSxW9+Miz3l; Wed,  2 Sep 2020 16:11:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 06F97228D1;
	Wed,  2 Sep 2020 16:10:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 304571BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2DACD8506D
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wkIeopczyFmb for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05136864B8
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7F92221EE;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=Bybq2rNfz8+YFu+79t9vTEYCcLnK9U6RRVeZrJpy54M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zH/UCAIh8bJ9EuRI41MVaF3pj51wP/SxGs/N8KbuRrylHJyFovC5ocPUUQCVEpLo/
 fr3wQ0HUKt/nzEp7Jx5gJU+a251Y2RQwY58GYhJBqLZjNfCbB3bZHOYdjDtfvnxgCn
 UM1YrCjIzdOCDEruGClldRk3AxV16j9CgNNrxObU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tBP-Sq; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 37/38] media: atomisp: atomisp_gmin_platform: check before use
Date: Wed,  2 Sep 2020 18:10:40 +0200
Message-Id: <7778f1f6c8cbc303f6f7377e0daca28a6825f862.1599062230.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599062230.git.mchehab+huawei@kernel.org>
References: <cover.1599062230.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

solve this smatch warning:
	drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c:842 gmin_v1p8_ctrl() warn: variable dereferenced before check 'gs' (see line 832)

By moving the check to happen before its usage.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index c49d27038d27..8652f71dfff6 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -829,6 +829,9 @@ static int gmin_v1p8_ctrl(struct v4l2_subdev *subdev, int on)
 	int ret;
 	int value;
 
+	if (!gs || gs->v1p8_on == on)
+		return 0;
+
 	if (gs->v1p8_gpio >= 0) {
 		pr_info("atomisp_gmin_platform: 1.8v power on GPIO %d\n",
 			gs->v1p8_gpio);
@@ -839,8 +842,6 @@ static int gmin_v1p8_ctrl(struct v4l2_subdev *subdev, int on)
 			pr_err("V1P8 GPIO initialization failed\n");
 	}
 
-	if (!gs || gs->v1p8_on == on)
-		return 0;
 	gs->v1p8_on = on;
 
 	if (gs->v1p8_gpio >= 0)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
