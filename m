Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B245410606A
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Nov 2019 06:48:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 283A9855D1;
	Fri, 22 Nov 2019 05:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahX6rL63S_bI; Fri, 22 Nov 2019 05:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06EEC8506B;
	Fri, 22 Nov 2019 05:48:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71CC31BF5DD
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 05:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E4F58653D
 for <devel@linuxdriverproject.org>; Fri, 22 Nov 2019 05:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T3Df+FbmOjy7 for <devel@linuxdriverproject.org>;
 Fri, 22 Nov 2019 05:48:09 +0000 (UTC)
X-Greylist: delayed 00:31:51 by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CA0A387F9A
 for <devel@driverdev.osuosl.org>; Fri, 22 Nov 2019 05:48:09 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id b1so2804408pgq.10
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 21:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pur8D56rYiQ0M1ceqnI28F7eCh0YYOJc2gZei1cSwYw=;
 b=QUuL2c+xQxdrPyysEXsec8QavmH64GVr/WK5Xy2ffOtjwjSkRDU8nM231KQZ55gTT+
 o95OPytdoXojkQe06wVttIqQ+d8ikveWepYkDjh3szE/vnrqQQwCVhIHbokE9ohTbJBr
 Qir9fZmE4Y8oLlw+ShfjvkYD9U9A5TCKfg4Jw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Pur8D56rYiQ0M1ceqnI28F7eCh0YYOJc2gZei1cSwYw=;
 b=HJ37HEl0W5CnuqDlwWQDsXKtVNTxXwMgIEEUM4OfRybv9Ri7R6LvNsWd617s20ep7f
 C+ZqR8dzAIhg18U7/acIJps9J2yPgyEB0KZD1z7VYfeW2rGHONB9yty1rDrodAXtrGbh
 stBHHtmkEFVIV7Ivut7zBvo6/I4tFEso8ni5CImoLOsk/FPXZNnnJrsH+v2bh0X+IOsT
 3o4YfqwZ2BNNB8hr83i8Ys9lkxRVc3FxkrEvYgejVt68s5bmkrwEMm8wrmiNoNyabWT+
 QHIUKg7oWkZ2U7nK+nYt9PQbF5q3RIj15ttdXFesG8PbfWbs+/CcqMTDolRpJyXIIaR7
 Q7WA==
X-Gm-Message-State: APjAAAUmrRVF09cOfX3N/4sbF+xJg0aIIHyg89o8lae/I6V5kHfBIlZK
 0kKDDzEFNXIZ9TGstOGBG2kpysOstiI=
X-Google-Smtp-Source: APXvYqwm6Bo6Fpvepq74mr6KZ7xSHs2WiOshfDeBDm7ixVWj28grrqSlnrpqRI/kf/OPwZ6eICDjRg==
X-Received: by 2002:a63:fa0d:: with SMTP id y13mr13431599pgh.18.1574399777846; 
 Thu, 21 Nov 2019 21:16:17 -0800 (PST)
Received: from hiroh.tok.corp.google.com ([2401:fa00:8f:2:3bf4:6372:5b56:dd4c])
 by smtp.gmail.com with ESMTPSA id m7sm5756049pfb.153.2019.11.21.21.16.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 21:16:17 -0800 (PST)
From: Hirokazu Honda <hiroh@chromium.org>
To: ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org
Subject: [PATCH] media: hantro: Support H264 profile control
Date: Fri, 22 Nov 2019 14:16:08 +0900
Message-Id: <20191122051608.128717-1-hiroh@chromium.org>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
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
Cc: Hirokazu Honda <hiroh@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Hantro G1 decoder supports H.264 profiles from Baseline to High, with
the exception of the Extended profile.

Expose the V4L2_CID_MPEG_VIDEO_H264_PROFILE control, so that the
applications can query the driver for the list of supported profiles.

Signed-off-by: Hirokazu Honda <hiroh@chromium.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6d9d41170832..9387619235d8 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -355,6 +355,16 @@ static const struct hantro_ctrl controls[] = {
 			.def = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
 			.max = V4L2_MPEG_VIDEO_H264_START_CODE_ANNEX_B,
 		},
+	}, {
+		.codec = HANTRO_H264_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
+			.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
+			.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
+			.menu_skip_mask =
+			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
+			.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
+		}
 	}, {
 	},
 };
-- 
2.24.0.432.g9d3f5f5b63-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
