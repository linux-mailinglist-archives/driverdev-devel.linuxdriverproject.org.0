Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB1382803
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55AF285B4A;
	Mon,  5 Aug 2019 23:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUJhEJD6gtet; Mon,  5 Aug 2019 23:35:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 402B885BCF;
	Mon,  5 Aug 2019 23:35:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0F8DE1BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 072788624E
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kR7vgme7Bjrj for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 82E8786180
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:35 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id m9so36921872pls.8
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bCNueNWeJXTLrTZ3Gue5cMu55WsUG1STmKF9FRV9s+k=;
 b=rIpRcB1BhG0BVBiNb6PGBxOSF1DpSDhe84KSk3pvLNQv3cUbn/23W6D3K/Zmjox+vX
 foyZFaKt89ShO7Iz6ACajUVuOCsCH0aKrxZ3R7i2U27rwESg+mXZuj+B1n/eUYZ9cXM9
 0kf1MgdxKLGEZb8fNcGz/zndSK5NAH4hNFqoCzv4ZO5ijR7C5LbnW6dfz0+AsXsdOj9A
 D6f83KMbyH6LX6ey0ZnClcPUmBVhLZsk2C2VpPfz6p3mH+PZvDUPMXF22lbiFL2hLmuE
 xOACOyVKgVhiqvrzjqdpSalDnRxmDUDB+0SzcsgrxwOMjR6i0wUxoT++O9I0zM6nIWMx
 0YJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bCNueNWeJXTLrTZ3Gue5cMu55WsUG1STmKF9FRV9s+k=;
 b=QwPNBhNctUmqAobDNxotAjtjAalFaFNo/2UbaMDbaX6CSXf5+tnIEUlma+RxIuYEP3
 /Fj/iCzMeTmIsEsma8nVH+svbkiQylmahndeEehm6m8Sc+gkQoHEILxOQOe4wUy5Uu45
 GVbaiOyHYazFSJbpO2rPeN57/xxmz9zN8ZNZgYVyOSfbiSO9UsD0KVhS1jScS8KPOzhr
 EHRWuAzGBexQRmpKOHBduwg2h/G78wOKeglT+LhG0BHD7buH0xr6+3Vsrkw9haLi9LzZ
 QTMkw+y9N9JHlKZGDowaacJA+agf8hunr3Rw1Mjx8lc+JERo/OW8SbSTyJRKwsyKND34
 2ZTg==
X-Gm-Message-State: APjAAAUfCfBS7uZrxsied3OJ0JNa/aakC1VHI6YHJhykFLgFy6N42BWr
 tTRRci15mPRSPdpQcDPdvO8=
X-Google-Smtp-Source: APXvYqxpbMjWVmnzuUM113Irj8RV4B5McZoB/4/bm7rnZLncgrGREH4kOM/mJnNymVLlq9X+TkbBzA==
X-Received: by 2002:a17:902:820c:: with SMTP id
 x12mr272388pln.216.1565048134995; 
 Mon, 05 Aug 2019 16:35:34 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:34 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 17/22] media: imx: csi: Embed notifier in struct csi_priv
Date: Mon,  5 Aug 2019 16:35:00 -0700
Message-Id: <20190805233505.21167-18-slongerbeam@gmail.com>
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

Embed the notifier in 'struct csi_priv', instead of dynamically allocating
it, to make it possible to retrieve csi_priv in a notifier callback op.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 25 +++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index e193f66fa230..b39d79e63ac2 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -58,6 +58,8 @@ struct csi_priv {
 	struct ipu_soc *ipu;
 	struct v4l2_subdev sd;
 	struct media_pad pad[CSI_NUM_PADS];
+	struct v4l2_async_notifier notifier;
+
 	/* the video device at IDMAC output pad */
 	struct imx_media_video_dev *vdev;
 	struct imx_media_fim *fim;
@@ -1895,31 +1897,28 @@ static int imx_csi_parse_endpoint(struct device *dev,
 
 static int imx_csi_async_register(struct csi_priv *priv)
 {
-	struct v4l2_async_notifier *notifier;
 	struct fwnode_handle *fwnode;
 	unsigned int port;
 	int ret;
 
-	notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
-	if (!notifier)
-		return -ENOMEM;
-
-	v4l2_async_notifier_init(notifier);
+	v4l2_async_notifier_init(&priv->notifier);
 
 	fwnode = dev_fwnode(priv->dev);
 
 	/* get this CSI's port id */
 	ret = fwnode_property_read_u32(fwnode, "reg", &port);
 	if (ret < 0)
-		goto out_free;
+		return ret;
 
 	ret = v4l2_async_notifier_parse_fwnode_endpoints_by_port(
-		priv->dev->parent, notifier, sizeof(struct v4l2_async_subdev),
+		priv->dev->parent, &priv->notifier,
+		sizeof(struct v4l2_async_subdev),
 		port, imx_csi_parse_endpoint);
 	if (ret < 0)
 		goto out_cleanup;
 
-	ret = v4l2_async_subdev_notifier_register(&priv->sd, notifier);
+	ret = v4l2_async_subdev_notifier_register(&priv->sd,
+						  &priv->notifier);
 	if (ret < 0)
 		goto out_cleanup;
 
@@ -1927,16 +1926,12 @@ static int imx_csi_async_register(struct csi_priv *priv)
 	if (ret < 0)
 		goto out_unregister;
 
-	priv->sd.subdev_notifier = notifier;
-
 	return 0;
 
 out_unregister:
-	v4l2_async_notifier_unregister(notifier);
+	v4l2_async_notifier_unregister(&priv->notifier);
 out_cleanup:
-	v4l2_async_notifier_cleanup(notifier);
-out_free:
-	kfree(notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 
 	return ret;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
