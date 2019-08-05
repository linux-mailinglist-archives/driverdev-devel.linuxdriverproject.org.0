Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D4682809
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 01:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1F99862D2;
	Mon,  5 Aug 2019 23:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WaHuWHPHH+yi; Mon,  5 Aug 2019 23:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E666863CE;
	Mon,  5 Aug 2019 23:35:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 862151BF390
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83A3120441
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 23:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QUu81QLW7A9u for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 23:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E11620134
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 23:35:39 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 4so30052594pld.10
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 16:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zrm8LxDqKTEIfziOzXkM6e2flIMXktLlvnyDC/cWAXU=;
 b=E8PFWAlEca7XGp/ypYPJskiPyA9K+7OS18DItOnG2Bfl6FCKtkimS9/DnRw/hE1zFu
 OouSg6pW06IaMrrAq2zQYNzh3HlvYNDC7/+6Pd2pGb73nYxYAiOzuLNakyx/gs/0ne7M
 tOiWcZ32wmqRG7rODw5zO3uH76Efd0ztx6BR2HX5j+4+nFvZGQKj+AqMcwtpxFdu2Jqn
 D0zHlOtu7eB9PrDypfvevuW51VXdxNfXi2g+oXIyE+i8StDi8QWlJbqn41x/0jmmJhZn
 Uka/xY8sq5AdPsUB/yIUOTcehc9mCEBwQG6nlixCt38ifTG1RaeP0DX+8kwp+yp8gMOv
 Oc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zrm8LxDqKTEIfziOzXkM6e2flIMXktLlvnyDC/cWAXU=;
 b=YQpEo7P0GkaWNhaPC8po6im49xaPlT5m0WXORy7WYAHzF/HcUoXlxXaTBE9Zwhf8VZ
 HyJmUklIXMJ9j6RKnjaQPQW6/MSyAHsJ73ZilLVV0X5n0YN33P14APpVigC76ObzYxdX
 N8KzmVKj1ISB6+wlZRxEAnd27Q6f2Q+HbvFVgMUPjsermt0TV7BL6N+iC/+nnThrc6Os
 bCZicGslDWsd+3S59bbefvCasRuS1cvmn0ArGbJp9jimf0K0+NveHHlzVP3GhuEzRg4Q
 Z1Zffdv3ibl+jRMzhWsiBBKdV9f/Nb8bDy7BHjwJi5OYE+U2CW9Er4pzoM22Qy4fl3fQ
 HDGA==
X-Gm-Message-State: APjAAAURu4mxca0l/AEkDiU6GrsTv7l8CQlRb+C4AsrMqAC6sEytyxlQ
 xyaDGLf1Y9wDTDWI3kmXdbE=
X-Google-Smtp-Source: APXvYqyH8CdkrHUQnPTNSLlBsJ0vtRNhSprKbx26bouPjx5BmsIKdhqcv08x/6Q/83cWW2HTKFyUEQ==
X-Received: by 2002:a17:902:5a2:: with SMTP id f31mr277744plf.72.1565048138734; 
 Mon, 05 Aug 2019 16:35:38 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id 30sm31296349pjk.17.2019.08.05.16.35.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 16:35:38 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 20/22] media: imx: Add is_ipu_internal_subdev()
Date: Mon,  5 Aug 2019 16:35:03 -0700
Message-Id: <20190805233505.21167-21-slongerbeam@gmail.com>
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

Add a convenience inline function that returns true if the given
subdevice is one of the i.MX5/6 IPU-internal subdevices.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index d75b3c80101a..c42a2cafb8fb 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -282,4 +282,12 @@ void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
 #define IMX_MEDIA_GRP_ID_IPU_IC_PRPENC BIT(14)
 #define IMX_MEDIA_GRP_ID_IPU_IC_PRPVF  BIT(15)
 
+static inline bool is_ipu_internal_subdev(struct v4l2_subdev *sd)
+{
+	return sd->grp_id == IMX_MEDIA_GRP_ID_IPU_VDIC ||
+		sd->grp_id == IMX_MEDIA_GRP_ID_IPU_IC_PRP ||
+		sd->grp_id == IMX_MEDIA_GRP_ID_IPU_IC_PRPENC ||
+		sd->grp_id == IMX_MEDIA_GRP_ID_IPU_IC_PRPVF;
+}
+
 #endif
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
