Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 374F9152373
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 051818466D;
	Tue,  4 Feb 2020 23:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4QPIMVVb77I; Tue,  4 Feb 2020 23:49:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58C1C85C0B;
	Tue,  4 Feb 2020 23:49:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1CC1BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7FD5B8739A
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jFeHuenJGVmy for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F10387143
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:52 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id a6so74072plm.3
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nw6qFQx6S/L6ma/0AlsKxKIDrQ4PZDVJaM1fr3Im7gQ=;
 b=Yy9WKoJxny1WM1LTJAaHQp4AkTgd8LBI0xpYLY6Fn0oeSdfohwks8vumgGn8JP3Yj2
 +4hupFpmWJDqwsNDq4eQ/VCgwhYYJ6i2pr9H4QplI4Vw+QZKC09SCn5y7RB/PCD1ZVRG
 HXxnXpugQb3SFC8tfPrvcpwAnA8MLwgyuTp2Q1BdAfs7cAMfi2Jaowa0b9KSsECDGBjM
 Sya0BgFaa2vQEGhDhOjJoJ46panfmfwJgvYIjywdBpcZ18pznnsWs8zxyBSctFs0YgbM
 VovFpV/24b5dlIzNkjlJ0OkQc21k4vS6607CXahqymGABgwBU8pvIKVpBnIHLBVikYJW
 vHyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nw6qFQx6S/L6ma/0AlsKxKIDrQ4PZDVJaM1fr3Im7gQ=;
 b=LaJx1ZLEIH7+3rhywq47eF8DCS+6lGA+drRQV+cRtapvvIh3IAP2z1RwWso1pAYeZa
 VACNGLUpkx8XqIlqgyObjSahsK+EknF6+lmm7FfqzKBNZNWHXm31QkNLUp2hgYONeCds
 op3y0CAWZK95ntGddN8lEbZZ916I/HPQdlJpyxeoDwhrqPKb/P139yghJGX4+3EC7xpF
 bnuGi1s2HwopNeHrboasrBG5xU0oqAohgeaIjSKu8HFqB/dETsadCirQrElOOchu9GZR
 LBOzyFdyGPt39a/PgJKfFki0yhmupFakHk+8V3VhCawOYRd4ZFk9/txhbLBwlgSx5NJj
 Ve2w==
X-Gm-Message-State: APjAAAVUOb8B7BJiLhtGiZFyQra7XNFu2Kx6inC6Yqys0suA80uCVEmE
 VSz+6XkedgX74hE2/uoGRiI=
X-Google-Smtp-Source: APXvYqzubusBvsBD9wy7XWJhiFY4WOQKzM1XZxKRj5dG2YKTAV1RksFDtvGAJxFrohKb/059exTxcw==
X-Received: by 2002:a17:902:8549:: with SMTP id
 d9mr31416618plo.153.1580860191823; 
 Tue, 04 Feb 2020 15:49:51 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:51 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 11/17] media: imx: csi: Embed notifier in struct csi_priv
Date: Tue,  4 Feb 2020 15:49:12 -0800
Message-Id: <20200204234918.20425-12-slongerbeam@gmail.com>
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

Embed the notifier in 'struct csi_priv', instead of dynamically allocating
it, to make it possible to retrieve csi_priv in a notifier callback op.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 25 +++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index dc5fe25fe7b8..3e2afdd59276 100644
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
@@ -1896,31 +1898,28 @@ static int imx_csi_parse_endpoint(struct device *dev,
 
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
 
@@ -1928,16 +1927,12 @@ static int imx_csi_async_register(struct csi_priv *priv)
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
