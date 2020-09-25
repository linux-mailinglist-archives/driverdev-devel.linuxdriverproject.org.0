Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20796279142
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C10A2E178;
	Fri, 25 Sep 2020 19:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ko-BJv1OkvWb; Fri, 25 Sep 2020 19:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F2B6F2E18C;
	Fri, 25 Sep 2020 19:00:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 831EB1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 802B886DA9
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ik57bypd7s9X for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:00:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CFBE186DCC
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:00:49 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id 5so2003624vsu.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZBmnWlX2CGGKmPgqT5voHSsbFlrIBNatw9iHdtmWYAE=;
 b=SqKlWJvtpYa5wAEnP6Y5TZiFRnF3W3mL1IGbZv9hyo1xESy84AtfpXvt0oj9rVeebA
 LfASBHDTq9pLel5EKqlhJ769gBfsXO0mhuJiy4DrJIlotBnsS4CH/1lfyYfMOYW+MJxT
 g6GunrkTS+mt6GnMry3otEaxJ4CJozFfptbraSL7gP+Ejp4X7zLMUe//2PPfiDfZZ4HS
 DkF1PXumaTkP+V6JAiLZX9H0PN3N59FdVTq8PgfhFNb9aMOjJVY0Sr7vN7uvy2HCvQS/
 x8euWthjnJgoOk4Ot4a4LgsQ/a9GwCKabWHU2NvCJ52hbDXtzyv7xujEvUjdl70KoRr/
 pgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZBmnWlX2CGGKmPgqT5voHSsbFlrIBNatw9iHdtmWYAE=;
 b=qVvwyF5lZCpu7ZXHHpsPwrhFYZqoQZWl9diUaTo4nrEY1pHkKysybYVnSVjkw80xxn
 BGgTT2p1huBOidz19lSeAQGYX+r/QtZRDoQCZjc3oyFKC6Ecvu10EP7qE4fypRw4JrzA
 Cc96fbMUdq2jLUMjvlRqsb00QvM/hiVVGD7VigBn8U/rlUld7028V+pUxRKO5SDt+9t9
 83bf9go9FAAvTapYaOPDy1ASAuDbxvafrTP6s7QXGn1IPCWWY1oOlJ97in5s29HhobkR
 VKqoJ4kI/wuOz02oxYVHDb0OmTDQWiyQ/Y7vOXve+EPRfDNfIb4YaxPolAid2EblG41l
 0p8w==
X-Gm-Message-State: AOAM532rIJhnC6tpg12FWkA3KDDJZXHl/d84lP9L+eh+Giuz1rQ4iX8i
 xdwR/56HIccvQkLBQl0Av9nPSLLj2F8Fmw==
X-Google-Smtp-Source: ABdhPJwbSKP0r+P9sRO2NtyK33xmUUmsyEIYLyJiPw2ucdSAydodag1HaSYX/NuZg+Rz/Dcu2zPb0Q==
X-Received: by 2002:a17:902:74c1:b029:d1:e598:401b with SMTP id
 f1-20020a17090274c1b02900d1e598401bmr661262plt.85.1601058713773; 
 Fri, 25 Sep 2020 11:31:53 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.31.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:31:53 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 06/47] staging: media: zoran: do not forward
 declare zr36057_init_vfe
Date: Fri, 25 Sep 2020 18:30:16 +0000
Message-Id: <1601058657-14042-7-git-send-email-clabbe@baylibre.com>
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

move function for avoiding forward declaration

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 44 +++++++++++-----------
 1 file changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index cbacfa4ea2d0..cf3e2b5e4b4e 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -55,7 +55,27 @@ static bool lml33dpath;		/* default = 0
 module_param(lml33dpath, bool, 0644);
 MODULE_PARM_DESC(lml33dpath, "Use digital path capture mode (on LML33 cards)");
 
-static void zr36057_init_vfe(struct zoran *zr);
+/*
+ * initialize video front end
+ */
+static void zr36057_init_vfe(struct zoran *zr)
+{
+	u32 reg;
+
+	reg = btread(ZR36057_VFESPFR);
+	reg |= ZR36057_VFESPFR_LittleEndian;
+	reg &= ~ZR36057_VFESPFR_VCLKPol;
+	reg |= ZR36057_VFESPFR_ExtFl;
+	reg |= ZR36057_VFESPFR_TopField;
+	btwrite(reg, ZR36057_VFESPFR);
+	reg = btread(ZR36057_VDCR);
+	if (pci_pci_problems & PCIPCI_TRITON)
+		// || zr->revision < 1) // Revision 1 has also Triton support
+		reg &= ~ZR36057_VDCR_Triton;
+	else
+		reg |= ZR36057_VDCR_Triton;
+	btwrite(reg, ZR36057_VDCR);
+}
 
 /*
  * General Purpose I/O and Guest bus access
@@ -1491,25 +1511,3 @@ void zr36057_restart(struct zoran *zr)
 	btwrite((0x81 << 24) | 0x8888, ZR36057_GPPGCR1);
 }
 
-/*
- * initialize video front end
- */
-
-static void zr36057_init_vfe(struct zoran *zr)
-{
-	u32 reg;
-
-	reg = btread(ZR36057_VFESPFR);
-	reg |= ZR36057_VFESPFR_LittleEndian;
-	reg &= ~ZR36057_VFESPFR_VCLKPol;
-	reg |= ZR36057_VFESPFR_ExtFl;
-	reg |= ZR36057_VFESPFR_TopField;
-	btwrite(reg, ZR36057_VFESPFR);
-	reg = btread(ZR36057_VDCR);
-	if (pci_pci_problems & PCIPCI_TRITON)
-		// || zr->revision < 1) // Revision 1 has also Triton support
-		reg &= ~ZR36057_VDCR_Triton;
-	else
-		reg |= ZR36057_VDCR_Triton;
-	btwrite(reg, ZR36057_VDCR);
-}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
