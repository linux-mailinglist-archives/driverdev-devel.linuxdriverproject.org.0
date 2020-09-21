Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E4272023
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D045871D1;
	Mon, 21 Sep 2020 10:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XeNAZQrbMK3o; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9E211871C6;
	Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 303661BF966
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 298C72051A
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YxtuUsWjtpM3 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id DDBB920506
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:45 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x23so11544404wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3+BODOaAXA+uCGmzHO/lJ88Q7uOk7/VYMBsUUN6E7FI=;
 b=g2ZZiy2uI7gbXpoEi2F50flRdFq1ECigCJz6wdUdIQYHcawsArICTGRu5VXPUhOqxz
 BKklg6BeS6jJvIh+HoVfJXRi8BO/7K7HR8DMlVXNXZiaiTpd8Vf1g+VJUWo2dJNys2MP
 KfN6zqWB/n+twqGa3g2MQtq79oAG83WTdYf5fzoD57GbX5gkesP+a0Zyd67xb95IAMo6
 xvWjKG8RsNkwGzxB/9ePE0g6f+Kp7UZVlgx/W4P925AP4tRS9nVSY8uJ6+r8NnWUnrxL
 KTrWooeGuI7+C4tZZ15K21pC+JofulEB+fYRSxWvKx4GuoWuqd9MMu1wTECKEvOturnL
 wzUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3+BODOaAXA+uCGmzHO/lJ88Q7uOk7/VYMBsUUN6E7FI=;
 b=QvotqkefAl3H/EV+zFgPpTMXpUFmoI0X6dl5cw57uMt5P+QxF/BWQD/xBjV8iUp6FH
 Jksra644weT+ORRJ44szqJsfPkF2FdbwT2SO60ukPgKdmtmlfuhVORwIU2JzPkJL5avU
 qMwUSSpYnPpfWacYF2dH5XX5k+T9CPFRctVNSrJmBd5PS98iK5/yMwrRyDya+Nf6KVGu
 C0eQDlUQ0494uc2yXAnB76jB0/od4SwXAZJMhEiyhuBw4irkHQvXzx1ELgRdUEXNdW46
 fMhAHwLePZFfMZYtzXSYDOZH46PGhOM69GjNivDt1RkoD7wZCVp4VB3nhPHvTYdwVnkz
 mZ4g==
X-Gm-Message-State: AOAM533zWiu9CxKqoo33u7OAo+xp7cCaXJ1QuxFPbqiPp/dFsHiBfV3J
 tqX6YtVOSCNg8g0O+7dM5HRq2A==
X-Google-Smtp-Source: ABdhPJx/OW+rrphaBSknMg7GqCDSQ46jnMDP5ojIonXfLVvVb0RNJxHTiZB4zTGsRPyjTGtIWxph7w==
X-Received: by 2002:a1c:4943:: with SMTP id w64mr28400063wma.62.1600683644388; 
 Mon, 21 Sep 2020 03:20:44 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:43 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 12/49] staging: media: zoran: zoran_device.c: convert
 pr_x to pci_x
Date: Mon, 21 Sep 2020 10:19:47 +0000
Message-Id: <1600683624-5863-13-git-send-email-clabbe@baylibre.com>
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

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 516a7f18ce7a..03ad3562a807 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -162,7 +162,7 @@ static void dump_guests(struct zoran *zr)
 		for (i = 1; i < 8; i++) /* Don't read jpeg codec here */
 			guest[i] = post_office_read(zr, i, 0);
 
-		pr_info("%s: Guests: %*ph\n", ZR_DEVNAME(zr), 8, guest);
+		pci_info(zr->pci_dev, "Guests: %*ph\n", 8, guest);
 	}
 }
 
@@ -172,7 +172,7 @@ void detect_guest_activity(struct zoran *zr)
 	ktime_t t0, t1;
 
 	dump_guests(zr);
-	pr_info("%s: Detecting guests activity, please wait...\n", ZR_DEVNAME(zr));
+	pci_info(zr->pci_dev, "Detecting guests activity, please wait...\n");
 	for (i = 1; i < 8; i++) /* Don't read jpeg codec here */
 		guest0[i] = guest[i] = post_office_read(zr, i, 0);
 
@@ -198,15 +198,14 @@ void detect_guest_activity(struct zoran *zr)
 			break;
 	}
 
-	pr_info("%s: Guests: %*ph\n", ZR_DEVNAME(zr), 8, guest0);
+	pci_info(zr->pci_dev, "Guests: %*ph\n", 8, guest0);
 
 	if (j == 0) {
-		pr_info("%s: No activity detected.\n", ZR_DEVNAME(zr));
+		pci_info(zr->pci_dev, "No activity detected.\n");
 		return;
 	}
 	for (i = 0; i < j; i++)
-		pr_info("%s: %6d: %d => 0x%02x\n", ZR_DEVNAME(zr),
-			change[i][0], change[i][1], change[i][2]);
+		pci_info(zr->pci_dev, "%6d: %d => 0x%02x\n", change[i][0], change[i][1], change[i][2]);
 }
 
 /*
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
