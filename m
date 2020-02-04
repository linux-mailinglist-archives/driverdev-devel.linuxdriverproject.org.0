Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049EA152367
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:49:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9ACE4872A6;
	Tue,  4 Feb 2020 23:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I+R6GLLTRfBT; Tue,  4 Feb 2020 23:49:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B52A8721E;
	Tue,  4 Feb 2020 23:49:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96EE71BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92F6081E9F
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n_SUWrr_uBuq for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F52C81A2F
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:48 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id d5so126435pjz.5
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=Le9ycugOfEEybykcT8+miCmVKrq1TITIUOBemZS+jQOP3orUFyi38fSpfiRSq1UyOB
 pf3wQI/DtHAfBlQpH/0VDZOe5UYWreuBz1Y/+MDCTgy6j66TIQr3MN4Vd0IB2qDRjGZi
 xAxZ/tExX08f3od/rBpZ1SHFML1yWq540pS4Wd8rvs6xrUurW1w2xy563mxmtgM7JPaV
 cq/cE4uhXMt7XyQ+SlAz9gA1yvX9f3sPhyUww6iz2tGkwvHyr3soulGOUCbbjfJhPJAZ
 ZNZlnK9SPDu6AXDVtKSgFlxbWa5feYE4EvPIKzlb1aDS98rtw7a3cMC1XvRijjJAF7hr
 eZMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=hNpqs0FZRKYvd0ZJo4Sjf4pnSRFCDBt75y+5yGG4AcfmnlLOQiTEGBOhiG94TMzGw1
 bQIm/MEBPPjYN953vK10YAcHAS7k5fE/PxKLb29szVsMcnGUlXWoHzMDXtX3zzetaJRf
 H37O3KhjNAuZoRpAtKoNUy7A7lZoXlZfvevKuGcZg2RTXJLmXZpu8QzxHefrR94v0lfd
 Wgtx4K6x2mBSeLTTO/3fqceNVgU+MTY58W9DCt3a2dTRJLYvSNOj4y0v3K2Fz38APlCO
 gfvFDljQZ/lvxOSLGfbie3htN6T+BAwFAxJ2adiS5N+PMtltRuDy5HLvPjOqVTiAdjXw
 Z7ag==
X-Gm-Message-State: APjAAAXSHjrOkdZWWr6DRqVLiFIjuyVeokSo7KybwMHHjZ6VUKKHHm/N
 1gzdkpM0R7JIxbnTVxa6x/YU6xmW
X-Google-Smtp-Source: APXvYqzd5F1QfdHZ4Puy966CryZKh3FhnnA+0FjfKGt35fUDUUvC8HOzxic58qwpCy2MTsi8+gEBzA==
X-Received: by 2002:a17:90a:cc02:: with SMTP id
 b2mr1960199pju.137.1580860187663; 
 Tue, 04 Feb 2020 15:49:47 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:47 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 08/17] media: imx: mipi csi-2: Create media links in bound
 notifier
Date: Tue,  4 Feb 2020 15:49:09 -0800
Message-Id: <20200204234918.20425-9-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
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
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link()
  that creates a single link.
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index e27a342751fc..fddf6388348a 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -91,6 +91,11 @@ static inline struct csi2_dev *sd_to_dev(struct v4l2_subdev *sdev)
 	return container_of(sdev, struct csi2_dev, sd);
 }
 
+static inline struct csi2_dev *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi2_dev, notifier);
+}
+
 /*
  * The required sequence of MIPI CSI-2 startup as specified in the i.MX6
  * reference manual is as follows:
@@ -584,6 +589,20 @@ static int csi2_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int csi2_notify_bound(struct v4l2_async_notifier *notifier,
+			     struct v4l2_subdev *sd,
+			     struct v4l2_async_subdev *asd)
+{
+	struct csi2_dev *csi2 = notifier_to_dev(notifier);
+	struct media_pad *sink = &csi2->sd.entity.pads[CSI2_SINK_PAD];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations csi2_notify_ops = {
+	.bound = csi2_notify_bound,
+};
+
 static int csi2_probe(struct platform_device *pdev)
 {
 	unsigned int sink_port = 0;
@@ -667,6 +686,8 @@ static int csi2_probe(struct platform_device *pdev)
 
 	v4l2_async_notifier_init(&csi2->notifier);
 
+	csi2->notifier.ops = &csi2_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(
 		&csi2->sd, &csi2->notifier, sizeof(struct v4l2_async_subdev),
 		&sink_port, 1, csi2_parse_endpoint);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
