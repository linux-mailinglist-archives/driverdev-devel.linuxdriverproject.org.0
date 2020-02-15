Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 168C3160041
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:43:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AABE286905;
	Sat, 15 Feb 2020 19:43:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JbLDdjOp8jYp; Sat, 15 Feb 2020 19:43:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 844C8868B4;
	Sat, 15 Feb 2020 19:43:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33BA51BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:43:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 306B485DA4
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:43:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFNLbaNuX6mm for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:43:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B18C285D4B
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:43:11 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 4so6742918pfz.9
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=S78uU5ELv/QGHroNn0uGOcuYzw18JAgX+7W/Y+sH2djZV6Vh7nNYxxoxFE3sHWuBoX
 6BBzuJNdmRimqXlI/HqIyTIJ2GfkC7+O8766q44qqEidVEthYlMIYEPl07bL9Wgep32f
 vjePn3AZeAPDj3Bg+7s/mo4uNYimgtk3dTWYIQMWILZoa0Eee8MqzHDueQapO93VX0Pg
 7/DrRSQMZnLMCIWQN5xjQ68AD0KaEoZ8s5xm2BddTE48VERtoFMniIMhANWsX0kwvEuZ
 J9qtsO35u1pFAxGnFyn6mAmZv0ZRm8/otvzSQIklu4h3EPPvKIrXzya2Xdpnkk3k7xE3
 URtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=ZeYXV8UR3BwOYHVBU0kFVSNUU3U3aS6Kp4yoWDUT/pzgFUFrSh6tUWx4L9w064gDhP
 ATnf65Sd4porH6VEB83+05vgFDZNm0LsY0Gj2JNX16UZR+IoBKViyygR0N/hp1pf1K9l
 wKADxcaHQsVUM1ck8HR3WaPHRYdzy43cIWmWSu73pKG4oaQlUfiGdlVED/UqEBMwV+ep
 8cd6O2vu0KYrtW8A+Z4TEeS8/T8VBO0oakJFWKHJY6/oNxX9z6N655lMPM+k5GaJl2Ha
 nond0Za0DECu+U4BwEO0OB/0+gzAnt3ENo+Dnm4p3jzcQvDyl+a0H6VL62VxJLDkO38D
 h+2Q==
X-Gm-Message-State: APjAAAWuaVO9EXmb/nbrFvW3PJ38tf8kSsI0mpwxSJCHmCHVR6PBs246
 TU1SwE/XPgWZrdnPuPjDV4M=
X-Google-Smtp-Source: APXvYqwczQn4UX/8KSaTLZ7YHrgD3Ijj7sbqrRkHMXnOMUogEhVvwFylvxV8ataNMmBYV8zmnCZ8yg==
X-Received: by 2002:a63:d207:: with SMTP id a7mr10044400pgg.225.1581795791183; 
 Sat, 15 Feb 2020 11:43:11 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:43:10 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 17/17] media: imx: TODO: Remove media link creation
 todos
Date: Sat, 15 Feb 2020 11:41:36 -0800
Message-Id: <20200215194136.10131-18-slongerbeam@gmail.com>
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
 open list <linux-kernel@vger.kernel.org>,
 Rui Miguel Silva <rui.silva@linaro.org>, NXP Linux Team <linux-imx@nxp.com>,
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
resolved by moving media link creation to individual entity bound
callbacks and the implementation of the get_fwnode_pad operation.

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
