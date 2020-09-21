Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6548D272021
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08EA586844;
	Mon, 21 Sep 2020 10:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imfP1lgKuVBF; Mon, 21 Sep 2020 10:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E9948687E;
	Mon, 21 Sep 2020 10:20:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8C31BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74CF6871CA
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMZtctdlWDBc for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2002871DC
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:40 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id e16so12143160wrm.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yT+7g7cZmwgOzhVIcE+1qXxZwSKLTSSFChevbMCeH+o=;
 b=EwZ63cO+tlKq2AG2nWrD4d2XhWegdUe1jNXNvFBAHdNz9ilGkOuIxnjK/BXVeAztet
 sMdaHyNIncAkyoVjVduxgUryKkGRtPpK8qeDio3OCo3s6f2+N2h9ZrPSqPURG0CHPbPF
 xTaCDKucrtN/tEy9toRvNYHhRsriAYOexDMdaidTJMK4cIis90vX6y0DYFhFJT4xeRBq
 t97KIVx6XPo79l8Crf+CMlOCgYbbaMoha0RzONlzpAmLmupgrfhJoBiKH9+C+879JCS+
 SBWX+qDB81ND2VSRf20KfJZyWzjp/ebLz0TSzJSK8LPNkq3a4gGl4EpfolRezWGKTY4J
 j/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yT+7g7cZmwgOzhVIcE+1qXxZwSKLTSSFChevbMCeH+o=;
 b=BSZcO75AqeAgV0K3hdu1Wj66x7c4TaN1O2p3Z/4AKQzh8AOisNnv/JrcfEM+Qo4KKI
 HwVsKP5EBo86tFMYSBCj8REEAGcyBxYIUv7x4mCOVg/mEoxeKzoJvrAD27gR/CRLC0mC
 4qiG20cUaBwRNcM+UzI9WkC3iIJPYobaR68Gf1sRhBNWwseVEV9HbnmVb+XIDyyVg3i2
 4p3RyHNZlli2sjX4NGysn9Q1EoAliULHrBkoAw9tVFNFBcQrDM4vY8IL5lElM5MvWuZF
 nxq4IzNa8cbTfAAeBzIzPNhUbUj8/nEyiH5C+kQsV7abDhoA57vwC2rdGI3TMACUB2EC
 6rlA==
X-Gm-Message-State: AOAM533IJ3JDZrtoZ8neLilDVoV76cYez27vuxdk+Bjl7lWYCOTHTpWD
 7Rfm5+LAHxH/hjkZoVw11mM0Uw==
X-Google-Smtp-Source: ABdhPJxdpQHqO5++kMBiuLNEhD+xHOgH30GP/PD9/JEzGy2S+yIbg+UTXWS7yONq0phNqnWGNX5pFw==
X-Received: by 2002:a5d:568d:: with SMTP id f13mr50608020wrv.303.1600683639289; 
 Mon, 21 Sep 2020 03:20:39 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:38 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 07/49] staging: media: zoran: do not forward declare
 zr36057_init_vfe
Date: Mon, 21 Sep 2020 10:19:42 +0000
Message-Id: <1600683624-5863-8-git-send-email-clabbe@baylibre.com>
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

move function for avoiding forward declaration

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 44 +++++++++++-----------
 1 file changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 783d7bce6c80..0985b16d5a55 100644
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
@@ -1474,25 +1494,3 @@ void zr36057_restart(struct zoran *zr)
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
