Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A741A3F25
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 05:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CDE287D13;
	Fri, 10 Apr 2020 03:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-qdH1tv4d2X; Fri, 10 Apr 2020 03:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7A8487A05;
	Fri, 10 Apr 2020 03:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6A331BF995
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C2AAA20530
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3mbfhntJRtW for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 03:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 369D420527
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 03:49:22 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1A70420A8B;
 Fri, 10 Apr 2020 03:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490562;
 bh=cD3HNfjxwqG1X/QHqJC2nXVmCHZlJSzV9ZXuWKVzoYA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UMpHauiMSIjIWxAbN3dKrrk9e1HJ01gM98LTQ4j+xvVH2UKY2Y5Nb+gWWG0f56VeO
 28jVjayFiFXp4H+AxQhGeHG6uvvdJ9HmDJV3f2oIGwaKaiY/iCeSYWU47wZ2BDuu3Z
 xSoMPUkqIHeEqCi4/s/Wi5WsIvWrSGo/YOGb1ap8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 09/46] media: imx: imx7-media-csi: Fix video field
 handling
Date: Thu,  9 Apr 2020 23:48:32 -0400
Message-Id: <20200410034909.8922-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034909.8922-1-sashal@kernel.org>
References: <20200410034909.8922-1-sashal@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

[ Upstream commit f7b8488bd39ae8feced4dfbb41cf1431277b893f ]

Commit 4791bd7d6adc ("media: imx: Try colorimetry at both sink and
source pads") reworked the way that formats are set on the sink pad of
the CSI subdevice, and accidentally removed video field handling.
Restore it by defaulting to V4L2_FIELD_NONE if the field value isn't
supported, with the only two supported value being V4L2_FIELD_NONE and
V4L2_FIELD_INTERLACED.

Fixes: 4791bd7d6adc ("media: imx: Try colorimetry at both sink and source pads")
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx7-media-csi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index bfd6b5fbf4841..d24897d06947f 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -1009,6 +1009,7 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
 		sdformat->format.width = in_fmt->width;
 		sdformat->format.height = in_fmt->height;
 		sdformat->format.code = in_fmt->code;
+		sdformat->format.field = in_fmt->field;
 		*cc = in_cc;
 
 		sdformat->format.colorspace = in_fmt->colorspace;
@@ -1023,6 +1024,9 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
 							 false);
 			sdformat->format.code = (*cc)->codes[0];
 		}
+
+		if (sdformat->format.field != V4L2_FIELD_INTERLACED)
+			sdformat->format.field = V4L2_FIELD_NONE;
 		break;
 	default:
 		return -EINVAL;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
