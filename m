Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E48119361
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:11:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 378D387CAE;
	Tue, 10 Dec 2019 21:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZ3JS0iwerh1; Tue, 10 Dec 2019 21:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C7B487C8A;
	Tue, 10 Dec 2019 21:11:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2037C1BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AF4A87C8B
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CFl3-Mi2+ipz for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:10:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CEA187C8A
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:10:59 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9241B246B8;
 Tue, 10 Dec 2019 21:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012259;
 bh=4AT+BhJk04uH2Tcdyxf4+IP04hgHCY4zWu3WRrHazF0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fziFEhL0rEKr08sgpZ/w3Ha1aiwS8uDZgXMnOyWheyn+4ZKHTE5ZFMHt2Io6mZRX5
 3ItYlQAVmcX1ztNAY5eYKyPjl2P13ve7A7pbntB/uoiK2nazvWtkzMcC5/oWF9B8Zd
 wx3sdrX1BldUpVWCqsn3XqsuqHOWcVEt3hvsFlVA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 205/350] media: staging/imx: Use a shorter name
 for driver
Date: Tue, 10 Dec 2019 16:05:10 -0500
Message-Id: <20191210210735.9077-166-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Fabio Estevam <festevam@gmail.com>

[ Upstream commit ce22c6f242b6d7b5e0318da2c92b5b00b5bbc698 ]

Currently v4l2-compliance tool returns the following output:

Compliance test for imx-media-captu device /dev/video0:

Driver Info:
        Driver name      : imx-media-captu
        Card type        : imx-media-capture
...

The driver name string is limited to 16 characters, so provide
a shorter name so that we can have a better output.

While at it, use the same shorter name for driver and card.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx-media-capture.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
index b33a07bc9105d..46576e32581f0 100644
--- a/drivers/staging/media/imx/imx-media-capture.c
+++ b/drivers/staging/media/imx/imx-media-capture.c
@@ -26,6 +26,8 @@
 #include <media/imx.h>
 #include "imx-media.h"
 
+#define IMX_CAPTURE_NAME "imx-capture"
+
 struct capture_priv {
 	struct imx_media_video_dev vdev;
 
@@ -69,8 +71,8 @@ static int vidioc_querycap(struct file *file, void *fh,
 {
 	struct capture_priv *priv = video_drvdata(file);
 
-	strscpy(cap->driver, "imx-media-capture", sizeof(cap->driver));
-	strscpy(cap->card, "imx-media-capture", sizeof(cap->card));
+	strscpy(cap->driver, IMX_CAPTURE_NAME, sizeof(cap->driver));
+	strscpy(cap->card, IMX_CAPTURE_NAME, sizeof(cap->card));
 	snprintf(cap->bus_info, sizeof(cap->bus_info),
 		 "platform:%s", priv->src_sd->name);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
