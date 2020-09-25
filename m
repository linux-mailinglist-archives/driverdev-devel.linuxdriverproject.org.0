Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1F5279132
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1E6F875E8;
	Fri, 25 Sep 2020 18:56:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpwFLfkr71tx; Fri, 25 Sep 2020 18:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76C37874DF;
	Fri, 25 Sep 2020 18:56:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C2921BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1328F2E17A
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wAOaz5hlYy+A for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:56:43 +0000 (UTC)
X-Greylist: delayed 00:17:23 by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 49B8D2E178
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:56:43 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id z18so1905433qvp.6
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0rovwPvmS8/36q5dDn1a3LG+OYH5UJmxXVMPAQ9dEHM=;
 b=Wz5VqyMaLoP5zv1xtjWwZaV6vWDxog4V2ZHjj255CjAVaZLn8qJ8vvFpJkq9dWw0Lf
 +bsfKUhl7WDfo2ge/cGxIwsRXUbnWQi3+sm0oEoybpvIekZbAtdXDinF9nUnhXOkJGC2
 +19IJXQGYR0Qt6J/DI6OVi1qprWDpczQ/5p3lqnmJJFSZ9wA+/v0Eujxl5gO6YxcHPnd
 L5w9eSplFjaIPPOAt0AqdFh6L/y2OYVxmXSD2mAdhV09yeZXC/12KtLDxFD2L7lwFK7r
 iESZNGZotJQ8/m3SzODjAncct4/mdvN9BqqLuPyYRrBEAEUTj0pn7AESyrBHRnslD989
 9b4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0rovwPvmS8/36q5dDn1a3LG+OYH5UJmxXVMPAQ9dEHM=;
 b=fEDnCr+8mp3w3/1TZ2J7DZ13iItwGTXM4kR1aYBu5H5bizkG85fttBN6XjV8upwYuN
 MSFxVaS40Hl7+jGOW00pkswpPeNBkg4uNKEPPm/Sg/YZsyW7H5GidYSCctHDlOBKVJ+k
 VGtd53tHByqg667Fv7TrmtceoypvbpccRYZsUOKD6RLfpBH6LTKswn0ZnNyx8zbQI+Ag
 D7D++I9lNzUdaGXA39ph6CVvSDiLRYY4ZDvbvqFSxIrvXuqi8EM5uE6oXsUZznRMI7FF
 BHbJp4+2tWcElhppPXpC6iNGz8FxYpaASM7mFDK7Wshhna0BHzhUZa2Pk/JN59FisaYk
 iIWw==
X-Gm-Message-State: AOAM533gNKGab79Rsdf0qmanXF68PXOYdOefGOLplGwPuKAZ/MswcExm
 l/ZZAtS6iDp60d8cV7AqEpvAZQ1dK48SUA==
X-Google-Smtp-Source: ABdhPJyRbga0YgMv8IgWmr4NsJM5lMVhcRN0dmA71ZT694prdtpkKXABq2k7yQvL7e18LNDETZviOA==
X-Received: by 2002:a17:902:6941:b029:d0:cbe1:e76b with SMTP id
 k1-20020a1709026941b02900d0cbe1e76bmr739118plt.18.1601058760861; 
 Fri, 25 Sep 2020 11:32:40 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.32.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:32:40 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 14/47] staging: media: zoran: use
 v4l2_buffer_set_timestamp
Date: Fri, 25 Sep 2020 18:30:24 +0000
Message-Id: <1601058657-14042-15-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
index 0d6c58a4161e..e74fd6a62606 100644
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
