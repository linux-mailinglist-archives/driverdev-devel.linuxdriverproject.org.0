Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D33160022
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:42:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6884920400;
	Sat, 15 Feb 2020 19:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-avYsFnBYeY; Sat, 15 Feb 2020 19:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 399BA20104;
	Sat, 15 Feb 2020 19:42:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA4A71BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D72DA86F74
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLAIeSz-VXFu for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C6B286F5C
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:42:22 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a6so5153172plm.3
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=TlHXKi9U8uiS2fkx2BPSRGo8YoyUc6hHaVvyRF/ec4V6f3e2pH8hLJC5vKohYdzCWn
 cmCCKy/flrosl+0iPDsZgqdwIe/WgrsSGa//kLYqxgKrVxMWqWKotlrBSh6orJ7ljBYn
 oa+Bv5oefAEIME3xifu6PzgaINoMr2vpri9DEznRfFt34Pi5hSTp+5MRTqVP6jnRBHij
 4kBrKqeI+8u0bsVvSJ9fNm6YYDR/WwQHpfkQ5Ip57liK8BFvYVQNKb37cX5YxTpcjbY0
 B2FZctlpPUNGIrt//nirJ9SqU3qwnHkBersRETRBze0OHHVC4HNmIUbSKxzVnmjpkZGA
 PnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=j/2evpY7A0C04k+gk98K37iMCYdFmql/BmRTWB1csrg=;
 b=m6TAMWFl+BHjHpvnQoRrNSsszYgxJTgx6Tom5iMb1PDmaUu2fYG2Eo9CmcyaKomeX3
 hbBdZVg3AogkxKVSHwbuV/KSKXTkEYIGO7AVEcyFJ+fRSrqYfsYdW8cdqrINbkACjMGr
 EDdjaxQmZurAtit1j226sSyrQH6eqtrPrSAQ2Xo7D+xcyIizvAnbC6F6BVAb1lXLK9/B
 AkjgammUZooBR2jykdJ0505VW0zG7lXc2IuDyRQ6nnP0jT7DrB04Z8Wv8qiHucDFmfXH
 danbrULtwHqSkQAYm8AyF5vmy62gZBrcJBW11pQKAUGu9J6+AkTD4ngNl1Gvtem0Rfar
 Y4Yw==
X-Gm-Message-State: APjAAAXTNM9vKRY89ou1h3fYABDrqgks6n0VgVJrfx5CU+icOxWWRMsp
 PE5yusnF342wQHPnaocS/7bhCBV1MjU=
X-Google-Smtp-Source: APXvYqzMiPby3ABFgdEWNgjVyH0LYRY9+ahPWNR0Ixl7qauNjkEXOJEmC9DbQ6oumPosWwBAam5/vQ==
X-Received: by 2002:a17:902:ff11:: with SMTP id
 f17mr8898260plj.273.1581795741629; 
 Sat, 15 Feb 2020 11:42:21 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:21 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 08/17] media: imx: mipi csi-2: Create media links in
 bound notifier
Date: Sat, 15 Feb 2020 11:41:27 -0800
Message-Id: <20200215194136.10131-9-slongerbeam@gmail.com>
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
