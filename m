Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E750D272022
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1FC985EC2;
	Mon, 21 Sep 2020 10:20:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gosncOc_2jG1; Mon, 21 Sep 2020 10:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D604A85F9C;
	Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59F871BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56CC385F9B
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id irPsJd9nrdOP for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B96C85F90
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:48 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x23so11544532wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7hg4hkt0xKc+u3OMG6BJG4ab1Qlz/YPXWuTo+eYO1gA=;
 b=I9A+ozHbjj5JIKiaEWlISCq0H27Pvji2tPH9MWl/bJlBO/XHBY+M9xbil5zUFwme8r
 RopHc97gNGKXhpYPb2FtNbXH6YJVWex7q8flecpw+CgjEZoGmYW2dFWs3e28zn2RcW8W
 u0BqgrDL6rfkc5QCTixqui4vUZ9hvKw6oCy5eL5XvLxrzk7xqLe0X3DgrPbLTJ3OyJJu
 Da7lRhMZXm50cMBW5GS5yE2f5MzK/dNRVh8YnNwIuk8Zh2oa2OGELlicuASRb1HUGg1H
 xEiveZMZmDXPoJsly6mRcaMfuDoNyFsBP+Bft/kd1lhQArcgu6n7mKb+Ar0zuFmIopv+
 vMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7hg4hkt0xKc+u3OMG6BJG4ab1Qlz/YPXWuTo+eYO1gA=;
 b=cdc7ZgTTgC2ruPVv0zecFy4vhqYTMW73o7bhuOut6y1TtFFSAUGlGuQApBKT4+rIgP
 2lJTOeq9KvRxQ12kyM/FSihaEffRgQxhR1txL2xL8H6wdzpcmpyj1BbR3zhL6XObPiFL
 JseLgqJ9y6AJlJdnQ9QNwHlkuX01WVTFgBXHtIHt+sntfzlPDBKhTrlV4e09Oxy9CB3B
 bzcnDa+pjkyNZrrCQ+2Dn/K9ivskvxnbZvOb1cQkRUsIkgEGwfweR44lmN2AWsE4kbOn
 5+rn7EfYIRZ4YdYYGRqNHNQQ2//oHD0RjZxwTZgEMcTnmPbLNaYdV5T683/xYLYqxpnf
 oW+w==
X-Gm-Message-State: AOAM532ipHGNXREah0Eatcg1igaWYC9GERgPjjJ+L540ngwYf9SRTgbM
 cabGtWRKtzW8aY+/jMleyZR97/wDtqExBQ==
X-Google-Smtp-Source: ABdhPJwJJAhkkByBZiA+u9aw9ZaL1S/4JSy8xlyXdLg6vqMKmmptWk2OW3Tnk20GbyYqMkxkQjAz+w==
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr29201004wmk.15.1600683647080; 
 Mon, 21 Sep 2020 03:20:47 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:46 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 15/49] staging: media: zoran: use
 v4l2_buffer_set_timestamp
Date: Mon, 21 Sep 2020 10:19:50 +0000
Message-Id: <1600683624-5863-16-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The ns_to_timeval function is removed, so replace it with
v4l2_buffer_set_timestamp().

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 31ed36906204..a996161cb276 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1197,7 +1197,7 @@ static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 		    fh->buffers.buffer[num].state == BUZ_STATE_USER) {
 			buf->sequence = fh->buffers.buffer[num].bs.seq;
 			buf->flags |= V4L2_BUF_FLAG_DONE;
-			buf->timestamp = ns_to_timeval(fh->buffers.buffer[num].bs.ts);
+			v4l2_buffer_set_timestamp(buf, fh->buffers.buffer[num].bs.ts);
 		} else {
 			buf->flags |= V4L2_BUF_FLAG_QUEUED;
 		}
@@ -1228,7 +1228,7 @@ static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 		if (fh->buffers.buffer[num].state == BUZ_STATE_DONE ||
 		    fh->buffers.buffer[num].state == BUZ_STATE_USER) {
 			buf->sequence = fh->buffers.buffer[num].bs.seq;
-			buf->timestamp = ns_to_timeval(fh->buffers.buffer[num].bs.ts);
+			v4l2_buffer_set_timestamp(buf, fh->buffers.buffer[num].bs.ts);
 			buf->bytesused = fh->buffers.buffer[num].bs.length;
 			buf->flags |= V4L2_BUF_FLAG_DONE;
 		} else {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
