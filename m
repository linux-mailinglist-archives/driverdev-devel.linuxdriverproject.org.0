Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A249A827F9
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3B9E87B3C;
	Mon,  5 Aug 2019 23:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HsUYZWywbHM8; Mon,  5 Aug 2019 23:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12A3987A96;
	Mon,  5 Aug 2019 23:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 505801BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D1B387A4F
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VS+u1m7YFy9Q for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4708878F7
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:30 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id r7so40423592pfl.3
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fq0ktF/hBsnVFU7IozmhPFjtW2ydpZCCyFzM6I7LgOw=;
 b=X1OFNeqhQV0f90G9Q7+G/pt7EmUwrtUkbHW/9JOGxoTbmYiXMk1Gj8dkdpGlNnMIGU
 wlOOqDsjYDIbpNdCyuIysrh8YqS3FTQHYSEsfxu6VJSZV5FBXrd9ZVMZkzOSiUR3yA7q
 EAktoUHQQMN5VidRCbgrtsBJqlD4u9AH8Dm6kJwWq5rluZLYfKVE6zRJIScYE3HNRgY2
 xXDcJi1j75wi81PTvQQXY3CRCCF1fL1MkxWwNbdulab2B9AxUf4/X8cRgu5k9ittbDTD
 fXbDLmVbTjoaPuzBDLcfgAcjPvA4XeY6rSQEgAl2eIpxNNDhoQSNJUtKymgqCZv9GaaG
 30JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fq0ktF/hBsnVFU7IozmhPFjtW2ydpZCCyFzM6I7LgOw=;
 b=iDibg/xnDs8OSWUkHPyBD0Qs5VEH33t0+lv2KnQUtwS52zRxb30GLF3oqKW97U9vP+
 sRw18AIrMx0BJ4+PgeCgnt/MDQZwGSdowXI17DsZkHa/n3wiRSaVT4ya3vSSZc5+ch1G
 WmTUz/CBGc50LW6/fnZjIe12QQJG17i4oi9sKWtWKylncrGioJOKifxQGtJ+9tBiye8h
 X4gJfwfI4UbMwHRs6xFRWs/oAhtW5j54wi01kJuZc13Feo80HPJjsSBj5/IXr9KRba5S
 ofML50g6Lo4AhgEMbREjfNnnOsSqrLmw/zP1PYlxSl0ngWH14dPBZfevO7ip7HMtdGKm
 V8KA==
X-Gm-Message-State: APjAAAUMSk1miFGWdROBtJ2ir77gIlNAL/oPJpCXrwZaooxZyWDEDL1D
 zutHdg049bYOLKJGkWbxrvU=
X-Google-Smtp-Source: APXvYqz//7Zz8md/vVO2OPMxigo9UdlkkrkEJTsuzTyBl7CXjyfMV9TJYqhZbR9u7wNriFPY1YaD/w==
X-Received: by 2002:a17:90a:cb81:: with SMTP id a1mr189808pju.81.1565048130114; 
 Mon, 05 Aug 2019 16:35:30 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:29 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 13/22] media: imx: mipi csi-2: Create media links in bound
 notifier
Date: Mon,  5 Aug 2019 16:34:56 -0700
Message-Id: <20190805233505.21167-14-slongerbeam@gmail.com>
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
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index 408ee2765e77..5b2258156781 100644
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
@@ -573,6 +578,23 @@ static int csi2_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int csi2_notify_bound(struct v4l2_async_notifier *notifier,
+			     struct v4l2_subdev *sd,
+			     struct v4l2_async_subdev *asd)
+{
+	struct csi2_dev *csi2 = notifier_to_dev(notifier);
+	struct media_pad *sink = &csi2->sd.entity.pads[CSI2_SINK_PAD];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(csi2->dev),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations csi2_notify_ops = {
+	.bound = csi2_notify_bound,
+};
+
 static int csi2_probe(struct platform_device *pdev)
 {
 	unsigned int sink_port = 0;
@@ -646,6 +668,8 @@ static int csi2_probe(struct platform_device *pdev)
 
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
