Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B1279146
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:02:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B12C386E68;
	Fri, 25 Sep 2020 19:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tSV-NcVjo3NP; Fri, 25 Sep 2020 19:01:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9189C86DCC;
	Fri, 25 Sep 2020 19:01:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7471BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4831E86DA9
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2rV6bSz0isKm for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B50FA86DAD
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:01:53 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id u126so3806877oif.13
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C4GJC10a2+hCn4g9r7dLW6g/oIvJ1zlU86Tsyu3Timw=;
 b=heRs13jvgdjnNGEFiq21ofiZ01LsSMrdh4OrqEnJu1A/1QmdcY6aAjerDOqnk9rD38
 7SZiXiuecuKyxA1rrcUwZu5ylgH3aKfWm479w5mK4AP7MPkohpv9vYX3SSDwCMgPLNfb
 YRQwnwPMFK9w7mGRjb6eZpkmSj4rw6IazoJSuAYsns+RommF3Vgud08sv+/5N18jWatU
 SMq54p3OGf9vxF1xI+frGsqF5D0BFAMecv/8+/CKwYCm2I4Xz//nhmnl4uKX4L//KiPP
 mAE5Ptyx9r0OpVPt8i4Rh0s7L4FSKrGStcqH/Nr9D/hxosSRgm8WJZMwSUNu8DRDu/+j
 5u7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C4GJC10a2+hCn4g9r7dLW6g/oIvJ1zlU86Tsyu3Timw=;
 b=mpBsWwMsPvY8PeEEflVY53nqQnNVsyW+sOWMdRZ6kna0Gr+E8I65R8Q/G2YZhAfK+w
 xe3G+uXwf/Wps7kks3G7ecdkH3zGyKNrxh7T2jvIIqF4j6OvnLuncY16/PFROKSFhKTV
 WqJNFpSp8tFen2N5Bn1ICGu2ehX6YNLhXFZUpBGbi6uvIWlfay/Tk2avkt03ScQ+CblU
 DeRfR1vSosUOxkdQmA/lVc+i1F0/ajJL+3brrA4zFMUTiDd+OKPljiXAjN99JQv0gfbX
 ZzPsNgCyntNqV3m2l0OGzr2VOf/RjYrqPi4VTLuFbCaBATPZitQfDXfk8awUsDF4SmVQ
 /qjw==
X-Gm-Message-State: AOAM532Z8KpMc9QFA7gMw2MBKuN0yICIooo5P87H/9oGlR4CctHQrRa3
 6NgUjIA3zmjxsJwGPgXHUMMbmq5/gdjwVg==
X-Google-Smtp-Source: ABdhPJyoaLEuGkpN/mI8qVTRNC+bVoc5tZaZEV+CaoSkYkudh7F9+08YbRROhLhLw6NvYs2koFkDig==
X-Received: by 2002:a17:90a:f992:: with SMTP id
 cq18mr814447pjb.172.1601058766740; 
 Fri, 25 Sep 2020 11:32:46 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.32.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:32:46 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 15/47] staging: media: zoran: do not print random
 guest 0
Date: Fri, 25 Sep 2020 18:30:25 +0000
Message-Id: <1601058657-14042-16-git-send-email-clabbe@baylibre.com>
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

The slot 0 of guest is never initialized and so we print later random
data.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 04ba22a915f0..dfc2551f2d71 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -158,6 +158,9 @@ static void dump_guests(struct zoran *zr)
 	if (zr36067_debug > 2) {
 		int i, guest[8];
 
+		/* do not print random data */
+		guest[0] = 0;
+
 		for (i = 1; i < 8; i++) /* Don't read jpeg codec here */
 			guest[i] = post_office_read(zr, i, 0);
 
@@ -170,6 +173,10 @@ void detect_guest_activity(struct zoran *zr)
 	int timeout, i, j, res, guest[8], guest0[8], change[8][3];
 	ktime_t t0, t1;
 
+	/* do not print random data */
+	guest[0] = 0;
+	guest0[0] = 0;
+
 	dump_guests(zr);
 	pci_info(zr->pci_dev, "Detecting guests activity, please wait...\n");
 	for (i = 1; i < 8; i++) /* Don't read jpeg codec here */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
