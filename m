Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75F7152369
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 660038731A;
	Tue,  4 Feb 2020 23:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HPy2+ABzxFaU; Tue,  4 Feb 2020 23:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 672C187079;
	Tue,  4 Feb 2020 23:49:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E94A61BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E486D2050F
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvXQMVbPjnCq for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A5ADD203EA
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:49 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a6so74034plm.3
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h5BHRotCYsy0a67S2KVH1ySLbRo1QXYTOC5G0a45OSw=;
 b=N6krExxw+iDOgtznqR14UzAobO+11LQwTqSIFnq01ZN+/cRryxOKZiPH6j258N7gnB
 XksOmfuX4/M+r1Ju1OKEH2S4W9cd5roKe4PJNDc5alJYXDpC9qE2xA4J38T135DvnfXl
 mmHfMcfbwroPCc5Lbd/vDm3uVA6hNtr4ZPTOOy8MhbKLeN/FcWNVvVktChc3ohX2InZ3
 sSOOFVcIHGII58Flo8fj2sVSutv4X2heuk3jRs7L3k/wyMHyrFSHcFGqc1HSSqEuLJ+3
 trYC8ZZpAuwpjNkWf31EakOElMLkmv6dZuI9Ly2ya1nNwOSMj40SKlBPa8lzkymc+aQD
 M+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h5BHRotCYsy0a67S2KVH1ySLbRo1QXYTOC5G0a45OSw=;
 b=iD6pgcQk+8kv6d1AnKWcWammCcIQwL0yVbu63sGYzxq2C0ZEfiIiZGdYK4a+mRZ4XV
 I7cweb+15kIA8yAxDwuA8qaMnrcrxsXMI0F24LW3pe0ojHfA3a2YjGGJMWU3s2BG1BSI
 xE+HjhA3z4B2hizUTTmobj8fXsb3c/P2otUhwD94wYyh2jyinblt5THcYP/ah2BJc8/r
 MhPxXgvba+rO6iTN0PNXlFzE9PF79TwL5TJ2qtgHbHK4rWeeuXV6oczc1tAg4aiTKUng
 naer/G+EHRoAKqF0XfRpptteYYpHZjSnmakCwbuDWsfcOA89j1/7yg2Q1pQPL1dNB5jp
 eXkA==
X-Gm-Message-State: APjAAAVv9PTzvMq8aL0qSX9heB915Q0eG7rQosY4y4+lZyswalgwVTU0
 QLfA8QDnzlWhw0IZnLvmxsM=
X-Google-Smtp-Source: APXvYqysNJ3RiWVPT9jFpzVjeZWRqmiw1QVTywJOVhIiqMr4BgmIi5yBgbIXD7yptVHG0IAPw4XeBA==
X-Received: by 2002:a17:90a:c301:: with SMTP id
 g1mr2085955pjt.88.1580860189106; 
 Tue, 04 Feb 2020 15:49:49 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:48 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 09/17] media: imx7-mipi-csis: Create media links in bound
 notifier
Date: Tue,  4 Feb 2020 15:49:10 -0800
Message-Id: <20200204234918.20425-10-slongerbeam@gmail.com>
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
sub-device's source pad(s) to the mipi csi-2 receiver sink pad.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Move notifier_to_csis_state() next to mipi_sd_to_csis_state(), remove
  unnecessary inline, and rename to mipi_notifier_to_csis_state().
  Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 4c54456318ea..d3a83577efed 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -317,6 +317,12 @@ static int mipi_csis_dump_regs(struct csi_state *state)
 	return 0;
 }
 
+static struct csi_state *
+mipi_notifier_to_csis_state(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct csi_state, notifier);
+}
+
 static struct csi_state *mipi_sd_to_csis_state(struct v4l2_subdev *sdev)
 {
 	return container_of(sdev, struct csi_state, mipi_sd);
@@ -848,6 +854,20 @@ static int mipi_csis_parse_endpoint(struct device *dev,
 	return 0;
 }
 
+static int mipi_csis_notify_bound(struct v4l2_async_notifier *notifier,
+				  struct v4l2_subdev *sd,
+				  struct v4l2_async_subdev *asd)
+{
+	struct csi_state *state = mipi_notifier_to_csis_state(notifier);
+	struct media_pad *sink = &state->mipi_sd.entity.pads[CSIS_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations mipi_csis_notify_ops = {
+	.bound = mipi_csis_notify_bound,
+};
+
 static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 				 struct platform_device *pdev,
 				 const struct v4l2_subdev_ops *ops)
@@ -886,6 +906,8 @@ static int mipi_csis_subdev_init(struct v4l2_subdev *mipi_sd,
 
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
