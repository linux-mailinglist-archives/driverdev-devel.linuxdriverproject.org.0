Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771AE827FB
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EF3A87B7D;
	Mon,  5 Aug 2019 23:35:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6pdPNSpHNMK; Mon,  5 Aug 2019 23:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C10F87A96;
	Mon,  5 Aug 2019 23:35:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6D301BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD62220441
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aEhj2eSRihq8 for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id F1A092044B
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:31 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z14so3285836pga.5
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Fbs1mFAvJTATM6fIvB9UCHmR0ykE58CEjMWw0CNcKVw=;
 b=J3zvZBPbrHmjS6LZta22eIsImAqYXiEzcBjlGvfa482lW8RjJx4Akc0Ae3QmAzH2GO
 h0LOzT6sPTs/PEl8B7wYP3VutzzoymShyzc7QKqD/z/fAxou3Ejno26qhQWzTw9ZbvoX
 s7CM7TZYWM4m8Mm10u8JGrDRrw1V21hEUkPPSbplPewwOJ2nAcvDkID94cqB8PC87Pb8
 vfxjBV11vQ5JhzuWPxQ/5hvbjhBvvhnci3txlljSsa0yTGdtVQksNsnCcfLM8pAgpluZ
 TwfQZi+2cQTMR9/zLZB2EAsHJaW1U7vUPTntLgrdSicwrUJKpr7z6mcPQ1RurdeOh4Wn
 2Ndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Fbs1mFAvJTATM6fIvB9UCHmR0ykE58CEjMWw0CNcKVw=;
 b=VF/6CTjip0c1IfxET1M51kYuyjlCd7a7/lEmGNI9Ia2rfyj9nloOMof+odcoUq2rhz
 ZOKWWmSKZagqN9iDeQAuoVJlEF8Em/JdLZOSFuIN3D5RhzleFEq8hwAx/H5tVanEW5mZ
 BZ1q/0MGmMpdvnsS197eYt33joBr/ru6m+z36oRqR+TMWzgI5nnpPnVfSeqJxJyAXEdi
 JVecCNJCQZesn+HazvCPQsRaIaGng+e40Ls8BcXDyqcIQ0rZuKIOJN30G6O92WKqkG+w
 m9spJu70CkEz/4q39ULY3j1/wgZC6/42eV0KUKCm5UFbfbZg3PEOJ++QhLvvYiTz1n2q
 wrwQ==
X-Gm-Message-State: APjAAAU6Ls2ViAihjImg+PQLOxnracYzllE6Ehw0z1MLcHkWCPMq874W
 pJBGemnDZKJaGJ8Z6igvy1g=
X-Google-Smtp-Source: APXvYqxMcB13LsIEJrOTuGY/j/XtK9RITES5UnefU9LWRAVWxAW33EUR/o2Ph3AMnZGny6/J1lcIww==
X-Received: by 2002:a62:ce07:: with SMTP id y7mr548956pfg.12.1565048131431;
 Mon, 05 Aug 2019 16:35:31 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:30 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 14/22] media: imx7-mipi-csis: Create media links in bound
 notifier
Date: Mon,  5 Aug 2019 16:34:57 -0700
Message-Id: <20190805233505.21167-15-slongerbeam@gmail.com>
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
 drivers/staging/media/imx/imx7-mipi-csis.c | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index f71d9183cad2..e03b2317a1ac 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -259,6 +259,12 @@ struct csi_state {
 	bool sink_linked;
 };
 
+static inline struct csi_state *
+notifier_to_csis_state(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_state, notifier);
+}
+
 struct csis_pix_format {
 	unsigned int pix_width_alignment;
 	u32 code;
@@ -863,6 +869,23 @@ static int mipi_csis_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
+{
+	struct csi_state *state = notifier_to_csis_state(notifier);
+	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
+
+	return media_create_fwnode_pad_links(sink,
+					     dev_fwnode(state->mipi_sd.dev),
+					     &sd->entity,
+					     dev_fwnode(sd->dev), 0);
+}
+
+static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
+	.bound = mipi_csis_notify_bound,
+};
+
 static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 				 struct platform_device *pdev,
 				 const struct v4l2_subdev_ops *ops)
@@ -895,6 +918,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
 	v4l2_async_notifier_init(&state->notifier);
 
+	state->notifier.ops = &mipi_csis_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(mipi_sd, &state->notifier,
 						sizeof(struct v4l2_async_subdev),
 						&sink_port, 1,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
