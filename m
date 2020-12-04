Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB822CF7B1
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 00:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C794520503;
	Fri,  4 Dec 2020 23:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ywTNaVBTeemT; Fri,  4 Dec 2020 23:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 466DA204FF;
	Fri,  4 Dec 2020 23:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67E011BF3DF
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 23:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54049204DD
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 23:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h3LIggkiTKSR for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 23:51:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f67.google.com (mail-oo1-f67.google.com
 [209.85.161.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A6811204BA
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 23:51:52 +0000 (UTC)
Received: by mail-oo1-f67.google.com with SMTP id l20so1817972oot.3
 for <devel@driverdev.osuosl.org>; Fri, 04 Dec 2020 15:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=xEkMnTiVHY+tC4E6hkhP6genGPHTd0rY7OtoiGotd8g=;
 b=rd0aiJ3ctb+1EhFlogqQIof+oUylf8/J7pGvmiqigxpJDioooFy/xANBc1OnaBeSVn
 vGfoaF0At8VJukQuiv7UX5YLX4AMwQ7B+ZlkTzzAvrBKADUjhAn/gjezQADZg+HNqYg6
 SyJYpebRTj+vQoWUWKel1L0jqNSoRHaPfflS6YryvVP269mn1ubj9QAG/LmzOf/5vheU
 FvZBOxmRLjs0BLo8VzmrYZ7zM0mvwQxfL2lZPWz/eNrjWO8ZJYZZCeJBzjPelR2kHqfq
 5HhiFF9mh75NBYgIe+UQdJc55+zhINqzuTByWRyVMK3iDfhewsAb7faQgsIDfGnUNh7P
 Nwxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=xEkMnTiVHY+tC4E6hkhP6genGPHTd0rY7OtoiGotd8g=;
 b=SLvJx+IM9GeTpGCcAu3bAmGnROqAVPlD6R2ejM8kDJSafVFVPZOSxSfo0ZkmkRm2Yz
 fYyDEcM1T4f+5nL6TpIup57k/6YlDSN1fvGWt7fSk675ijSSWH0xtP1URYHmAN9xKRpL
 beJiBudlJ9OB1xFzYl5FcjJMinHlqsHNKI9/bFdH53maMf8tmDxFg/8R/h3e6i5TiORD
 sttfnbi2VUBF4ngQqngeyrqq9ysS/JrxmYTGYmBgQer1OfHRzuoLckFsSpDH6ILHiDws
 5iWUT0b6ywcb/kFjSTtiTIHeHAVIckh9notUzXH+8HERMy06mGe4Ho7yg82F/9d4LF1Q
 APnQ==
X-Gm-Message-State: AOAM532M7TqyniJon1O5gExNaUWmTVwI/x3vhaYj1lpZ5i4ecQK/7ydF
 qeuDpjvg9X4ezYuUntLDXY4=
X-Google-Smtp-Source: ABdhPJypWDrjey6sPHgLyA6MYay2DhOehGE8F6wPc7fjNGF9WQu/jt2OVGaDwMyEY3yUKKD2D+Zebg==
X-Received: by 2002:a4a:4988:: with SMTP id z130mr2777945ooa.34.1607125911964; 
 Fri, 04 Dec 2020 15:51:51 -0800 (PST)
Received: from linuxmint-midtower-pc ([135.26.31.16])
 by smtp.gmail.com with ESMTPSA id l12sm1026266ooe.27.2020.12.04.15.51.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 15:51:51 -0800 (PST)
Date: Fri, 4 Dec 2020 17:51:50 -0600
From: Travis Carter <traviscarter2@gmail.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Subject: [PATCH] staging:hantro: Fixed "replace comma with semicolon" Warning:
Message-ID: <20201204235150.GA8626@linuxmint-midtower-pc>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Corrected the following Warning:
drivers/staging/media/hantro/hantro_v4l2.c:319: WARNING: Possible comma where semicolon could be used

Signed-off-by: Travis Carter <traviscarter2@gmail.com>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index b668a82d40ad..e1081c16f56a 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -316,7 +316,7 @@ hantro_reset_fmt(struct v4l2_pix_format_mplane *fmt,
 
 	fmt->pixelformat = vpu_fmt->fourcc;
 	fmt->field = V4L2_FIELD_NONE;
-	fmt->colorspace = V4L2_COLORSPACE_JPEG,
+	fmt->colorspace = V4L2_COLORSPACE_JPEG;
 	fmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	fmt->quantization = V4L2_QUANTIZATION_DEFAULT;
 	fmt->xfer_func = V4L2_XFER_FUNC_DEFAULT;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
