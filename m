Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B35410254
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 00:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DD8B86BE1;
	Tue, 30 Apr 2019 22:25:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pL+2G9KOJtYY; Tue, 30 Apr 2019 22:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D558986A0C;
	Tue, 30 Apr 2019 22:25:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E31061BF357
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 22:25:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DD89C87A5F
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 22:25:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2AEDalAjoBmY for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 22:25:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EDA52879F5
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 22:25:40 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id o4so10847887wra.3
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 15:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kFFVCEKbOlmuK+M4O+sZWm0uKwVyhXJnCOKlV+9Ibzg=;
 b=qj2WKvZsnVatXrEGldmhqxrJV+K0l6MlqeJOxDL+cvbTMBv16kYKCur8/4nmkelW6j
 p2V6ByM3G/kesv7+Id28DWKq+9zdWSjm3vLcACa1VmMAiUxQVnEUzGVsah7P3tzmkdNO
 EjtDt7uwuvAs96WEuC8htDgCU8FcMF9Ik/ktkISeNQRzYrFzUqIJYJb1ZBCPCNNx+czy
 18PB1uKVvHGRHoxu11tjtRLBLEDk+DxTE/vftJ/fZjGFk0WM22uYLYKm4nz5f7lofc7+
 xtkk18lkaLq5z//ZnSy0RIt97wc3ISDqdTUQwRz91JeXyXvY5qEQiOeZfqK/LVpApFhR
 vIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kFFVCEKbOlmuK+M4O+sZWm0uKwVyhXJnCOKlV+9Ibzg=;
 b=VscOAnSjMI7+LGMUNyf7jY8Of5gzUVu/q6tyeCBRLznbDJHWNeytH6IvoxLVjOSJsd
 qH6Q1Csnj8fnJJ9ce24oA3QYqIY0HUGGtUjcjhSkp49XP2K7q8tMZGwJqAKkrUsliqfl
 TVrdTYLuO8JEtr756FC62NQyEWJXvxvRnKfeNmqHqiQhc74jTldvIXSfB5ndEl3rqv8c
 1E5AX61GdDpArr/PAvLvHPuytKm2DFtrM0byakPAAh5/E88FrmZVpIUSb5ZdJXmVu/kw
 n+40yygNHYJa0SvI6Wi/qlAhpFyvdZO9KqIyWpU0wBLkA37heNcgvHmMD4etNy+JSENf
 DNcQ==
X-Gm-Message-State: APjAAAV+rjzkc0eVS9IMUYM0QbTCmlYw4KKxkIxexxclFXuTi0Vo2xsu
 9wmhfxfk+sLJmNXKWLt/euUU0g==
X-Google-Smtp-Source: APXvYqzJDMKGP/DpH3rjxdqq3fJ8QgKmfUy3MWlUN1HuwK/ptGOhbrhRUZgEWoQO+DYcIa8Bj0xkqw==
X-Received: by 2002:adf:ec51:: with SMTP id w17mr5694221wrn.326.1556663139368; 
 Tue, 30 Apr 2019 15:25:39 -0700 (PDT)
Received: from arch-late.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id q4sm15715694wrg.24.2019.04.30.15.25.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 15:25:38 -0700 (PDT)
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH] media: imx7_mipi_csis: fix racy entity pads init
Date: Tue, 30 Apr 2019 23:25:23 +0100
Message-Id: <20190430222523.22814-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Rui Miguel Silva <rui.silva@linaro.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Setting the media entity pads after the async register subdev can be
racy with probe complete callback. So, make sure that the media pads
are initialized before the probe complete is called.

For that move the media entity pads initialization to the registered
subdev internal operation.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 24 ++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 19455f425416..042837b8ea28 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -784,6 +784,17 @@ static irqreturn_t mipi_csis_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
+static int mipi_csis_registered(struct v4l2_subdev *mipi_sd)
+{
+	struct csi_state *state = mipi_sd_to_csis_state(mipi_sd);
+
+	state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
+	state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
+
+	return media_entity_pads_init(&state->mipi_sd.entity, CSIS_PADS_NUM,
+				      state->pads);
+}
+
 static const struct v4l2_subdev_core_ops mipi_csis_core_ops = {
 	.log_status	= mipi_csis_log_status,
 };
@@ -809,6 +820,10 @@ static const struct v4l2_subdev_ops mipi_csis_subdev_ops = {
 	.pad	= &mipi_csis_pad_ops,
 };
 
+static const struct v4l2_subdev_internal_ops mipi_csis_internal_ops = {
+	.registered = mipi_csis_registered,
+};
+
 static int mipi_csis_parse_dt(struct platform_device *pdev,
 			      struct csi_state *state)
 {
@@ -869,6 +884,7 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	mipi_sd->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
 	mipi_sd->entity.ops = &mipi_csis_entity_ops;
+	mipi_sd->internal_ops = &mipi_csis_internal_ops;
 
 	mipi_sd->dev = &pdev->dev;
 
@@ -990,13 +1006,6 @@ static int mipi_csis_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto disable_clock;
 
-	state->pads[CSIS_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
-	state->pads[CSIS_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
-	ret = media_entity_pads_init(&state->mipi_sd.entity, CSIS_PADS_NUM,
-				     state->pads);
-	if (ret < 0)
-		goto unregister_subdev;
-
 	memcpy(state->events, mipi_csis_events, sizeof(state->events));
 
 	mipi_csis_debugfs_init(state);
@@ -1016,7 +1025,6 @@ static int mipi_csis_probe(struct platform_device *pdev)
 unregister_all:
 	mipi_csis_debugfs_exit(state);
 	media_entity_cleanup(&state->mipi_sd.entity);
-unregister_subdev:
 	v4l2_async_unregister_subdev(&state->mipi_sd);
 disable_clock:
 	mipi_csis_clk_disable(state);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
