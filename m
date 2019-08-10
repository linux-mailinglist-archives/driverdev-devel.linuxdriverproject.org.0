Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B051288CF5
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Aug 2019 21:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35F5986793;
	Sat, 10 Aug 2019 19:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdT1cHC1PGsC; Sat, 10 Aug 2019 19:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FBB186777;
	Sat, 10 Aug 2019 19:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6F51BF357
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 19:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7B49D86457
 for <devel@linuxdriverproject.org>; Sat, 10 Aug 2019 19:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZiszBCb89xvP for <devel@linuxdriverproject.org>;
 Sat, 10 Aug 2019 19:32:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B0CD86233
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2019 19:32:12 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id 4so39296200pld.10
 for <devel@driverdev.osuosl.org>; Sat, 10 Aug 2019 12:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KVpggb07NcQVN8x+snzsUWt3OQHYfjx5+ahbazYc12I=;
 b=sJCJ6EkiH8aOP51sC8wSpJg0Asmed2klBTXhnnvdAj54b1sXTj4Z6P6S96DOZM1Uhx
 TO53sIBrvAoRVqWPnP5DaBGnI1lwyv/UtGNUN4S0oMw3lErLVywi2mz8UUP5iL42tuGb
 5r45oW5xdQV8RXoR/96gkElXQTCd/W7tMXSjpB1BSHJb2wgCNC4Ej5rCHQtkJ25c+g6Z
 ULxFUpWaVmct1iJ4RlZpKzLNSiqpGz9KqUuWb5K/83WboV++BvLSNGuHIf2KBJIBHv86
 tz5w1r0alo3fm1D8amdIsKscLgpO5+yR6WUfvhfSyKV0eeByjVH0L+MjyAo9fEffyRHr
 ohUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KVpggb07NcQVN8x+snzsUWt3OQHYfjx5+ahbazYc12I=;
 b=s7HbhlwPaf1t1MuXw7dJMOuxjMss+a1JaVDGQ1yD/QCjZFB7e9/6e/+nOSdKdolK6I
 mx8DVafQKHWZ/CT1CwrS+d3cJQ3iNg5/YPsD2IkYPWiP2kfYYk6vCZmv6TEe0w4bmhAp
 r/+g6Ge7Vi7Z++Zweqr2+0BunnP+YPo7Nf/QgIywWyCICqkBG6EDlVROobkrsN/w7QbQ
 6jpyWT9iQtdn8VGAEMPhyIgZdd50wFa5V87hTpN6IQn3XA3mweZcrFfZwuc61ovpP60q
 X2o5ryd7PjxbBxQuJ5Nqp98IRxA/+N2sWiaJmTCj6f8BdJtiiJWPMyQ8mjDgJ9XsObxG
 acAg==
X-Gm-Message-State: APjAAAUVcGEk7mt8r68t5ZBs0yWp5eSqOA7Ol+XZhi9Dr4Z1h8hDxpOY
 u48cuVhlQyyg3xSRDBLhwMI=
X-Google-Smtp-Source: APXvYqzkd5b+90LgBNpauykDy3L1MkKOV/hzPTu69N32A9nw7bXrhy2ca1krfQsJlf+WwR3rGRyTmA==
X-Received: by 2002:a17:902:ff05:: with SMTP id
 f5mr24637591plj.116.1565465531964; 
 Sat, 10 Aug 2019 12:32:11 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77]) by smtp.googlemail.com with ESMTPSA id
 z4sm156578574pfg.166.2019.08.10.12.32.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 12:32:11 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: imx: mipi csi-2: Release DPHY reset in s_power
Date: Sat, 10 Aug 2019 12:32:04 -0700
Message-Id: <20190810193204.25278-1-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
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
 open list <linux-kernel@vger.kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some CSI-2 transmitters may only set their data lanes to LP-11 state for
a very short time after being powered on, after which they transition
the lanes to high speed mode.

If that occurs, the lanes will likely be in HS mode long before the imx6
DPHY receiver is initialized and brought out of reset at stream on.
According to the imx6 reference manual, the lanes need to be in LP-11
state at least for some period after the DPHY reset is released. This
might mean that the state machine in the DPHY core (a Synopsys DesignWare
core) needs to detect a LP-11 to HS transition on the lanes before it can
proceed to detect a clock on the clock lane and begin to accept packets.

In an attempt to accommodate such sensors, carry out steps 1-5 in the
s_power op (moved out of s_stream op). This moves steps 1-5 closer in
time to after the sensor is powered ON by v4l2_pipeline_pm_use(), and
provides a better chance that the receiver DPHY will catch an early
LP-11 to HS transition.

This works because the graph walk stack used by v4l2_pipeline_pm_use()
is setup such that the transmitter s_power op is called immediately
before the receiver's s_power op.

For sensors that can persist LP-11 state until stream on, then this
should still work fine. The receiver will detect the HS transition
at step 6, when streaming is enabled at the transmitter.

Tested on imx6q SabreSD with OV5640.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 93 +++++++++++++++++-----
 1 file changed, 73 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index f29e28df36ed..06345de9f060 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -47,6 +47,7 @@ struct csi2_dev {
 
 	struct v4l2_mbus_framefmt format_mbus;
 
+	int                     power_count;
 	int                     stream_count;
 	struct v4l2_subdev      *src_sd;
 	bool                    sink_linked[CSI2_NUM_SRC_PADS];
@@ -113,9 +114,10 @@ static inline struct csi2_dev *sd_to_dev(struct v4l2_subdev *sdev)
  * 7. CSI2 Controller programming - Read the PHY status register (PHY_STATE)
  *    to confirm that the D-PHY is receiving a clock on the D-PHY clock lane.
  *
- * All steps 3 through 7 are carried out by csi2_s_stream(ON) here. Step
- * 6 is accomplished by calling the source subdev's s_stream(ON) between
- * steps 5 and 7.
+ * Steps 3 through 5 are carried out by csi2_s_power(ON) here.
+ *
+ * Steps 6 and 7 are carried out by stream(ON) here. Step 6 is accomplished
+ * by calling the source subdev's s_stream(ON).
  */
 
 static void csi2_enable(struct csi2_dev *csi2, bool enable)
@@ -295,7 +297,7 @@ static void csi2ipu_gasket_init(struct csi2_dev *csi2)
 	writel(reg, csi2->base + CSI2IPU_GASKET);
 }
 
-static int csi2_start(struct csi2_dev *csi2)
+static int csi2_power_on(struct csi2_dev *csi2)
 {
 	int ret;
 
@@ -320,41 +322,87 @@ static int csi2_start(struct csi2_dev *csi2)
 	if (ret)
 		goto err_assert_reset;
 
+	return 0;
+
+err_assert_reset:
+	csi2_enable(csi2, false);
+err_disable_clk:
+	clk_disable_unprepare(csi2->pix_clk);
+	return ret;
+}
+
+static void csi2_power_off(struct csi2_dev *csi2)
+{
+	csi2_enable(csi2, false);
+	clk_disable_unprepare(csi2->pix_clk);
+}
+
+static int csi2_stream_on(struct csi2_dev *csi2)
+{
+	int ret;
+
 	/* Step 6 */
 	ret = v4l2_subdev_call(csi2->src_sd, video, s_stream, 1);
 	ret = (ret && ret != -ENOIOCTLCMD) ? ret : 0;
 	if (ret)
-		goto err_assert_reset;
+		return ret;
 
 	/* Step 7 */
 	ret = csi2_dphy_wait_clock_lane(csi2);
 	if (ret)
-		goto err_stop_upstream;
-
-	return 0;
+		v4l2_subdev_call(csi2->src_sd, video, s_stream, 0);
 
-err_stop_upstream:
-	v4l2_subdev_call(csi2->src_sd, video, s_stream, 0);
-err_assert_reset:
-	csi2_enable(csi2, false);
-err_disable_clk:
-	clk_disable_unprepare(csi2->pix_clk);
 	return ret;
 }
 
-static void csi2_stop(struct csi2_dev *csi2)
+static void csi2_stream_off(struct csi2_dev *csi2)
 {
 	/* stop upstream */
 	v4l2_subdev_call(csi2->src_sd, video, s_stream, 0);
-
-	csi2_enable(csi2, false);
-	clk_disable_unprepare(csi2->pix_clk);
 }
 
 /*
  * V4L2 subdev operations.
  */
 
+static int csi2_s_power(struct v4l2_subdev *sd, int on)
+{
+	struct csi2_dev *csi2 = sd_to_dev(sd);
+	int ret = 0;
+
+	mutex_lock(&csi2->lock);
+
+	if (!csi2->src_sd) {
+		ret = -EPIPE;
+		goto out;
+	}
+
+	/*
+	 * power on/off only if power_count is going from
+	 * 0 to 1 / 1 to 0.
+	 */
+	if (csi2->power_count != !on)
+		goto update_count;
+
+	dev_dbg(csi2->dev, "power %s\n", on ? "ON" : "OFF");
+
+	if (on)
+		ret = csi2_power_on(csi2);
+	else
+		csi2_power_off(csi2);
+	if (ret)
+		goto out;
+
+	/* Update the power count. */
+update_count:
+	csi2->power_count += on ? 1 : -1;
+	if (csi2->power_count < 0)
+		csi2->power_count = 0;
+out:
+	mutex_unlock(&csi2->lock);
+	return ret;
+}
+
 static int csi2_s_stream(struct v4l2_subdev *sd, int enable)
 {
 	struct csi2_dev *csi2 = sd_to_dev(sd);
@@ -385,9 +433,9 @@ static int csi2_s_stream(struct v4l2_subdev *sd, int enable)
 
 	dev_dbg(csi2->dev, "stream %s\n", enable ? "ON" : "OFF");
 	if (enable)
-		ret = csi2_start(csi2);
+		ret = csi2_stream_on(csi2);
 	else
-		csi2_stop(csi2);
+		csi2_stream_off(csi2);
 	if (ret)
 		goto out;
 
@@ -528,6 +576,10 @@ static const struct media_entity_operations csi2_entity_ops = {
 	.link_validate = v4l2_subdev_link_validate,
 };
 
+static const struct v4l2_subdev_core_ops csi2_core_ops = {
+	.s_power = csi2_s_power,
+};
+
 static const struct v4l2_subdev_video_ops csi2_video_ops = {
 	.s_stream = csi2_s_stream,
 };
@@ -539,6 +591,7 @@ static const struct v4l2_subdev_pad_ops csi2_pad_ops = {
 };
 
 static const struct v4l2_subdev_ops csi2_subdev_ops = {
+	.core = &csi2_core_ops,
 	.video = &csi2_video_ops,
 	.pad = &csi2_pad_ops,
 };
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
