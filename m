Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A54160016
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:42:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 812E78672E;
	Sat, 15 Feb 2020 19:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fw0lSSR1F0Y3; Sat, 15 Feb 2020 19:42:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A5F9864D0;
	Sat, 15 Feb 2020 19:42:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FAC41BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 770738647E
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M2sm6Z-V1pCd for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:42:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D0FB86448
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:42:04 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id dw13so5440788pjb.4
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jUynGWRf9sI6R88VN+A+Lof5pz2eSFUmaeoDgeZz6dI=;
 b=qLysQWk5SYZ55QqddLtEU76Z409wNZHKquXGyoCZpLPuEJPzp/2RbOtagSJVABRksj
 z+Gs4VaaX8aOCJzT5Tb1fS+Odh+uWmg6PmM47H24DB47abl6lHdzopFVrR28GkK5AigG
 slashyVT6yPZ8h2WMCrKKgktYLPJAt6VMX2z8EAaf3H0nKG+WiD1te2vxGi4eCl/cl2t
 XNwCUuUOah75Fjgjz5EAlUGuxlR9tT+OV17gNfGfVBZenTuLTSMnQMyLnePkJt8hNqGS
 v/jiGNnBHv2xLKdrtSYFmnslBN3iSXfUVSmFdSCi6OS1TczRzGeAQgpEfWAaFXrSisDe
 N5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jUynGWRf9sI6R88VN+A+Lof5pz2eSFUmaeoDgeZz6dI=;
 b=InntECn1QzGATF3z1HlXiJj2Ll6cM1/OrmNpvwmPyJy6a32sMtY815uGuMKYRLIT9Y
 mskhtsau0AUyHTWt5U8+ynwLA3piqdWc0x1mtL/S0B0AAQUB7Zw8sfpTHsHmFOWVGfY9
 rmJ4TriS+eIHvcFYOfTKvCwPSWfzp5nc5jUjXihnI7bWun26L1zQOjoEUJvwokTjuwxV
 JxCxe5jknnQvmtW1KzSj+mRFZPGqtbNn/wzGNytjmAztlUqI6UfIUrEfTOHE+0/Rvmsb
 xL9CyHmc6k1iTFCoUPEXmRWiWPQgs+0FuYeULGmKrg6Iq0/jF8agqHvhD8O17YhCj/qE
 vmiQ==
X-Gm-Message-State: APjAAAVTfaM2pF2ZYD7wPBYAKMEPDdFF913lr/S21a760JcKYFGUIlkI
 Kw2/CjD75Tey9K79Zo+Xhr8=
X-Google-Smtp-Source: APXvYqzurBpRUzzabVGLZS15rHlDxrlzaKiyn3tCFIaKBTM+bjQVEPxEFxKIX96q5RCvg//6Chc3qA==
X-Received: by 2002:a17:902:bf49:: with SMTP id
 u9mr9240587pls.199.1581795723793; 
 Sat, 15 Feb 2020 11:42:03 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:03 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 02/17] media: v4l2-fwnode: Pass notifier to
 v4l2_async_register_fwnode_subdev()
Date: Sat, 15 Feb 2020 11:41:21 -0800
Message-Id: <20200215194136.10131-3-slongerbeam@gmail.com>
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
 open list <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead of allocating a notifier in v4l2_async_register_fwnode_subdev(),
have the caller provide one. This allows the caller to implement
notifier ops (bind, unbind).

The caller is now responsible for first initializing its notifier with a
call to v4l2_async_notifier_init().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- added the missing calls to unregister/cleanup the new subdev notifiers.
  Reported by Rui Silva.
---
 drivers/media/platform/video-mux.c         |  8 +++++++-
 drivers/media/v4l2-core/v4l2-fwnode.c      | 11 +----------
 drivers/staging/media/imx/imx6-mipi-csi2.c |  7 ++++++-
 drivers/staging/media/imx/imx7-media-csi.c |  7 ++++++-
 drivers/staging/media/imx/imx7-mipi-csis.c |  9 ++++++++-
 include/media/v4l2-fwnode.h                | 12 ++++++++----
 6 files changed, 36 insertions(+), 18 deletions(-)

diff --git a/drivers/media/platform/video-mux.c b/drivers/media/platform/video-mux.c
index ddd0e338f9e4..3d2a5c2b4c08 100644
--- a/drivers/media/platform/video-mux.c
+++ b/drivers/media/platform/video-mux.c
@@ -21,6 +21,7 @@
 
 struct video_mux {
 	struct v4l2_subdev subdev;
+	struct v4l2_async_notifier notifier;
 	struct media_pad *pads;
 	struct v4l2_mbus_framefmt *format_mbus;
 	struct mux_control *mux;
@@ -354,8 +355,11 @@ static int video_mux_async_register(struct video_mux *vmux,
 	for (i = 0; i < num_input_pads; i++)
 		ports[i] = i;
 
+	v4l2_async_notifier_init(&vmux->notifier);
+
 	ret = v4l2_async_register_fwnode_subdev(
-		&vmux->subdev, sizeof(struct v4l2_async_subdev),
+		&vmux->subdev, &vmux->notifier,
+		sizeof(struct v4l2_async_subdev),
 		ports, num_input_pads, video_mux_parse_endpoint);
 
 	kfree(ports);
@@ -442,6 +446,8 @@ static int video_mux_remove(struct platform_device *pdev)
 	struct video_mux *vmux = platform_get_drvdata(pdev);
 	struct v4l2_subdev *sd = &vmux->subdev;
 
+	v4l2_async_notifier_unregister(&vmux->notifier);
+	v4l2_async_notifier_cleanup(&vmux->notifier);
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 
diff --git a/drivers/media/v4l2-core/v4l2-fwnode.c b/drivers/media/v4l2-core/v4l2-fwnode.c
index 6ece4320e1d2..ae2cc4d6faf6 100644
--- a/drivers/media/v4l2-core/v4l2-fwnode.c
+++ b/drivers/media/v4l2-core/v4l2-fwnode.c
@@ -1164,12 +1164,12 @@ int v4l2_async_register_subdev_sensor_common(struct v4l2_subdev *sd)
 EXPORT_SYMBOL_GPL(v4l2_async_register_subdev_sensor_common);
 
 int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
+				      struct v4l2_async_notifier *notifier,
 				      size_t asd_struct_size,
 				      unsigned int *ports,
 				      unsigned int num_ports,
 				      parse_endpoint_func parse_endpoint)
 {
-	struct v4l2_async_notifier *notifier;
 	struct device *dev = sd->dev;
 	struct fwnode_handle *fwnode;
 	int ret;
@@ -1181,12 +1181,6 @@ int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
 	if (!fwnode_device_is_available(fwnode))
 		return -ENODEV;
 
-	notifier = kzalloc(sizeof(*notifier), GFP_KERNEL);
-	if (!notifier)
-		return -ENOMEM;
-
-	v4l2_async_notifier_init(notifier);
-
 	if (!ports) {
 		ret = v4l2_async_notifier_parse_fwnode_endpoints(dev, notifier,
 								 asd_struct_size,
@@ -1211,15 +1205,12 @@ int v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
 	if (ret < 0)
 		goto out_unregister;
 
-	sd->subdev_notifier = notifier;
-
 	return 0;
 
 out_unregister:
 	v4l2_async_notifier_unregister(notifier);
 out_cleanup:
 	v4l2_async_notifier_cleanup(notifier);
-	kfree(notifier);
 
 	return ret;
 }
diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index cd3dd6e33ef0..c1d1afeea53a 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -35,6 +35,7 @@
 struct csi2_dev {
 	struct device          *dev;
 	struct v4l2_subdev      sd;
+	struct v4l2_async_notifier notifier;
 	struct media_pad       pad[CSI2_NUM_PADS];
 	struct clk             *dphy_clk;
 	struct clk             *pllref_clk;
@@ -636,8 +637,10 @@ static int csi2_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, &csi2->sd);
 
+	v4l2_async_notifier_init(&csi2->notifier);
+
 	ret = v4l2_async_register_fwnode_subdev(
-		&csi2->sd, sizeof(struct v4l2_async_subdev),
+		&csi2->sd, &csi2->notifier, sizeof(struct v4l2_async_subdev),
 		&sink_port, 1, csi2_parse_endpoint);
 	if (ret)
 		goto dphy_off;
@@ -658,6 +661,8 @@ static int csi2_remove(struct platform_device *pdev)
 	struct v4l2_subdev *sd = platform_get_drvdata(pdev);
 	struct csi2_dev *csi2 = sd_to_dev(sd);
 
+	v4l2_async_notifier_unregister(&csi2->notifier);
+	v4l2_async_notifier_cleanup(&csi2->notifier);
 	v4l2_async_unregister_subdev(sd);
 	clk_disable_unprepare(csi2->dphy_clk);
 	clk_disable_unprepare(csi2->pllref_clk);
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index db30e2c70f2f..dc6d1a28fde7 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -155,6 +155,7 @@
 struct imx7_csi {
 	struct device *dev;
 	struct v4l2_subdev sd;
+	struct v4l2_async_notifier notifier;
 	struct imx_media_video_dev *vdev;
 	struct imx_media_dev *imxmd;
 	struct media_pad pad[IMX7_CSI_PADS_NUM];
@@ -1266,7 +1267,9 @@ static int imx7_csi_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto free;
 
-	ret = v4l2_async_register_fwnode_subdev(&csi->sd,
+	v4l2_async_notifier_init(&csi->notifier);
+
+	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
 						imx7_csi_parse_endpoint);
@@ -1303,6 +1306,8 @@ static int imx7_csi_remove(struct platform_device *pdev)
 	v4l2_device_unregister(&imxmd->v4l2_dev);
 	media_device_cleanup(&imxmd->md);
 
+	v4l2_async_notifier_unregister(&csi->notifier);
+	v4l2_async_notifier_cleanup(&csi->notifier);
 	v4l2_async_unregister_subdev(sd);
 	v4l2_ctrl_handler_free(&csi->ctrl_hdlr);
 
diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 383abecb3bec..4c54456318ea 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -223,6 +223,7 @@ struct csi_state {
 	struct device *dev;
 	struct media_pad pads[CSIS_PADS_NUM];
 	struct v4l2_subdev mipi_sd;
+	struct v4l2_async_notifier notifier;
 	struct v4l2_subdev *src_sd;
 
 	u8 index;
@@ -883,7 +884,9 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 	if (ret)
 		return ret;
 
-	ret = v4l2_async_register_fwnode_subdev(mipi_sd,
+	v4l2_async_notifier_init(&state->notifier);
+
+	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
 						sizeof(struct v4l2_async_subdev),
 						&sink_port, 1,
 						mipi_csis_parse_endpoint);
@@ -1014,6 +1017,8 @@ static int mipi_csis_probe(struct platform_device *pdev)
 unregister_all:
 	mipi_csis_debugfs_exit(state);
 	media_entity_cleanup(&state->mipi_sd.entity);
+	v4l2_async_notifier_unregister(&state->notifier);
+	v4l2_async_notifier_cleanup(&state->notifier);
 	v4l2_async_unregister_subdev(&state->mipi_sd);
 disable_clock:
 	mipi_csis_clk_disable(state);
@@ -1101,6 +1106,8 @@ static int mipi_csis_remove(struct platform_device *pdev)
 	struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
 
 	mipi_csis_debugfs_exit(state);
+	v4l2_async_notifier_unregister(&state->notifier);
+	v4l2_async_notifier_cleanup(&state->notifier);
 	v4l2_async_unregister_subdev(&state->mipi_sd);
 
 	pm_runtime_disable(&pdev->dev);
diff --git a/include/media/v4l2-fwnode.h b/include/media/v4l2-fwnode.h
index f6a7bcd13197..b2b61e6c3769 100644
--- a/include/media/v4l2-fwnode.h
+++ b/include/media/v4l2-fwnode.h
@@ -375,6 +375,7 @@ int v4l2_async_notifier_parse_fwnode_sensor_common(struct device *dev,
  *					and parses fwnode endpoints
  *
  * @sd: pointer to struct &v4l2_subdev
+ * @notifier: the sub-device's notifier.
  * @asd_struct_size: size of the driver's async sub-device struct, including
  *		     sizeof(struct v4l2_async_subdev). The &struct
  *		     v4l2_async_subdev shall be the first member of
@@ -387,13 +388,15 @@ int v4l2_async_notifier_parse_fwnode_sensor_common(struct device *dev,
  *		    endpoint. Optional.
  *
  * This function is just like v4l2_async_register_subdev() with the
- * exception that calling it will also allocate a notifier for the
- * sub-device, parse the sub-device's firmware node endpoints using
- * v4l2_async_notifier_parse_fwnode_endpoints() or
+ * exception that calling it will also parse the sub-device's firmware
+ * node endpoints using v4l2_async_notifier_parse_fwnode_endpoints() or
  * v4l2_async_notifier_parse_fwnode_endpoints_by_port(), and
- * registers the sub-device notifier. The sub-device is similarly
+ * registers the sub-device's notifier. The sub-device is similarly
  * unregistered by calling v4l2_async_unregister_subdev().
  *
+ * The caller must first initialize the notifier with a call to
+ * v4l2_async_notifier_init().
+ *
  * While registered, the subdev module is marked as in-use.
  *
  * An error is returned if the module is no longer loaded on any attempts
@@ -401,6 +404,7 @@ int v4l2_async_notifier_parse_fwnode_sensor_common(struct device *dev,
  */
 int
 v4l2_async_register_fwnode_subdev(struct v4l2_subdev *sd,
+				  struct v4l2_async_notifier *notifier,
 				  size_t asd_struct_size,
 				  unsigned int *ports,
 				  unsigned int num_ports,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
