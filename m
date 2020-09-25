Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB82927913C
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 60FB82E18C;
	Fri, 25 Sep 2020 18:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXBN-2NJPm2A; Fri, 25 Sep 2020 18:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 902C42E17B;
	Fri, 25 Sep 2020 18:59:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55B861BF23F
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 50CD487640
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QtHyZJnJh3M9 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:59:40 +0000 (UTC)
X-Greylist: delayed 00:21:06 by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAE75875E0
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:59:40 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id z193so1994480vsz.10
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S9MzB7+azPxcpMxlGiEMSs7z6RlW8asusze1qBJiaHc=;
 b=GiTZpxH0lW8zLiNCaHQKJWiu/l4nzYYVhfD4Q+FRYUWHufVBRmH/PLycl8xGFZ04vD
 a9cS10XGg+E+Ffx7MlqM0tgXpeQ/JTvNvsevtW+j/jINep15ZyAKN4W0VpUUcfINb1aX
 IkYbGf8RmvMHMSD0Js0G1erkBco6DXrGwbr6unqxZ5fo0kNbH7413bqRcXCr6gs3dpQs
 CInR2PPf8FjQnWLtFAOke4X1mgf+gWJRKnWOCueDeC15Xv4KW8TgmAni+ec0MptpiNkQ
 wPLLqWHXCG3weNTaaJ7mG3yf4AQ5KdiT2d9D6tIap/o5L4Gc5YVoHrYgnUbkq/H1+WxG
 Gq5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S9MzB7+azPxcpMxlGiEMSs7z6RlW8asusze1qBJiaHc=;
 b=A+Nckn/vLnFRgbEdxilBPD398v0w/lJbgdD9ODsemHdpJJdq4PU8MgQS6BXFM9qg7C
 jC7NtgCUAu6pmqkJEys8VnEUZn3HAnq8gC/uWMBHBefBfKIT5R5JSzt4g0EJIZeID7tp
 /ZiZdZ7CykmDLAjXAUdlXJtEsLaPy7FWLC5aU0e/7VxKd/pj21W/6OKHCQ3IWq/n8sBK
 bjODbGqVTmIoMPBeOwZSJs3t9R0n5Rzt1mP5PyH1ImGY6HrRxWJKwN2KaEpzYjrDPIAR
 GNjst1VscZqGaCx2Zq6t+mOHlHbv8H2twJVpqq6F/abmZhuDIk8e3wanuqQA5gGGMsiI
 Qexw==
X-Gm-Message-State: AOAM533ZwQ4abTrFR2ezxidNFiIM+/+P8GBmOYC9gQUh3yDpaeldpBNR
 POyQHjZciHqPslcidPKpZMhgePajVfmM0g==
X-Google-Smtp-Source: ABdhPJxXOC4LKM9TnKO9HWTZJm0lMuRnGb9ccLgz0ZV43d4dkGVMSIn5UxNpkVjJF3tt+R99Y88jjA==
X-Received: by 2002:a17:902:8c8b:b029:d2:42fe:370a with SMTP id
 t11-20020a1709028c8bb02900d242fe370amr671414plo.83.1601058955266; 
 Fri, 25 Sep 2020 11:35:55 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 47/47] staging: media: zoran: update TODO
Date: Fri, 25 Sep 2020 18:30:57 +0000
Message-Id: <1601058657-14042-48-git-send-email-clabbe@baylibre.com>
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

Update the TODO of the zoran driver

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/TODO | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/TODO b/drivers/staging/media/zoran/TODO
index 54464095d0d7..6992540d3e53 100644
--- a/drivers/staging/media/zoran/TODO
+++ b/drivers/staging/media/zoran/TODO
@@ -1,4 +1,19 @@
-The zoran driver is marked deprecated. It will be removed
-around May 2019 unless someone is willing to update this
-driver to the latest V4L2 frameworks (especially the vb2
-framework).
+
+How to test the zoran driver:
+- RAW capture
+	mplayer tv:///dev/video0 -tv driver=v4l2
+
+- MJPEG capture (compression)
+	mplayer tv:///dev/video0 -tv driver=v4l2:outfmt=mjpeg
+	TODO: need two test for both Dcim path
+
+- MJPEG play (decompression)
+	ffmpeg -i test.avi -vcodec mjpeg -an -f v4l2 /dev/video0
+	Note: only recent ffmpeg has the ability of sending non-raw video via v4l2
+
+	The original way of sending video was via mplayer vo_zr/vo_zr2, but it does not compile
+	anymore and is a dead end (usage of some old private ffmpeg structures).
+
+TODO
+- fix the v4l compliance "TRY_FMT cannot handle an invalid pixelformat"
+- Filter JPEG data to made output work
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
