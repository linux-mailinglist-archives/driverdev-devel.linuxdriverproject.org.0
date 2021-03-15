Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF1133B2D3
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 13:34:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BE3A430F1;
	Mon, 15 Mar 2021 12:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORTHNTZfEAUG; Mon, 15 Mar 2021 12:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61E79430E9;
	Mon, 15 Mar 2021 12:34:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD6D21BF398
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 12:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CF8E82A72
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 12:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzjKW0Wu9vSL for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 12:34:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A0A982ABE
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 12:34:11 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id e19so65968634ejt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 05:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1xoa3G+ISwKSIeuqcwnTgZqAGyqpi/mTiJ1R03k5mAc=;
 b=LVWU4ordRDJ4NugmIqMqf+p5Llh9f5FzvOIzFM4b15JxtT3XC0042nqDEoZatqLSoV
 JpFGPD0n2tJdGQDzDOGYjPBtfpFxAy5DMUzmjQ0cwHJn8jt9UCmSad/tFTVrJT4PZXCz
 LIaFZxddaQr9VAgYrOqJleg4s94tHuhXJS3m4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1xoa3G+ISwKSIeuqcwnTgZqAGyqpi/mTiJ1R03k5mAc=;
 b=Otc2mAxkhu2tYVROigZNxSGws61rxiDX0eNrPonl8qmGcXEB7gBPMphr/BcTrauqsl
 Jt/hpp3KY2o1N3uYkQtdQWaJEXMxLMCBU1SWPDZKl/MZRsFvakyNCg+hMzKYg+Yak0wu
 U0XCZbshF7mEb8EO5o29eXNSzhuQf0dQrUTNn/0jhIXMzdDhU+afnXbeiFi4O2nRximj
 jDeQ85eXkseJpdgDjaFkUcEAKthsLxbxfNo8p9XFyH2ejjOPYYh0Csv+OsMyEGV5kidK
 3fFbuPpwqgwHQYsofivG1inkiMWGyo1uSGA85tUcP0dATNJvb3gOig2tmQUhFYWM4lYk
 VOCQ==
X-Gm-Message-State: AOAM533mxVzbGpTE3NJAJJnkzwdmZZquOGMzKWI6KxCcx4m/GM9aakPt
 xr37A0IsX4WaKQHmDWjdhoxptA==
X-Google-Smtp-Source: ABdhPJxbz1uomQZnioarVABqV3L+IGQZFx3lXkxNbJZJrcgnEuUdljiCLjtxg/f6IbAHcTmWTaan+A==
X-Received: by 2002:a17:906:380b:: with SMTP id
 v11mr23826856ejc.183.1615811649657; 
 Mon, 15 Mar 2021 05:34:09 -0700 (PDT)
Received: from alco.lan ([80.71.134.83])
 by smtp.gmail.com with ESMTPSA id p3sm7155128ejd.7.2021.03.15.05.34.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 05:34:09 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] media: staging/intel-ipu3: Fix memory leak in imu_fmt
Date: Mon, 15 Mar 2021 13:34:05 +0100
Message-Id: <20210315123406.1523607-1-ribalda@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
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
Cc: stable@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We are losing the reference to an allocated memory if try. Change the
order of the check to avoid that.

Cc: stable@vger.kernel.org
Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 60aa02eb7d2a..35a74d99322f 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -693,6 +693,13 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 		if (inode == IMGU_NODE_STAT_3A || inode == IMGU_NODE_PARAMS)
 			continue;
 
+		/* CSS expects some format on OUT queue */
+		if (i != IPU3_CSS_QUEUE_OUT &&
+		    !imgu_pipe->nodes[inode].enabled) {
+			fmts[i] = NULL;
+			continue;
+		}
+
 		if (try) {
 			fmts[i] = kmemdup(&imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp,
 					  sizeof(struct v4l2_pix_format_mplane),
@@ -705,10 +712,6 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 			fmts[i] = &imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp;
 		}
 
-		/* CSS expects some format on OUT queue */
-		if (i != IPU3_CSS_QUEUE_OUT &&
-		    !imgu_pipe->nodes[inode].enabled)
-			fmts[i] = NULL;
 	}
 
 	if (!try) {
-- 
2.31.0.rc2.261.g7f71774620-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
