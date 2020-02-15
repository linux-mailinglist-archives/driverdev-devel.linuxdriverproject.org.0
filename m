Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6708D160018
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:42:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B75378766C;
	Sat, 15 Feb 2020 19:42:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjC9XxnTK66L; Sat, 15 Feb 2020 19:42:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E84086F5C;
	Sat, 15 Feb 2020 19:42:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AEE111BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AAF9A20347
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOni7163NWoQ for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id F2E9220104
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:42:09 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id k29so6729846pfp.13
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=TGhkM8HhZmjY6DuPQb4msMGHcL2dzou1bD6wb1KGAftp1o3QHahLkCxh3w2vLkJLAW
 L+KiqIFB35nAHd5eUFpbR9RaqzFZwb8ZAC/atCwwXQM0Tnje/D2Z4++AprA6vSkwa8js
 8buim4rd11xf7othSwdH1CR9PwauFkp23Iiwv8R62DtUJ65ngGFaZjyaR0i2I+2r9fkv
 lHQdo2tWRyANKH8czra1L2U/nMnigwRTlv7vgR/ovAXu4Q3+roMzvJ9aupaOhLpwPizY
 cO+n85XdHuwByzNr5GPH3/8RZTJYXoLOvvvVoUjCl1A7kix84J9ysgVv04C9X5UiGD3S
 nUXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=FIQIwja24y3QCHudpqg0AA3y5GrQs70lT6z6MG0P52VDqXr8TT/H+XCOiI+qjc5gGj
 S864om1gzdaUE0Ee0IskpHUBNTT5eHxyv/0y9WxhWBl4vD5Xp3kUucZR2HBKh/A/33xt
 zz2cL4X7ybeDJu7n0qhHT9ks6iJsjRcyPrhwZQQjI8RcLdJdvGZLvRmt4hl/BmpXJKmw
 TjHfTzY1w6ORceqQyc4yDO1asnfEUn+kPY0s43LtbHi6wpQno5mRat7r1cuOKdU6O2ms
 7bZZA+elm8fZ5SfNEaxoymuUUWhLOGZup4Q27h7RIv9b3XBOqwHjmXRzjYmK1MS4AmXa
 gG3w==
X-Gm-Message-State: APjAAAVyy2pvOsU/uEOLtbzyL/P/pAM3RhHBEIiavewmwqbO/LZJpcsb
 zXH5i1X6hx7uUmvkaZzQodA=
X-Google-Smtp-Source: APXvYqykL2GsAy4uDFniQNsQVMLOFN4GwHeH/9K6Btq7YRMenUHjMOgBREWJ9t33xXFT+4LdznuKdw==
X-Received: by 2002:aa7:8654:: with SMTP id a20mr9407051pfo.88.1581795729527; 
 Sat, 15 Feb 2020 11:42:09 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:09 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 04/17] media: imx: mipi csi-2: Implement
 get_fwnode_pad op
Date: Sat, 15 Feb 2020 11:41:23 -0800
Message-Id: <20200215194136.10131-5-slongerbeam@gmail.com>
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

Implement get_fwnode_pad operation. If the endpoint is owned by the MIPI
CSI-2 receiver, return the endpoint's port number. The MIPI CSI-2 receiver
maps port numbers and pad indexes 1:1.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx6-mipi-csi2.c | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/staging/media/imx/imx6-mipi-csi2.c b/drivers/staging/media/imx/imx6-mipi-csi2.c
index c1d1afeea53a..e27a342751fc 100644
--- a/drivers/staging/media/imx/imx6-mipi-csi2.c
+++ b/drivers/staging/media/imx/imx6-mipi-csi2.c
@@ -507,9 +507,37 @@ static int csi2_registered(struct v4l2_subdev *sd)
 				      640, 480, 0, V4L2_FIELD_NONE, NULL);
 }
 
+static int csi2_get_fwnode_pad(struct media_entity *entity,
+			       struct fwnode_endpoint *endpoint)
+{
+	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
+	struct csi2_dev *csi2 = sd_to_dev(sd);
+	struct fwnode_handle *csi2_ep;
+
+	/*
+	 * If the endpoint is one of ours, return the endpoint's port
+	 * number. This device maps port numbers and pad indexes 1:1.
+	 */
+	fwnode_graph_for_each_endpoint(dev_fwnode(csi2->dev), csi2_ep) {
+		if (endpoint->local_fwnode == csi2_ep) {
+			struct fwnode_endpoint fwep;
+			int ret;
+
+			ret = fwnode_graph_parse_endpoint(csi2_ep, &fwep);
+
+			fwnode_handle_put(csi2_ep);
+
+			return ret ? ret : fwep.port;
+		}
+	}
+
+	return -ENXIO;
+}
+
 static const struct media_entity_operations csi2_entity_ops = {
 	.link_setup = csi2_link_setup,
 	.link_validate = v4l2_subdev_link_validate,
+	.get_fwnode_pad = csi2_get_fwnode_pad,
 };
 
 static const struct v4l2_subdev_video_ops csi2_video_ops = {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
