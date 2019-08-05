Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5463682810
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:36:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D31C5863CE;
	Mon,  5 Aug 2019 23:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ok6Z6vBGJqHj; Mon,  5 Aug 2019 23:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E1758641F;
	Mon,  5 Aug 2019 23:35:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E1271BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3B5E2204E9
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9DumtX2zvXl7 for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id B854220134
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:41 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a93so36998096pla.7
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2TmLGvTN3FaWVeRsZPV3e4KNsmV2AReP7cWUVSqpqFQ=;
 b=YW2JbBhT1KOAfZKebBO9NM/G5Db95SUaRLnTey3pDLof4EeuR2oudZUxy8zi3ksHrp
 n/rM4Ga7htyDE97Ns+wPj+3Z8PhgQ/mkooxrj+Oj+RLx4/nnq0bUD+aDUnVf1LBrq9xF
 dY0j2ZVZAyPgtxwlAKR9qwP4wj/h48HGi4ffXdnH8gu8bIzxJ8uHY2W+u7NH0GnqxTD8
 dRHgc922vuRBkdb5WRupFzWcgYSpGtu+hSoihVTRk9nHn6Zo5xvrqkBk6f2tAOvr6c0G
 mFXWCA9xq+KMxQdYSaIZjMOJSVwdiGQuFvo1KeBfdkD79sC1CTS7ef5vvvfOPlyvigqS
 IVNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2TmLGvTN3FaWVeRsZPV3e4KNsmV2AReP7cWUVSqpqFQ=;
 b=Ile/fvEfPEMibwo/J+C9L546RChs0FVjg6KIdqI/T0NaR2E3SI13U252FKUrYce4yi
 +WtnmdR1mGJGeHJHYYjyvbYOdFqHRDzEZO7Qt1W2vb+2RPDcZMsxpsqLbooM9RXF9Ha4
 qOfexHqTOoTk4ZxJRAvKHU13qusDMVrF/wsRKTNbiZ56GKYhrJ+NTY9p6lwARadL5Xm7
 CEIg5tTPQMiFgdGQB+DCZMedojZabT2ZWjL6hIfuhlkCzRDmkXTBMfQjLMkEVwmUxmAB
 I6CDo+ZavTPZu1P8fgL3DCvVNql+q0a5HYkSy+rKEXfRYBTqD6FDnZqOV0yzv+4vnfz0
 O81Q==
X-Gm-Message-State: APjAAAVzI5ZvQHlirlY7mzighJM9LMmqJrllXTprgo7pCR4LMoBPEOgj
 SPVY67EHfDz7zWNaxXrZZO0=
X-Google-Smtp-Source: APXvYqzJbrsuJ3HwTZ98E/Apw4jZA8VmFc9SY7qiYBjg/8j77ZDblKl2/AqIbDwaFPx6pAGuizw+Iw==
X-Received: by 2002:a17:902:6a87:: with SMTP id
 n7mr251709plk.336.1565048141256; 
 Mon, 05 Aug 2019 16:35:41 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:40 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 22/22] media: imx: TODO: Remove issues regarding media link
 creation
Date: Mon,  5 Aug 2019 16:35:05 -0700
Message-Id: <20190805233505.21167-23-slongerbeam@gmail.com>
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

Remove the TODO items regarding media link creation, these issues are
resolved after exporting media link creation to individual entity bound
callbacks and the use of media_create_fwnode_links(),
media_create_fwnode_pad_links(), and media_entity_get_fwnode_pad().

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/TODO | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/staging/media/imx/TODO b/drivers/staging/media/imx/TODO
index 6f29b5ca5324..a371cdedcdb0 100644
--- a/drivers/staging/media/imx/TODO
+++ b/drivers/staging/media/imx/TODO
@@ -17,35 +17,6 @@
   decided whether this feature is useful enough to make it generally
   available by exporting to v4l2-core.
 
-- After all async subdevices have been bound, v4l2_fwnode_parse_link()
-  is used to form the media links between the devices discovered in
-  the OF graph.
-
-  While this approach allows support for arbitrary OF graphs, there
-  are some assumptions for this to work:
-
-  1. If a port owned by a device in the graph has endpoint nodes, the
-     port is treated as a media pad.
-
-     This presents problems for devices that don't make this port = pad
-     assumption. Examples are SMIAPP compatible cameras which define only
-     a single output port node, but which define multiple pads owned
-     by multiple subdevices (pixel-array, binner, scaler). Or video
-     decoders (entity function MEDIA_ENT_F_ATV_DECODER), which also define
-     only a single output port node, but define multiple pads for video,
-     VBI, and audio out.
-
-     A workaround at present is to set the port reg properties to
-     correspond to the media pad index that the port represents. A
-     possible long-term solution is to implement a subdev API that
-     maps a port id to a media pad index.
-
-  2. Every endpoint of a port owned by a device in the graph is treated
-     as a media link.
-
-     Which means a port must not contain mixed-use endpoints, they
-     must all refer to media links between V4L2 subdevices.
-
 - i.MX7: all of the above, since it uses the imx media core
 
 - i.MX7: use Frame Interval Monitor
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
