Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3739282807
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCB2E863E8;
	Mon,  5 Aug 2019 23:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o9yj95F+pG0w; Mon,  5 Aug 2019 23:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 959F1862D2;
	Mon,  5 Aug 2019 23:35:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FB611BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A6ED85BCA
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I5Qqmvn1Ulxq for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A45ED84B23
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:36 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id z14so3285916pga.5
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6Pj12shXDJ0qL2ITkdFID+0sK7YPIfnJU0EODI45PAo=;
 b=P0cWEJqDtIxlI1iTv4y7nWfH9E/dxbKOHhDEh1Ldkd4KsNCON8XIrlTGdDK1ATCV24
 1pIOi/RmvDSo99JRk88cCOrbmxC7aRhJu7psaA0w/Wb8Dy7uQd0qAqeAWD6gS89htzum
 IXoJG5CORpjEXHBRY0klwJJh1HpapaZ7g5kv2Ar2lryCWFh4NwADK88QZxREjbpWskO1
 7iRKe9s9zr0BQS6lPdiqAHIyjO62zig/8ZcIipv999RP/bKmNDcwpPVac7YKd6ubANy3
 M8sIgODKgXP1t/GSK4n0bavVAMcyuHQzQnpD3Pg/Ld/IKwiHaxJMhawz31vUWPTDcSym
 W54w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6Pj12shXDJ0qL2ITkdFID+0sK7YPIfnJU0EODI45PAo=;
 b=FvmOHv7kqVtbT8a11ya7wkqpqQOczw4FwFEW/yk8d5ovSCrGiOyn5W2o7Y7nJhMwa5
 +g+RhFiRnWd1XUD73C/xUu3eoVOtJjTS0WCEisx54aLP1buPrPavWbZc82rlEwHDjvhS
 h0Q3oDTJ1o6o1yfofRvUd1mRJ0S9TQoCLvF4MUQTn9cRXhsRMJVeqYQkQbDLdjFwX5Lx
 Wc4oJV+hogca7hWesMSA1fOHgnmXLQcNi1I8W6iG/5a512bCCwRwVqZZBy41boayiqRN
 8Zehf4yi6DmAdFzpxfoIS30FM43FqIt6BH5KlPWjNXE27WC52+Ia0VMWNk1TEiWJ+Met
 vUAA==
X-Gm-Message-State: APjAAAX8PRZdQQcJSuU7IM98HxJD3i4Iu67PEhDlFRrVyPWq89pdVpG+
 YBqDDpx21DMaqmM6oI6BgKE=
X-Google-Smtp-Source: APXvYqwCuNAlXO9lVulSaYfkaEjh7QPRwoh7y+NSTuatvygZigIcX3cPqTy4WpLO+oFiGtP3uC0Vaw==
X-Received: by 2002:a17:90a:ca11:: with SMTP id
 x17mr194531pjt.107.1565048136137; 
 Mon, 05 Aug 2019 16:35:36 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:35 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 18/22] media: imx: csi: Create media links in bound notifier
Date: Mon,  5 Aug 2019 16:35:01 -0700
Message-Id: <20190805233505.21167-19-slongerbeam@gmail.com>
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
 drivers/staging/media/imx/imx-media-csi.c | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index b39d79e63ac2..37b10cbf3c1a 100644
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
@@ -1895,6 +1900,23 @@ static int imx_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -ENOTCONN;
 }
 
+static int imx_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				struct v4l2_subdev *sd,
+				struct v4l2_async_subdev *asd)
+{
+	struct csi_priv *priv = notifier_to_dev(notifier);
+	struct media_pad *sink = &priv->sd.entity.pads[CSI_SINK_PAD];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(priv->dev->parent),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations csi_notify_ops = {
+	.bound = imx_csi_notify_bound,
+};
+
 static int imx_csi_async_register(struct csi_priv *priv)
 {
 	struct fwnode_handle *fwnode;
@@ -1903,6 +1925,8 @@ static int imx_csi_async_register(struct csi_priv *priv)
 
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
