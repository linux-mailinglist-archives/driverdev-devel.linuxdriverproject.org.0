Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BA8152377
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:50:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA9ED850EA;
	Tue,  4 Feb 2020 23:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0_qcGnCdNdbV; Tue,  4 Feb 2020 23:50:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B90985951;
	Tue,  4 Feb 2020 23:50:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49DDD1BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 46C65870C7
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3K29wO0awtX0 for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1E8C87113
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:54 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id a33so3317pgm.5
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=iLQH3OQ/O/+RY2/knhPODGNM2ct4fcN0lZHWtdgDvI2We0LfUzXOKX2vqsi1rMDnBB
 0AGtySTTUvyreBqOa9GXwj6JmkE/8/4IpJ6keZb7o9GBZ6wTE5ycCUgUDkY8xwmsCVXk
 6RDR6faOd47TPhAdkgtuqahcRO3Fpz60TZTshVxVocsPQLNnIpVKiVk6pfb4ZcS67lhl
 Ex/1P5MByc6QhtVDhEzobTJ02ls08pPmY+FbOZumQ2xki8iWuXe71Lwl7EA9MBtL+eQ8
 qkVviCdflEt6ISteRSFbSoYbMllJGASrJr6ZZrVN6Cjgiam9C+ueat/yYvuBHYzSkZRj
 t5Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J4a12SBTuMD7atLLATUCugE0dEUcvKzeYrZ9OjbRkuY=;
 b=CVZhzpygam0g024rXxWHur2JQEhghzOKel5L6DDWQjJqhpnlgCMVhyIiFY3Q9aAg7W
 VKLcqma0MvpeRao4jEyfnJ6zpALSXHV/V4shbvWv9ukvGoZ61p6hzPiU3WhStjYMbCHM
 lBfxyrPrwFdZTrMOtU3ehKciaRmzqb7FcpKe8RTcq0F9ONRqvtZaPTcw1E9Iyjq3IYDa
 MlQ1JZSrghrB1rQZkH9RYz+UsFjn2Bv0IcdTTxgpL5ZuHCkp58Yb4cljGk08pPT/wzfD
 WW0ncuI9L2ucm09D5lOc6lRVnT56mzNtJo+MzyfkUFV3fPUlXQn89bouuE58+g8RQ4oL
 9/4w==
X-Gm-Message-State: APjAAAULFxDH7X4fnk+qQPU19Zsd9IAxPy8VEhkHWHjgUdjmQebTXJUz
 /wNxqR1WCIbHO5SzMHkNWhU=
X-Google-Smtp-Source: APXvYqzaJhAf6Pam+Cmnn2otTi81LaNdN5atab+90zvh137fxqERYqBVQ5oubpzGkJCsB0HBp4QJsw==
X-Received: by 2002:aa7:96b6:: with SMTP id g22mr21060221pfk.206.1580860194433; 
 Tue, 04 Feb 2020 15:49:54 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:54 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 13/17] media: imx: csi: Create media links in bound notifier
Date: Tue,  4 Feb 2020 15:49:14 -0800
Message-Id: <20200204234918.20425-14-slongerbeam@gmail.com>
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
