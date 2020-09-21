Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E91272032
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D61281E34;
	Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 954mRkyzxt4J; Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8C5C871D6;
	Mon, 21 Sep 2020 10:21:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C11451BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE464871CA
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfSxD9mHvy6C for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C4E4871DF
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id y15so12017481wmi.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S9MzB7+azPxcpMxlGiEMSs7z6RlW8asusze1qBJiaHc=;
 b=cqXso1WeXMsOQTSMJsnRpwW6vw8vb52dEKHkPuvZGM4VKop5MTyriQZCa2VAmgKXOr
 6c1e4BDDBKbJYdmtHs7EAJGjgrXlmHeffln/7gNXCUsNiyp/6bnDDzABtDtvgm83WBbu
 wpeVMsoLT2gdb7UfQkoUQ+K0wPFRtw0xbm6wokBSi3Zrb1vr1VOl0O94XHk98PWCgDnx
 HdNgaO/cwSEPz6RWMBmR8iMS3WJt8dd5N2QRjE1KkALT17HYzXNJug5lQ14x3Kcx3RF2
 dWxYAgtv5XGlFBpF/dOyX+MNmI88hbCjsdHMzpXpyHEVYOfX7Swy8MPkhGJHhh31ycDS
 Rxog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S9MzB7+azPxcpMxlGiEMSs7z6RlW8asusze1qBJiaHc=;
 b=me6ADQu/gEMysI14L78ti4aQY4lO4Kzfqs7TtQjv5pB1FvUMrX7cUn4yZz+fvWhhC1
 Z9FlqJsOFfcPULBlo7iGYxWHCU9zGHezgIgCWHiEdIlAbAld06fPe+ZSTaTv36jcVUdi
 TrwJ7DhY27b5mfxNVLaY2g3iF/ACb4RJsL42ET5rGrV3VjyGr243Ec8Vccp6IyfxIJq7
 Jc2bZxDyDfRrQud3hAhe0fJynVsbzAtSdPsZlg8Y+qle6A36IwicTmotcBNNs1cpQgPm
 Wek4PrMR3r7a+Re5/gXfCOI4L+r/ewKzUjz50fCTI5cP/hVB704wcfYp1pWD1r+kwu7D
 BwHQ==
X-Gm-Message-State: AOAM532NyMu8IMU/ToNxS19M/1BjsFnbK4xda07Qbv+Ondp3y7neAmLG
 cJs22v7Ss5ohiSub0Xpna3ZGgQ==
X-Google-Smtp-Source: ABdhPJwLLiqE0xL9dMMevVsNtAO5akGgDxGF9LqBxoG4mXvA7KUeZ9nz/B8s78vAAAQzdhd3oK38Ig==
X-Received: by 2002:a7b:c317:: with SMTP id k23mr28413581wmj.44.1600683678660; 
 Mon, 21 Sep 2020 03:21:18 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:18 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 49/49] staging: media: zoran: update TODO
Date: Mon, 21 Sep 2020 10:20:24 +0000
Message-Id: <1600683624-5863-50-git-send-email-clabbe@baylibre.com>
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
