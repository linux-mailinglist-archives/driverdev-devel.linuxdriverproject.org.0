Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DCE15236E
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:49:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFA5B84BB2;
	Tue,  4 Feb 2020 23:49:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0mxK5I1mUXmc; Tue,  4 Feb 2020 23:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C373850EA;
	Tue,  4 Feb 2020 23:49:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14ACB1BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 11C008466D
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCL5raCrVQea for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF7E484626
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:50 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t14so64660plr.8
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=clTHQOua5ugicz9SFwYMbXH1AC4U17gwJLFJXrYA19wFEZDaqG55wLKVpjnmar9k2w
 l2EduYB1bF7nKZUnVZV4SL1XhMKpPrwfuWJtzUexjbwcMPkP06YmdQWipoSiSsjtufK5
 rgaGo7AUYzb2+4Qh6EGgxdlgr9KADsuDZ1sxa7zQJoEf7p9dDCDmDep8tihLj5RkgiSF
 9YTTW61j1iz/Si2iudelXlgRkCGFPAwoctMg1+MCoaKLnqqajhrFYD8kmNds5jBUGCVu
 tyfV9t15GS18zC8XrBF98Wk+AH/PndxU40jgsCWpq2p9DW+uvMHlRAiUSJcmmB5pp2To
 8mgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ha1G3XO6Vb76DqwKYHrBrsy5rfHEKdgMuf1qeb5yKus=;
 b=EzRV1jmPQDzou9EXd7Tr3Yp/CCOBr8vaG6Pd3mwwaKhWHmjCXCO3FzUTSw/cXW53de
 uRHL53cysNLl1WwSdoC0aK85gPuMcSTL2+GgZRRc7aA246ZOUKejf10oTCdmPPkWH7RG
 anYcNVNPGmJRD2MUkSynS8HIVJA/ENAfi4iGtkl1WFQ313aDp003KSvvfwpCOyERYAlN
 ZMP6IYGYOUrIGWJUGCDjHD2VGCoCUTSxdvJbd3EmkQbjJqRHOioNNAB+weuBjZ+dgQqB
 RsbohD8lxkP00K6N0iaFK9zHDrAcGuhSQqXLsFy20lgTINkgiyqF6dTTkjcjLT9JmCR9
 u6aw==
X-Gm-Message-State: APjAAAUFMzXtxIviakQX3P7QQC9ekTyhIxD4MW44v8+UncBKCZ96QJHJ
 yhjUQJGJwmdlxLsMhv8/AZwMIFYm
X-Google-Smtp-Source: APXvYqwyLzleegvKCr9D4YaahTk1C9/W40AyYBCK/ry/o6dQcN67cWcYH3Eh8r0Gqgv52nHZiPiPWQ==
X-Received: by 2002:a17:90a:c691:: with SMTP id
 n17mr2098311pjt.41.1580860190466; 
 Tue, 04 Feb 2020 15:49:50 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:50 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 10/17] media: imx7-media-csi: Create media links in bound
 notifier
Date: Tue,  4 Feb 2020 15:49:11 -0800
Message-Id: <20200204234918.20425-11-slongerbeam@gmail.com>
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
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
---
Changes in v3:
- call a local imx-media utility imx_media_create_fwnode_pad_link().
Changes in v2:
- Rename notifier_to_dev() to imx7_csi_notifier_to_dev() and remove
  unnecessary inline. Suggested by Rui Silva.
---
 drivers/staging/media/imx/imx7-media-csi.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index dc6d1a28fde7..cf9f675c53a3 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -196,6 +196,12 @@ struct imx7_csi {
 	struct completion last_eof_completion;
 };
 
+static struct imx7_csi *
+imx7_csi_notifier_to_dev(struct v4l2_async_notifier *n)
+{
+	return container_of(n, struct imx7_csi, notifier);
+}
+
 static u32 imx7_csi_reg_read(struct imx7_csi *csi, unsigned int offset)
 {
 	return readl(csi->regbase + offset);
@@ -1187,6 +1193,20 @@ static int imx7_csi_parse_endpoint(struct device *dev,
 	return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
 }
 
+static int imx7_csi_notify_bound(struct v4l2_async_notifier *notifier,
+				 struct v4l2_subdev *sd,
+				 struct v4l2_async_subdev *asd)
+{
+	struct imx7_csi *csi = imx7_csi_notifier_to_dev(notifier);
+	struct media_pad *sink = &csi->sd.entity.pads[IMX7_CSI_PAD_SINK];
+
+	return imx_media_create_fwnode_pad_link(sd, sink);
+}
+
+static const struct v4l2_async_notifier_operations imx7_csi_notify_ops = {
+	.bound = imx7_csi_notify_bound,
+};
+
 static int imx7_csi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1269,6 +1289,8 @@ static int imx7_csi_probe(struct platform_device *pdev)
 
 	v4l2_async_notifier_init(&csi->notifier);
 
+	csi->notifier.ops = &imx7_csi_notify_ops;
+
 	ret = v4l2_async_register_fwnode_subdev(&csi->sd, &csi->notifier,
 						sizeof(struct v4l2_async_subdev),
 						NULL, 0,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
