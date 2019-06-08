Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4F139E26
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:46:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4CC22152C;
	Sat,  8 Jun 2019 11:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mktgevoAbHuB; Sat,  8 Jun 2019 11:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F4A121519;
	Sat,  8 Jun 2019 11:46:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0107D1BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F22888675F
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EnwNFiLzDblR for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:46:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 698638608B
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:46:48 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87F24214AF;
 Sat,  8 Jun 2019 11:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559994408;
 bh=SODLOIdn9sI8wnlrPYxT8P0mdlJbHUjtV6JnXpCdjGU=;
 h=From:To:Cc:Subject:Date:From;
 b=zJsJ4KfVeDuxRb+iCEQjwV2KK3hv/J9VOGhE2uQtN3nd6W8FSRGfVJSn4OBjuawgs
 QzY0AC+h7ufZBBuMoDBPZSwP9ADqdxjNLvZtX6HcHjYnVTiRla0cYIKt9/+2DOTQhu
 ZIfcaZWU2YZu1T8rlgOZVJe3/VlkuO5OanOsHvmI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 01/31] Staging: vc04_services: Fix a couple error
 codes
Date: Sat,  8 Jun 2019 07:46:12 -0400
Message-Id: <20190608114646.9415-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit ca4e4efbefbbdde0a7bb3023ea08d491f4daf9b9 ]

These are accidentally returning positive EINVAL instead of negative
-EINVAL.  Some of the callers treat positive values as success.

Fixes: 7b3ad5abf027 ("staging: Import the BCM2835 MMAL-based V4L2 camera driver.")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 77a5d6f4e1eb..8a242f609d3b 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -579,7 +579,7 @@ static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
 				dev->colourfx.enable ? "true" : "false",
 				dev->colourfx.u, dev->colourfx.v,
 				ret, (ret == 0 ? 0 : -EINVAL));
-	return (ret == 0 ? 0 : EINVAL);
+	return (ret == 0 ? 0 : -EINVAL);
 }
 
 static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,
@@ -603,7 +603,7 @@ static int ctrl_set_colfx(struct bm2835_mmal_dev *dev,
 		 "%s: After: mmal_ctrl:%p ctrl id:0x%x ctrl val:%d ret %d(%d)\n",
 			__func__, mmal_ctrl, ctrl->id, ctrl->val, ret,
 			(ret == 0 ? 0 : -EINVAL));
-	return (ret == 0 ? 0 : EINVAL);
+	return (ret == 0 ? 0 : -EINVAL);
 }
 
 static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
