Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F4C1A3EE5
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 05:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2FF3881BB;
	Fri, 10 Apr 2020 03:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmeQTw9SBuaU; Fri, 10 Apr 2020 03:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16B5F88164;
	Fri, 10 Apr 2020 03:47:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B460F1BF995
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B16F087A87
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4G0G3y9ijJ3e for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 03:46:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4130A87A47
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 03:46:44 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C1E721473;
 Fri, 10 Apr 2020 03:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490404;
 bh=fpNrlUUTJSSi/PQgLIPLo6vQitr48svphV9IQte/vuY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k1yYXVGZ30yvktbIV0HYRPY0jycocQPrHhNeVxt5Px1c0dwY34ZYUAw93D93XRYqJ
 IQwvMqQTe3zCTTTmllAPl0+s97T0zr6lmsh34W6eSTnSnHQxQevBXwYWPKw2dkqf8Q
 BqKWhvO8NNtuKblyHlWVdRx2HR/QDk/FxAMYr/24=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 07/68] media: staging: rkisp1: use consistent
 bus_info string for media_dev
Date: Thu,  9 Apr 2020 23:45:32 -0400
Message-Id: <20200410034634.7731-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Helen Koike <helen.koike@collabora.com>

[ Upstream commit 12d3d8090bc5e8cdda2f56caed2a2a0d70009456 ]

Media device is using a slightly different bus_info string
"platform: rkisp1" (with a space) instead of "platform:rkisp1" used by
the rest of rkisp1 code.
This causes errors when using v4l2-util tools that uses the bus_info
string to identify the device.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Signed-off-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/rkisp1/rkisp1-dev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index 558126e66465c..9b47f41b36e94 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -502,8 +502,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
 		sizeof(rkisp1->media_dev.model));
 	rkisp1->media_dev.dev = &pdev->dev;
-	strscpy(rkisp1->media_dev.bus_info,
-		"platform: " RKISP1_DRIVER_NAME,
+	strscpy(rkisp1->media_dev.bus_info, RKISP1_BUS_INFO,
 		sizeof(rkisp1->media_dev.bus_info));
 	media_device_init(&rkisp1->media_dev);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
