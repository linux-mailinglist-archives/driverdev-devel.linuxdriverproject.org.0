Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E78CD82805
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BD2185CA8;
	Mon,  5 Aug 2019 23:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E7kiUFZA9pIu; Mon,  5 Aug 2019 23:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2145985BE4;
	Mon,  5 Aug 2019 23:35:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 485581BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04C7887B4A
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nfc4iuE0RPkP for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53A2587A4F
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:34 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id m30so40432312pff.8
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dlPssYq0ryvhz0STq2y2DANQYDQwBzmO+X3pNrhAOiU=;
 b=HauhLk8diwPqoMNLaCvVs+Va+/vM1Lotb6yd4g0srzVoCT4ME7KaWNu46fQtchpf/Y
 4jTYQIFp17uXOCGxJEVna4L87qT8UKZ4PxAgbP0E6TajvP0s8uJ8RAlATnruwoMXZ0xQ
 km1KDe2Qx7lImi9sH0snspt9BhAQc6j2B6PdzFEZwxOsk/Mul5as2/6VJiQAcDwXUfNX
 AcbzzFdw4/Ea7UZibCr/bs+/nMXotUYIrcImd2RbnlZKvt0xXYl8v79Cx8tLs1G0goQF
 09ZJu2P2wAhzIzFe8JYfWdcle5OunSW837g9RZb0iDfm/DZBfy2XiEi+hElxP0oulYap
 ikOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dlPssYq0ryvhz0STq2y2DANQYDQwBzmO+X3pNrhAOiU=;
 b=sUjY0zpp3zFUeJinaESVltSM0kDps/jKP4Rsag/bwVqHrKQZtiAQKUiFsa+xBBZQF7
 2+Nge/RS/RPbk9uIRjnksSIz8oswosSW4CJnqSiFAcA3Mjm4hF7bNaP5gtZh2NaEL2Gp
 RuK3C6OVXKdBGHGBPL0BkhP4cxv/EElAGC6efceCiKG37FpvfIabEmZsZq6/LZToYb3F
 7dYPzYvM8bgQFWDeRkSIwxnpJ6Ot+JVwisNCxbtEAh2q8jSddSx6dngyKQosTEZASDze
 I/NMts62jJRconqT4TI7YmP7YyL4daIXSmqg+LS0A0MHScRW/k+KkAwNoTKVWKu3ynGc
 AD9A==
X-Gm-Message-State: APjAAAVIalPNaT0n81RYfEOoUnmLhAsKuzJQuLU7uV7O8xs6OQBv3B31
 6UqUGB47f5D832RuefLyGOk=
X-Google-Smtp-Source: APXvYqyC9KlTqQHjqDVHhWoeilDLM2Elce3C2IsDg6J+VQpzucQEZbF8tGngST/M5+v2rf41OtR9fw==
X-Received: by 2002:aa7:956d:: with SMTP id x13mr553906pfq.132.1565048133803; 
 Mon, 05 Aug 2019 16:35:33 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:33 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 16/22] media: imx: csi: Implement get_fwnode_pad
Date: Mon,  5 Aug 2019 16:34:59 -0700
Message-Id: <20190805233505.21167-17-slongerbeam@gmail.com>
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
index 367e39f5b382..e193f66fa230 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -1824,9 +1824,32 @@ static void csi_unregistered(struct v4l2_subdev *sd)
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
