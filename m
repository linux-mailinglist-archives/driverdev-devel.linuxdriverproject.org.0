Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D9245D65
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A18787CED;
	Mon, 17 Aug 2020 07:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MYeO7V6+h+Jw; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C494687D0D;
	Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D08D1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5995587C83
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qb2lo3nSvINV for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 010988798E
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A96712078A;
 Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648276;
 bh=39nQdxVqTIxprGokq0YoxR93+Ex5c4kwWK7y065VEFw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iaHzcnvlkUpCUEXtN+1Kk1qBSussfsSm31fxsP1TntKi3r5lSNHK4NKjrQm939Eg9
 x9VuzdGr+VbY+GAciDolTX+yl40rp0mKBcTgQyydOxFLQdlBFxhoy3fSVK4PAPrA+D
 TLZwjBWCM5IufRUzQLTFL/G8PbYVmD4iLZhO4p5A=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIY-00BdjL-TO; Mon, 17 Aug 2020 09:11:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 04/44] staging: spmi: hisi-spmi-controller: fix a typo
Date: Mon, 17 Aug 2020 09:10:23 +0200
Message-Id: <49798ac555d498c0fd489567643c619c625360f5.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

chanel -> channel

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi-spmi-controller.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index bc6847f9a5e7..99cf757d76fe 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -306,7 +306,7 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	ret = of_property_read_u32(pdev->dev.of_node, "spmi-channel",
 				   &spmi_controller->channel);
 	if (ret) {
-		dev_err(&pdev->dev, "can not get chanel\n");
+		dev_err(&pdev->dev, "can not get channel\n");
 		return -ENODEV;
 	}
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
