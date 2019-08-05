Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 716C6827FC
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DA3F86274;
	Mon,  5 Aug 2019 23:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJv6ajZPISwX; Mon,  5 Aug 2019 23:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDC3E86180;
	Mon,  5 Aug 2019 23:35:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B73191BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B1EC885BCA
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cfr8Q3iwEXHz for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B15385B4A
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:33 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id f17so36429979pfn.6
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=80zZuvj+LjB7muc1lRSag1oD8GSQkupjbn/Cdl2Z1us=;
 b=m9+1Z16t7VCOSQhnktxeXV9tpgKBUk4i4dqvz1AUM2uLciXya2YHvUdXKQPg0nahrp
 Ls2DL2gNH8qovIXjYf3Ou4K404eivEwkhL8C+H1EjVAuTSOaDqxBoT63k1fy4l7adTzQ
 A8FZAf4UVV73lJCmwuyKdNwn+s/AHZiFq+Lfy7cgnR0uOjHpcX4BXip0NbwJaeDsALPC
 POF+Gbq9VZLBATGU2wh30Jfth38krYE1Tlw/3A1u8v02JkC6ye9uz57r4S+AHmfDMw/Q
 Sy8FW41P88uHNyoSkU+TtXlmHiDG1qLCBe2VO7hgLpTe/I1MZqUKNtKVgKmQSdu5Q+x8
 6Prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=80zZuvj+LjB7muc1lRSag1oD8GSQkupjbn/Cdl2Z1us=;
 b=nwXVtgVfcKYyfNdn6PhX2fecmvWZ1KGx6UDkw0Y7meBYde/MlwIoFGQq2b1C9IYyLS
 dT+Ke26eAB/OUtPfyD4Uky/nMciw1zeZEp2w+LlpKKUJ1fDFhR+JlaZW4tNHhVJZKyPh
 UKRT0/ANi4gCuXO6LwBcvY8W5c530y7lIlTQf3ls/gpAjMQaoGJh9w0G5BPN/O05U+l+
 6BUs54lbBDxCCbbaGVn5r+t6ydGD7mlF2P5CGE5Dea31nKY+DtsKpAHQDklr/eQGqFDM
 puOGD4PyF3sVaPSPmykEs4n96qegNm2/Jmab+AkXkIawDlrMPF6wWsfmIuvW/zidcDNl
 dyew==
X-Gm-Message-State: APjAAAXGxByHGwQUcoN3FCNINmRqiqQDGu63mIfjuokLoFeiAzvQYxGK
 6AWUssxL5ERbHrIlg4IQJYeS6Gtf
X-Google-Smtp-Source: APXvYqynuc9WSN7P4iFLSAjU9euUo/l2aSIhsQXrCHSGZFYLHfCOnZ0+BnlOVd8HxGgj63ZeqPGtRw==
X-Received: by 2002:aa7:9481:: with SMTP id z1mr560979pfk.92.1565048132680;
 Mon, 05 Aug 2019 16:35:32 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:32 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 15/22] media: imx7-media-csi: Create media links in bound
 notifier
Date: Mon,  5 Aug 2019 16:34:58 -0700
Message-Id: <20190805233505.21167-16-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190805233505.21167-1-slongerbeam@gmail.com>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
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
---
 drivers/staging/media/imx/imx7-media-csi.c | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index a1c96c52a606..f71ac485f780 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -196,6 +196,11 @@ struct imx7_csi {
 	struct completion last_eof_completion;
 };
 
+static inline struct imx7_csi *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx7_csi, notifier);
+}
+
 static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
 {
 	return readl(csi->regbase + offset);
@@ -1173,6 +1178,23 @@ static int imx7_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
 }
 
+static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				 struct v4l2_subdev *sd,
+				 struct v4l2_async_subdev *asd)
+{
+	struct imx7_csi *csi = notifier_to_dev(notifier);
+	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(csi->sd.dev),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
+	.bound = imx7_csi_notify_bound,
+};
+
 static int imx7_csi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1253,6 +1275,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
 
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
