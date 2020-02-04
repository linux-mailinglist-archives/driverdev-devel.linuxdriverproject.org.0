Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F6E152361
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:49:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 186D620764;
	Tue,  4 Feb 2020 23:49:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-XBWpzTBUjH; Tue,  4 Feb 2020 23:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10827203EA;
	Tue,  4 Feb 2020 23:49:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 943D01BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 917C38204B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmHaWkIBjipJ for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7581881A2F
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:42 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id ep11so134819pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=Yk0UNyyAlkctNhCEl0XmAo9v2tutCjwPUMuD76Z53N2E4FftV6cTkCjAHeQGoJsHj7
 QIKwetLhpjlSd9i0Ats6RVGMrEEDEVRLioAxbYfLaBN5889APinEf0m55r5x3KXaVIrZ
 oSQTl6kQyV8sFLASP/vjlidXEX6iS/0RE8mVwS2tKLHUio+gpN488xI69k9G6e56oy9i
 HblJhv895SVGOBfy9iEga1oD2MUI/OGK6OvL9p3QKBzi///hzUbXJEi5AxaXBdj3RDze
 QjNQ3hoaGObwKZyWme74zSLdWqs4meGDHX2FHwsCWvwW5CszqBNMc8y4NEJu8dbbYXWw
 Aa4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GoHwA/NUt6bdmcBWMk3GrpTBSbEsSYQ8eBgsnOl6FH8=;
 b=Ko8fGifGHuASV5IkUHwZC0/h24fuVv/ip2fMpbYVInYU9MlbtKC1WiJ1NmEwEkkDxa
 b7CYmvTM8MIu/TqF3tcbbTyA+e7RV/pMpv0fMtRgRn83VZQbuD3jpDrcmF5xl/2gN1Qd
 t8Up3ZL9AxKjyXjTZpxrLj/lWEswzzT+npSN/nxSK/5ALojM9qu1YNE6Y66BudnxPz0I
 pUfNeo0SjXMYRJTcsxFSx2VX3M3J2vxFOxjRaIWB2eHjfdyjroa9Ts/81WKLUbUSUbvf
 X9Z+zb9wIg3tHYCvmioW4VCEm/qQU2y6nnX1GBlyHuDsGyUbSdaCYPXNWAPnN9PzWPPt
 oH8Q==
X-Gm-Message-State: APjAAAWJ1yb20e7bCs3xO2lvUu4USyTIOlbYTc5M2lBb/meUVyK058Xc
 kinvYlOc/AgzC8QWgykgR1GhkW/E
X-Google-Smtp-Source: APXvYqzscwmenowcDy7Jeog/8AGe1JciDVrcX+rmRLWuTOpy9AufsDtRKO3ndcrFvHB5apSnObXHOw==
X-Received: by 2002:a17:902:a514:: with SMTP id
 s20mr32054509plq.300.1580860181981; 
 Tue, 04 Feb 2020 15:49:41 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:41 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 04/17] media: imx: mipi csi-2: Implement get_fwnode_pad op
Date: Tue,  4 Feb 2020 15:49:05 -0800
Message-Id: <20200204234918.20425-5-slongerbeam@gmail.com>
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
