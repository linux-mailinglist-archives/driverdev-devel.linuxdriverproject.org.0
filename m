Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C117152372
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 00:50:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BBE2B20773;
	Tue,  4 Feb 2020 23:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aCroi8Nui53u; Tue,  4 Feb 2020 23:49:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8605820419;
	Tue,  4 Feb 2020 23:49:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CBD61BF36B
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17DBF8466D
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 23:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ut-8kCIZL1Oz for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B18F84626
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 23:49:53 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id k29so155844pfp.13
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 15:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=mNmZy7R7sQunr/esl0X7WuD/YOJo3oXWxaM/3fWtqDaXMU3tA9oX7QpNB7L4WidlZN
 +0FhiBowT1jvElbnHRqgGrwPJslvNHKFlOxLIYgVKADNM/DLj9EVLyJKAxRSkrN2eoVX
 +VHxwPTpyQ3sxjsa7GNJp69XguyefpuqpxO9o1JVFfdKdevURPuboIluRlx+LVz6tOvw
 1gJrULMLL3f0l435h35yYSu9MMc0rDFcWgCx1W+bs8Vn2JXjhCVn3Kyt4guYO1WDMl07
 t6NUmqBpb1HOS8/HzuYODmWSMGIX0dReYtzHzhC8qOSWtTAemf0mNu2uistyoFL6widC
 RXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=AV7vTRQCKv3FdU6lEauNBmO8GOb/D9jcHADnNBJ5RkNPNs20E7/MGHswkaMYD3Nnvm
 2E91OEwWSXxJjfjOUpR2pfDrL+OtvVFH+u7Wk9hibB41pgynqXBZJzEWedgtk1bR5v9R
 b0TDzcoF2BxegXN56OFnhBRat7y2rkGFoT9USrrGtWclzT+kwYgY70REEMwdUmcgmIhU
 Ypu9ed9X8k+tissIBRjfq11dBc6tEn+z0ppbHzuDbJlDKwFjIjspJvj2+8feEMEQykHQ
 e+ZD0PCFU/H7gC95WjUwlhYND08EozzuHyxsLXe40mqYQMW5WwvkcoASg4TsyTOfainl
 zz2A==
X-Gm-Message-State: APjAAAWKDz0V8H4czc5CQhAEswNK+pdonTVYM34X3y+f56D0jowgWlPA
 1gA0ymQB8DJjn7TqgIGXjTs=
X-Google-Smtp-Source: APXvYqygTNtxMuKauV7T3oKQAYlxYOiFZwSb0Z9tzIiXotDDLSjz0Ow+4RbPSU47FigltJmiEujr5Q==
X-Received: by 2002:a62:878a:: with SMTP id i132mr23451540pfe.8.1580860193128; 
 Tue, 04 Feb 2020 15:49:53 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:52 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 12/17] media: imx: csi: Add missing notifier
 unregister/cleanup
Date: Tue,  4 Feb 2020 15:49:13 -0800
Message-Id: <20200204234918.20425-13-slongerbeam@gmail.com>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add the missing calls to unregister and cleanup the subdev notifier in
imx_csi_remove().

Fixes: c893500a16baf ("media: imx: csi: Register a subdev notifier")
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 3e2afdd59276..bea6a70cc353 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -2030,6 +2030,8 @@ static int imx_csi_remove(struct platform_device *pdev)
 
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 	mutex_destroy(&priv->lock);
+	v4l2_async_notifier_unregister(&priv->notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
