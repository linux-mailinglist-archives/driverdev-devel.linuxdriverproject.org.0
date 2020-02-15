Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C96D160028
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:42:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1490920401;
	Sat, 15 Feb 2020 19:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2P0LFiQyTxE; Sat, 15 Feb 2020 19:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 14B91203E8;
	Sat, 15 Feb 2020 19:42:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1FD21BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DEC7886F74
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFGceuFWSRLi for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:42:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 735C586F5C
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:42:34 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id n7so6760343pfn.0
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=Q4REyd3idXsfin5Vl+BX00/YFMs4hCR+L1l4RXoiLz5ZgfQjqJAQ9H/WYlB4kFFuUn
 2BeQ8QY0Xbo/AXVK6omCd2e8q2qM3Cf7RyjeCPn8Kp15Om5Loq757kfcG0ONVfrFKoYn
 X500fw4Ax9F2m4vpO2tnkg/tEeFSBPbInrWJL0siTj/b+oU6a69nJSvRG7wywi5TBf1K
 pa/1SBon8bHvTHbSxPS0PPHjECAALbiprnh983paW7opRn6p0DBqoDR8kBxgrbVNHI/r
 jF5I2qiraTuDyDa1lRgQiWVPPJR46f5SuX76CXRRP1tX1TtNNO2RZzCyDMlPpIr8ZX77
 4NYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=aAEGMnuwthVFSDduK9nnQnCVeZcIKyBvVojzwmrEcX2FJed3V3U1K4mdPBvT3on9sp
 Y3L+LA7VYSpqQvjC5xJfUywhdzJBb9xirAah0B99jUOzbP3nSZmRjQK2nEiL0+LCLpyc
 BlCPhg2un4JXouJw2sn+T/EsWVgaMSMuBW0IgWTz4iFGXDA/JHbwGOqbs3HnMwdBaqk+
 /xMIacHbIBaX/2MjZIMC+L7gDtnVAhIDV7Ct+bkY9EcE9zs6xHOstuXDdN1Rj93drniy
 WgpyyTC6MKRr2JhE83JlSkgUGhwLki4rU8B8rdhcAr3LTYoyPnHUCA4OEHxMYgpVLBm7
 Z5rA==
X-Gm-Message-State: APjAAAVpgH36F96HoyUtIJg4ayI3kGY9hDuRAN0tyzl5fI5p7XjL1PWK
 L589lXUYUP32qsLY1FjfQOk=
X-Google-Smtp-Source: APXvYqyqh6I7hOUhflWBDDniEbao7BhGpMR39ofFTVzbTV6SmesNF6l10KxundtimLZ6vZIQ42CIyA==
X-Received: by 2002:a63:6383:: with SMTP id x125mr7728780pgb.409.1581795754064; 
 Sat, 15 Feb 2020 11:42:34 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:33 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 10/17] media: imx7-media-csi: Create media links in
 bound notifier
Date: Sat, 15 Feb 2020 11:41:29 -0800
Message-Id: <20200215194136.10131-11-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Implement a notifier bound op to register media links from the remote
sub-device's source pad(s) to the CSI sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Rename notifier_to_dev() to imx7_csi_notifier_to_dev() and remove
  unnecessary inline. Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-media-csi.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index dc6d1a28fde7..cf9f675c53a3 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -196,6 +196,12 @@ struct imx7_csi {
 	struct completion last_eof_completion;
 };
 
+static struct imx7_csi *
+imx7_csi_notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx7_csi, notifier);
+}
+
 static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
 {
 	return readl(csi->regbase + offset);
@@ -1187,6 +1193,20 @@ static int imx7_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
 }
 
+static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				 struct v4l2_subdev *sd,
+				 struct v4l2_async_subdev *asd)
+{
+	struct imx7_csi *csi = imx7_csi_notifier_to_dev(notifier);
+	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
+	.bound = imx7_csi_notify_bound,
+};
+
 static int imx7_csi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1269,6 +1289,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
 
 	v4l2_async_notifier_init(&csi->notifier);
 
+	csi->notifier.ops = &imx7_csi_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
