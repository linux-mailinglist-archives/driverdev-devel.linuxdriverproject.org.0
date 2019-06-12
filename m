Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 60224421E4
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 12:01:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01ACA226A0;
	Wed, 12 Jun 2019 10:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFN5IGUbJUlU; Wed, 12 Jun 2019 10:01:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4D02922643;
	Wed, 12 Jun 2019 10:01:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC0FE1BF29A
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:00:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6FC884FB0
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 10:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJ6c7zONLv3U for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 10:00:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E162284F76
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 10:00:39 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id v19so5846072wmj.5
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 03:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xs/onsvj8LhvP480cm22UcwXWUrCKOKzAtSdr56bwcY=;
 b=cJ5zsX5/F64ZPa4vYXKat/E7bPZzkKxV+yrIkeNzVwPTXTEFD1YDFJA1eO60MrVvFO
 gF4Ls9p1tNOLm1iWWMmX7FCy6n1FsosIRSKLG+rqzP62n+xy84/Dl6YyfPeDLUIFTVH5
 26PbcJR9Xy6TY0z9fbwZZ1la0nI6air9+lMj5FwtOWfyzrzWzzAG4ckvSQWn6AKRPq7h
 s2gFmJ5nCMUwkFkfkrDYyHE4scx2wxxemf7ZFneNK9JA0D002UvEaLBMrPMXX+9LxF/9
 0f00wEjtL7etS+b+iaakFTpK5HKR221AmxOulwCNQBjiAqSokpDkWGI8TkyX884FKrCq
 GGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Xs/onsvj8LhvP480cm22UcwXWUrCKOKzAtSdr56bwcY=;
 b=hh+G+EXCByKVunk6j86+Z39u8sTUfzVim/LmsuHWBBq3Jqz97Oxmu5brAUylhuaAek
 Mw5eU5ZxlP3mhbpEOjIcBGyVBdgxdPnkdZ+S/LgWBsp8+RtaUTvJDGjHd+VnyYOh93Bw
 lWTJC3mEH4R9wLUC5E3W2hbyp6byHg3+VMTrilOcc2HViOm9xX9HkGEdgEDWAmW6LZKv
 dKaDdW6bXp0MN3j/xWud2wHeXFh8afZgWruvwEVZurfhYzu4b7LVyg8xSizaUSsM4DNo
 fHFjLlVn25daUAemqWmHrIX+l/gcA93wkb9OWW+xIlvzH/UatlhNUeIrWXAY+ih70y8n
 h4zg==
X-Gm-Message-State: APjAAAUFUfkAOrrH8JhZYl5446xwyhRKtbZHaDcG7VXRWK2IYXrtP1FN
 HFJqTal/DuypFw5paXkBYVvdhA==
X-Google-Smtp-Source: APXvYqxi5qt+Z77Cjl7zSYBDtKZQi8K7Mm14k1yNCutmnw1+eEMvhZsyOJPio+rVXgczYSgJVM5eGQ==
X-Received: by 2002:a1c:f018:: with SMTP id a24mr2731643wmb.66.1560333638470; 
 Wed, 12 Jun 2019 03:00:38 -0700 (PDT)
Received: from arch-late.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id t6sm5742864wmb.29.2019.06.12.03.00.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 03:00:37 -0700 (PDT)
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v2] media: imx7-media-csi: get csi upstream endpoint
Date: Wed, 12 Jun 2019 11:00:28 +0100
Message-Id: <20190612100028.6138-1-rui.silva@linaro.org>
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
v1->v2:
Dan Carpenter:
  - s/in/is/
  - align code, and white space fix.

 drivers/staging/media/imx/imx7-media-csi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 9101566f3f67..f775870df7e0 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -442,6 +442,14 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
 
 	src = &csi->src_sd->entity;
 
+	/*
+	 * if the source is neither a mux or csi2 get the one directly upstream
+	 * from this csi
+	 */
+	if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
+	    src->function != MEDIA_ENT_F_VID_MUX)
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
