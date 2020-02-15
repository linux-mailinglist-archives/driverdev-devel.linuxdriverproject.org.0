Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 504DD16002F
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:42:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8CD2203FF;
	Sat, 15 Feb 2020 19:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMV-Ce0R-Uwr; Sat, 15 Feb 2020 19:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7F135203F1;
	Sat, 15 Feb 2020 19:42:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 213C21BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D484203AB
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqXhDljI6K6M for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:42:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5412120399
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:42:43 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id j17so5489534pjz.3
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=o75oGSh6E0XVjA4LESDf8tAB+lWr3cpyJkllsXdLva6u+vxUPhSlBWaLo/x/P+coQ0
 ziHUMQE9mSHFbUqXNpueAU7rYdwQZcsotuBJ1vGWh5WG0+OKUyH3HHZE2XTSyHuRVfor
 xH1n+a+FB59ZD/4z0PMtQcKXSESzOsanihg72Dk1h72kmQxvTH3GLSkigEdt12b9D68v
 TgChzQjAdc/kh8S+v80oM171rQprxqHMoo2vza9Wc44hPW9e3dX/7tSSdmIGl0QT5Q2x
 FNBoVb77Gp/0iXKR2q2f9O9HcqDOa6eK0Uetm+qJN8pFihgZuow4TQ4O1fmPAf7wdOH/
 6MdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=MuWjWFpocfCIwW6wIbeAGMJ48+xPPgFGYn5KQdS4ZfI2K90vUNrpZkHzjyKKnmOvBQ
 hStgstuoePiaNDxMpZw3UIDHalBmXB4RosJbKkH1ygPXIVJ8SicuIcxmiO8kP4pb+MnD
 Te3gpQHTIAPDrvlp6oM7UNmixwD0Xv+V0DLcY4A4gzUPnPfGES6M+0ENxQVmHfeKvDQl
 rmV8A47NqDnMye2EAgvZANdJctfPf9Zmx7S1dyxGl/ghI806w//xqX4VCAL/UOjUXLnw
 Ksdhcfxz4jYmPkOZ318JFvEgtssmZVuGNYm5Xbh7HNcEbNqOLdPbqL4pRqbR8OKcfPDz
 y+Sg==
X-Gm-Message-State: APjAAAWq39txFrExkbdP8HoA8wY3+sKhoB9hC6r6uxnoxoi0NsBJ3QSh
 azZ8THJllA5T3mRUwa4ALcc=
X-Google-Smtp-Source: APXvYqwBQtTLbOCGEG6HDKeQQZqiXvk/KUtfD8Y/2evFbOxbwzS7XJFE9cf5Z4O10CVmJ4jiy5D9aw==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id
 x3mr10971588pjv.45.1581795762862; 
 Sat, 15 Feb 2020 11:42:42 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:42 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 13/17] media: imx: csi: Create media links in bound
 notifier
Date: Sat, 15 Feb 2020 11:41:32 -0800
Message-Id: <20200215194136.10131-14-slongerbeam@gmail.com>
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
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
---
 drivers/staging/media/imx/imx-media-csi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index bea6a70cc353..2a8f01375f78 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -120,6 +120,11 @@ static inline struct csi_priv *sd_to_dev(struct v4l2_subdev *sdev)
 	return container_of(sdev, struct csi_priv, sd);
 }
 
+static inline struct csi_priv *notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_priv, notifier);
+}
+
 static inline bool is_parallel_bus(struct v4l2_fwnode_endpoint *ep)
 {
 	return ep->bus_type != V4L2_MBUS_CSI2_DPHY;
@@ -1896,6 +1901,20 @@ static int imx_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -ENOTCONN;
 }
 
+static int imx_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				struct v4l2_subdev *sd,
+				struct v4l2_async_subdev *asd)
+{
+	struct csi_priv *priv = notifier_to_dev(notifier);
+	struct media_pad *sink = &priv->sd.entity.pads[CSI_SINK_PAD];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations csi_notify_ops = {
+	.bound = imx_csi_notify_bound,
+};
+
 static int imx_csi_async_register(struct csi_priv *priv)
 {
 	struct fwnode_handle *fwnode;
@@ -1904,6 +1923,8 @@ static int imx_csi_async_register(struct csi_priv *priv)
 
 	v4l2_async_notifier_init(&priv->notifier);
 
+	priv->notifier.ops = &csi_notify_ops;
+
 	fwnode = dev_fwnode(priv->dev);
 
 	/* get this CSI's port id */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
