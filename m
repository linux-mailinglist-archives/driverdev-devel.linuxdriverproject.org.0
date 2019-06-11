Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8B73D06B
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 17:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EDB985F8A;
	Tue, 11 Jun 2019 15:10:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q-h8aJl_wY0C; Tue, 11 Jun 2019 15:10:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20CCF85184;
	Tue, 11 Jun 2019 15:10:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6596A1BF3D9
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 15:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5177585218
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 15:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6okxCW39eDF for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 15:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5CC2C85184
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 15:10:33 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id b17so13449164wrq.11
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 08:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dKk4lwmcZdnDRALP2wx/m8WSxyBG2vgW/OCx0FzeC8c=;
 b=aUHoFIhHG/QLKjJygOhwGp8+6I04xXhwq/HrXO6TimaAtLUW8fIdmB5FLW0pNLDp5g
 bDZ2Q+sJyfolXXv3+POVpRiP4D5LvcCwky4UT4hyFSrMK75uv3oaSNmSEk1kERzYQugE
 /V/+AJTS+AxOtnXxaawbc9m2pFom9K99iSFvnaaymu1iaQBKf9RpKlRWFjUaNNQSXu6x
 zpNhzt0OHVxhdJCXdxrje6owCLWvM00igzgqWtkGujwakvAPiuO2vWBBe6x1bX46W5JR
 OMBCUITF3SYb35+yILh/hy9vqjTpt0fp3GKFoMeg3o64WwGvtOZmh4wQSfO5Uz+89B6m
 tuXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dKk4lwmcZdnDRALP2wx/m8WSxyBG2vgW/OCx0FzeC8c=;
 b=hnD/s3Q7w4tkXVI7+t6sMvnpNcCPjAEF0UfLfcDX5kG7n1wjnJIhwo1KFChzmzxZdh
 3vxqglCb5Am1zRJ04Fme7Y829O9QGe+IoDUinZmxUUt3Zs+MZ0M70Jg6S+4Wk+ALZDMl
 lJAt7kfQPm2sbmpgyGM3YQrIYO1XA8NWNIQMFTsEtgKPhVzji+xZukA0WVCsrTMLqGAU
 VQACPx1PsEkNLZhdw6I/6Kc9QIAkstEbFXNdovz52gMYuexGwCawro5eHdPivXTzK95m
 nJSPlIfabQSjY+/pWOEd/u95YX1z+vy6IHSSqkHkczSb5Ke8Zen+v2FC7lAvfs10hxag
 zmRQ==
X-Gm-Message-State: APjAAAWSU6G/HeUk8iyQGrkwdVIK8ZY197n2eYqJ562AUFpGm0eQ7xj+
 wz1PSk6cL10J/wxXxFAjkK9vew==
X-Google-Smtp-Source: APXvYqx6qzDWYsQg+EbEYINrwOIGD8QFQzs+oEdV/iehclrDu2Mz+uEg5lvWrK1kvPzcqdukTeurwQ==
X-Received: by 2002:adf:ea44:: with SMTP id j4mr36676403wrn.123.1560265831937; 
 Tue, 11 Jun 2019 08:10:31 -0700 (PDT)
Received: from arch-late.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id c17sm10756281wrv.82.2019.06.11.08.10.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 08:10:30 -0700 (PDT)
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH] media: imx7-media-csi: get csi upstream endpoint
Date: Tue, 11 Jun 2019 16:09:55 +0100
Message-Id: <20190611150955.8038-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org,
 Sebastien Szymanski <sebastien.szymanski@armadeus.com>,
 Rui Miguel Silva <rui.silva@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When the upstream endpoint is neither a mux nor a CSI2 module, just get
the source pad directly upstream from the CSI.

Fixes: 05f634040c0d ("media: staging/imx7: add imx7 CSI subdev driver")
Reported-by: Sebastien Szymanski <sebastien.szymanski@armadeus.com>
Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 drivers/staging/media/imx/imx7-media-csi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 9101566f3f67..8979ee0c8202 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -442,6 +442,14 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 
 	src = &csi->src_sd->entity;
 
+	/*
+	 * if the source in neither a mux or csi2 get the one directly upstream
+	 * from this csi
+	 */
+	if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
+		src->function != MEDIA_ENT_F_VID_MUX)
+		src = &csi->sd.entity;
+
 skip_video_mux:
 	/* get source pad of entity directly upstream from src */
 	pad = imx_media_pipeline_pad(src, 0, 0, true);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
