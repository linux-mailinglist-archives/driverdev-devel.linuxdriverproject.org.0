Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEC3152366
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 267F487118;
	Tue,  4 Feb 2020 23:49:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3peCjp3AuXCx; Tue,  4 Feb 2020 23:49:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC8DF872E8;
	Tue,  4 Feb 2020 23:49:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57D011BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5403E81B69
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjMxY4_-zNDz for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3051A81A2F
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:41 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z124so10459242pgb.13
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tEFP9EfjLyBSm2GDbhHW2vsbKN5BJT5FKVyhRHQNMY8=;
 b=qmhbDNR95uHywwTR96SOWFHQIuY5BcX1uVAKfd+uicZ/k1fooHXSfNBVaesqjSQuZM
 OQMTcnpW7TEz9K/YUDnRklPs/ToaTpYqRigLVpPQu4QcTCoIPUY150DuIMtiSb4/OEyH
 oJ3emGDquRgVHbaJlQYK9Fd1Ftcovqe1Bk+JATIFT7MVbxmoDSys0IY2ekFO7tQqoxLP
 bhQSL0C/24rpHydkRdHxijxlvhu8YM+ssVxLjZXU8FXyWrn7J88sNdv6x3XgL+gqmTrr
 XzMFB4qltVjlXDCHbOzNZgd94Pr/t6vht9lz9F0xzd+xATy4aNz67yWdpbTWB/kvEusB
 nBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tEFP9EfjLyBSm2GDbhHW2vsbKN5BJT5FKVyhRHQNMY8=;
 b=qQ2VcZJLVM4qBQpp4m6OOhwbyWKWaN3LqNhOxAcfntVs0+uVg5LaFw6ISOYcU3I+/c
 /+/HyDhjF5XPDBswF1LOLKCbFgahsI/yv9EQS7wQZD6MDrQdOdd1qXuUIaLQecJvJF2u
 iN3r3rE45E6Qjg2MI5Z3HaboCiL9p2nizkKirqz4Jy82XkSeQxkZEJSDx+bHpyR1Bwrl
 2N8YHFtRmbq92SuwkrCoF+J5WWND//jOfwS6uBCTNDd4F4bWlc0/rymmKBriEdprhkyy
 IVGOEEkyrY5xwlslihZY/WKZWKlB+LXE2f546LZKOYf0GZA3tBwrxLYYQ2vZupR0f90s
 YRIA==
X-Gm-Message-State: APjAAAWjsJ16Lrc+Q1AdAUhwt1djIUNQM5RGJ26t4QKK8a5ky+WDqydc
 8CmWebC5poszQQeLZEhe2zA=
X-Google-Smtp-Source: APXvYqyIsRF7R9F2VnqpYSRTFRZQXt11C2WQyxtCzzEwR1tv4q2JGNKz08KJv6czrUc3SW0JZ1+R3g==
X-Received: by 2002:a63:9251:: with SMTP id s17mr33348585pgn.127.1580860180704; 
 Tue, 04 Feb 2020 15:49:40 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:40 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 03/17] media: imx: csi: Implement get_fwnode_pad op
Date: Tue,  4 Feb 2020 15:49:04 -0800
Message-Id: <20200204234918.20425-4-slongerbeam@gmail.com>
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

The CSI does not have a 1:1 relationship between fwnode port numbers and
pad indexes. In fact the CSI fwnode device is itself a port which is the
sink, containing only a single fwnode endpoint. Implement media_entity
operation get_fwnode_pad to first verify the given endpoint is the CSI's
sink endpoint, and if so return the CSI sink pad index.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index b60ed4f22f6d..dc5fe25fe7b8 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1825,9 +1825,32 @@ static void csi_unregistered(struct v4l2_subdev *sd)
 		ipu_csi_put(priv->csi);
 }
 
+/*
+ * The CSI has only one fwnode endpoint, at the sink pad. Verify the
+ * endpoint belongs to us, and return CSI_SINK_PAD.
+ */
+static int csi_get_fwnode_pad(struct media_entity *entity,
+			      struct fwnode_endpoint *endpoint)
+{
+	struct v4l2_subdev *sd = media_entity_to_v4l2_subdev(entity);
+	struct csi_priv *priv = v4l2_get_subdevdata(sd);
+	struct fwnode_handle *csi_port = dev_fwnode(priv->dev);
+	struct fwnode_handle *csi_ep;
+	int ret;
+
+	csi_ep = fwnode_get_next_child_node(csi_port, NULL);
+
+	ret = endpoint->local_fwnode == csi_ep ? CSI_SINK_PAD : -ENXIO;
+
+	fwnode_handle_put(csi_ep);
+
+	return ret;
+}
+
 static const struct media_entity_operations csi_entity_ops = {
 	.link_setup = csi_link_setup,
 	.link_validate = v4l2_subdev_link_validate,
+	.get_fwnode_pad = csi_get_fwnode_pad,
 };
 
 static const struct v4l2_subdev_core_ops csi_core_ops = {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
