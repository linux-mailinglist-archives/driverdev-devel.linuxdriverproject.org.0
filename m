Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F7415237C
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:50:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8319884626;
	Tue,  4 Feb 2020 23:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlZMSoZKn71a; Tue,  4 Feb 2020 23:50:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E54B58608B;
	Tue,  4 Feb 2020 23:50:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97A9B1BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 926BF2041D
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCsxdGEd3iVy for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:50:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A07A620419
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:50:00 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z124so10459543pgb.13
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=hYh6UQglDyvaKYQeoKHsdmWZDC9Ai1KCxDg3WYXA9VUoIowzCd1/P6UT9SMrmLJ9J6
 zmZLaE8LW+fcVnqRkgciwC0EHLKMyKBa62O/YFOfRpFD5vCgBpHzvkxHAMwjOUVIgnXn
 +cen+/dstiaG4sNS5cmApv/Gx6wAY7OwnfcsrC6Pir6ldHJIq9apbj31QSKJ6KbBlhFa
 boTTc75UybNSR9VaCqbdiRREHhq0s1gEshNYeWi8W1CG6zZkLHM3rYmQKCkR63OvtH6N
 ITzHMiADkTEhkwjX73xm3W2sOmqCQi+pgqx0kPpGobHhWbGeU3dXVaqJf/pQtTLGolZu
 Tm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=HHXgpw8H5mELqkO/2pIfyHoSing/Uud4YXI8KdFoa0nvkYhj1Wo008G3AHkt7DKR6R
 8zYtMigjK7AEjytGa8kZkSnt9IVX54+UHk+ZjM82CgJR0D/7/j0QH0kT2q3fvlKOOfw9
 x+lgunjIEEWZvM+8WWx8O+OX5rSY3cQLJwVYm6x2U1frAVAMuHmrIG8tWX4iUThpngYU
 0+j2jXTWamCyGIl04WoMdcu9i45yzUrC4lK6VUNwq8BLr5fh1AiL1YuiV81OWV3CfIRc
 cEB4gD9Ytx1BSim/79eJgg5lzokjY+QnsLDVODKALZt5cb1hRJdKuyDQQlDFQq5z0f9b
 p68g==
X-Gm-Message-State: APjAAAUPV/+XYjkFtkEBXIK8xUMkABZ/ehJg1POUuvxLxyh+xiLfJ+88
 Clsk++s4ln5vudK2lpFProl64Trk
X-Google-Smtp-Source: APXvYqw+LeZ+qTjjKIp+K4eK8tkRC8y+Os5q6ehTK/O9/49qCRcVeb3fbdOVA6rXi8JN5rFy3XdDeA==
X-Received: by 2002:a63:7949:: with SMTP id u70mr33314977pgc.233.1580860200115; 
 Tue, 04 Feb 2020 15:50:00 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:59 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 17/17] media: imx: TODO: Remove media link creation todos
Date: Tue,  4 Feb 2020 15:49:18 -0800
Message-Id: <20200204234918.20425-18-slongerbeam@gmail.com>
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
