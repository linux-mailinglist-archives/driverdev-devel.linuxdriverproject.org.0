Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 134022F11A7
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 12:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F8B586767;
	Mon, 11 Jan 2021 11:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rdi73025eb1I; Mon, 11 Jan 2021 11:41:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5508F86686;
	Mon, 11 Jan 2021 11:41:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83ED51BF3E3
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 11:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8082386F8A
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 11:41:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ThhCEhcQ+V3z for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 11:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 894BE86CB6
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 11:41:40 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id m12so37253640lfo.7
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 03:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lXOWeR9801FrisPggQzBoR4P1LZC0ogSzc7qiclRxzA=;
 b=Mf2f7LJM9bPXCaZWpu+DA3F8zjBC3NYdKnghIBztANh6OSOVMK4LbhwONJlFeqAU6H
 pPSrTCV6Jx9bvjcyGbOIGMOKxmMwu/jHp1FqUYKRJnRF7aa8ssiiz/i2Ojgla86zeC67
 RFZq1mjsHkMRdKKz0w0brsi7WTIhAR8EMNdFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lXOWeR9801FrisPggQzBoR4P1LZC0ogSzc7qiclRxzA=;
 b=nV9A7iEYVfTePDnYs/5DoTUvUtka+N/0izeDOt6e7VI80hRK7z1FOrAS0qk/E8a1Jt
 oFXLCLDppe+coFF+ZdHcFl9zgjXaABAtKKy+wqPI5eSWWmy+w5BXddmrk6SXOru46DtC
 TKcR/JrdZPCUGyUCs+AaNzX239h42yIwVoX9Ssnc4QiNSKbj8Ts0T3MVf7efdTQI/NeP
 gumPOL698An2itee44ldai5CqdW0Zp8C97NYpkuUIbavcC6EEikCMznL11TP0jCV0JlE
 pTAmyp/Tp79PlQYWyshNjbJFM3RszXjGdZqqRLuTIfUH7r29YonUKCp9nZbJHeEdgL/p
 j/CQ==
X-Gm-Message-State: AOAM530CFPvRgCQ78g+KEluThjMbkkq2cdX+HpBaid0EMFu1ayCSjmV8
 xWsYsWpx1Ymok8AY6VtsXl/FIqHm45vz1Ns5
X-Google-Smtp-Source: ABdhPJzwxJwfY2vvKcY/y88PUCnedWNHcDU/ytPX64NcJqeDQDiDRVSjMIYqBwltXgDOoc01CDFlTw==
X-Received: by 2002:a05:6402:307c:: with SMTP id
 bs28mr13865398edb.186.1610364931540; 
 Mon, 11 Jan 2021 03:35:31 -0800 (PST)
Received: from alco.lan ([80.71.134.83])
 by smtp.gmail.com with ESMTPSA id rs27sm6982564ejb.21.2021.01.11.03.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 03:35:30 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] hantro: Format IOCTLs compliance fixes
Date: Mon, 11 Jan 2021 12:35:29 +0100
Message-Id: <20210111113529.45488-1-ribalda@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
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
Cc: Ricardo Ribalda <ribalda@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clear the reserved fields.

Fixes:
  fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
test VIDIOC_TRY_FMT: FAIL
  fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
test VIDIOC_S_FMT: FAIL

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index b668a82d40ad..9b384fbffc93 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -239,6 +239,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 	const struct hantro_fmt *fmt, *vpu_fmt;
 	bool capture = V4L2_TYPE_IS_CAPTURE(type);
 	bool coded;
+	int i;
 
 	coded = capture == ctx->is_encoder;
 
@@ -293,6 +294,10 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 			pix_mp->width * pix_mp->height * fmt->max_depth;
 	}
 
+	for (i = 0; i < pix_mp->num_planes; i++)
+		memset(pix_mp->plane_fmt[i].reserved, 0,
+		       sizeof(pix_mp->plane_fmt[i].reserved));
+
 	return 0;
 }
 
-- 
2.30.0.284.gd98b1dd5eaa7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
