Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 013822790E6
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A49E86E5A;
	Fri, 25 Sep 2020 18:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PD7FVTn1s7jj; Fri, 25 Sep 2020 18:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98F0086E68;
	Fri, 25 Sep 2020 18:40:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1A6F1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B9D5E2E17A
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uw+etYPOqFE1 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by silver.osuosl.org (Postfix) with ESMTPS id E98432E176
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:40:18 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id q5so3337632ilj.1
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4I9TKrK8mQBfL74FGJ3Y6iU/hZdg+xeVUjtNAbqFIqo=;
 b=EkKxpyyCRQPfwk6tXtTWIusqt+JYTltBhuFOOWuz4kGG9Wl/zoWEDRE1lJeFYaKuLG
 XLoWFDKz5Ae/e4YLOU1XF8kjfuZdheZSUd+7/JTJ+VND1lRcI4KszM2gZDxiAWkdmPgV
 HrgginFUx1ntgbOqw8lnfhBrRVTjLCq+2Akz5/9dMw0BtOrk0Vt4gZIoKbwokhQ4EUjH
 xtITe3MdQElPM6tMED9R+gJfSBYpxyw6aG4hXYZHgf9nfWULxXqZcAzjqvU8VNwsPjtz
 r4kb8AIiXSIJArQ+uipptmyg7i/pOtwBLuhs9NP2erzGL1lExoQFYeb5/W8XFJT1ghH1
 B+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4I9TKrK8mQBfL74FGJ3Y6iU/hZdg+xeVUjtNAbqFIqo=;
 b=JIPvKobgOEJs2linmaPsrHxOVXaRwGl2Dtt94iqNYv7Z3StSr/2WfF1jHl6KGgUQRP
 sUzYdQ59IXw82HB1KXsLivCdEmgFM4HliVaDKXF7ifzuwx9NeWG8gImC1yuTfBoZd43C
 seNhGX2jgoaRG3M5hjVO3Nnp2VRKXMkXKyslJws5/DH/oXntvNf1U3j8wxDOd9Rv8Bm4
 zyuGd4PSQEMT5eDsYLO1uNZHBHflprgLL7oUcEIS1FIeL4gR8gJ2p1U8b1HCncGsQ+gn
 i8YZaHLOHHpawLy2UF6dnRqWYrYDhrc+IFvq6VW5zEY+8cnACyQjfA+DN+73+ZNlc5Jk
 IplA==
X-Gm-Message-State: AOAM531SDyddQ8cReTKy3q8eU7YQDeR1BJbQ+h34oFMvY+712elaIy6w
 yZQenPLr/Y5N7S5NkIZZbR4xI8J/W1x2dg==
X-Google-Smtp-Source: ABdhPJwmQKSNHbj3FK9SVRlV13a+dFjKhinVBBkgWkygxcDqc1dh6TOjxWo6eXKRNPJRs9yVoNYYZA==
X-Received: by 2002:a63:ea15:: with SMTP id c21mr225421pgi.446.1601058743233; 
 Fri, 25 Sep 2020 11:32:23 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.32.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:32:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 11/47] staging: media: zoran: zoran_device.c:
 convert pr_x to pci_x
Date: Fri, 25 Sep 2020 18:30:21 +0000
Message-Id: <1601058657-14042-12-git-send-email-clabbe@baylibre.com>
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

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 61b4cfccc168..e50153218f72 100644
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
