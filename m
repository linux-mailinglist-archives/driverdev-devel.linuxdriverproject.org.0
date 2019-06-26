Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D956379
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 09:37:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8FBD92154E;
	Wed, 26 Jun 2019 07:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsk74g2JX6k1; Wed, 26 Jun 2019 07:37:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72AE121537;
	Wed, 26 Jun 2019 07:37:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8AC511BF33A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:37:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 873AC86767
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ga1gpiB2hiqy for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 07:37:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8BD786717
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 07:37:15 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZcB4Qq6z8tny;
 Wed, 26 Jun 2019 09:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561534634; bh=Tdi2jY4l88PA0y9syOuNCHzmZ2oVKA8Jf+3pxxM9to4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=csQWE6VpPzvf+0af/ouT2pWjxuwxVmktNG/UwK34cL5Xs7bZKDbMGcGA+qjHJtyvY
 T+vU1dNMVPfyKBVF01ybgXJhlW5cAQhOnqqh2F12Xxu7J93Wt79uiMNp4LG3AQYI/r
 kf3egKaMEG1rEocCVgmehYSchY3V2z29UyB5ErONIktHinVdKw/0cRvNha1eZI5jB/
 kjEOxqX7T1OgWqeYw8sGfJExGLcgPnkWW5yx3HJ38v1TpVkKtQ9s5bzonR8Yjx5nI2
 /rZbcJNHlTeeoGC6KR/0a9V6vLNMVHEJEhOCS5hf5wY9fjxRdmaY9CWw4SyQRaJviA
 0PlP72MQJRvSg==
X-Virus-Scanned: amavisd-new at boeck5.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZc738j1z8sd8; 
 Wed, 26 Jun 2019 09:37:11 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 26 Jun 2019
 09:36:39 +0200
Received: from TroubleWorld.fritz.box (95.90.221.207) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 26 Jun 2019 09:36:38 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 7/8] staging: kpc2000: introduce __func__
Date: Wed, 26 Jun 2019 09:35:25 +0200
Message-ID: <20190626073531.8946-8-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626073531.8946-1-fabian.krueger@fau.de>
References: <20190625115251.GA28859@kadam>
 <20190626073531.8946-1-fabian.krueger@fau.de>
MIME-Version: 1.0
X-Originating-IP: [95.90.221.207]
X-ClientProxiedBy: MBX3.exch.uni-erlangen.de (10.15.8.45) To
 MBX3.exch.uni-erlangen.de (10.15.8.45)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Scheiderer <michael.scheiderer@fau.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of using the function name hard coded as string, using __func__
and the '%s'-placeholder will always give the current name of the
function. When renaming a function, the debugging-messages won't have to
be rewritten.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index eeb36d78402e..55bed617b0d8 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -428,13 +428,14 @@ kp_spi_probe(struct platform_device *pldev)
 
 	drvdata = pldev->dev.platform_data;
 	if (!drvdata) {
-		dev_err(&pldev->dev, "kp_spi_probe: platform_data is NULL!\n");
+		dev_err(&pldev->dev, "%s: platform_data is NULL\n", __func__);
 		return -ENODEV;
 	}
 
 	master = spi_alloc_master(&pldev->dev, sizeof(struct kp_spi));
 	if (master == NULL) {
-		dev_err(&pldev->dev, "kp_spi_probe: master allocation failed\n");
+		dev_err(&pldev->dev, "%s: master allocation failed\n",
+			__func__);
 		return -ENOMEM;
 	}
 
@@ -457,7 +458,8 @@ kp_spi_probe(struct platform_device *pldev)
 
 	r = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	if (r == NULL) {
-		dev_err(&pldev->dev, "kp_spi_probe: Unable to get platform resources\n");
+		dev_err(&pldev->dev, "%s: Unable to get platform resources\n",
+			__func__);
 		status = -ENODEV;
 		goto free_master;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
