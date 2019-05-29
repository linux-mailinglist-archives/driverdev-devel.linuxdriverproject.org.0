Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D692DDE0
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:16:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4E91430B97;
	Wed, 29 May 2019 13:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S+WH8xpYwAz0; Wed, 29 May 2019 13:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC0F32FB9A;
	Wed, 29 May 2019 13:15:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE5911BF238
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB76A85BAE
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:15:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WWhXwEQ1HJZM for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:15:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5133185B6F
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:15:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id s11so1597027pfm.12
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xN5neQLEPuy8rf1hiSBhjEvuwhf5Or8I1z3QH2reqRo=;
 b=KB/ZAgwVtpsscHpxRL2WxEnZSjd07Gwyz2fitS1PZiXG05ZDobhExv0V3qnjvyd5u1
 IQ9J9BTglpmDw0bu8hG5dkRuNsrk8peU3jiDOnhitl1YfMgq1x1OG9zwddO7K8QCiQcL
 yYbEaDkBlTyxSKY5Az8//PsZMu9hRaHjjylWtv8Mm93hliHX8wl/rQmOu0UpzUa5z2Ni
 syP6arMk6/g+h0pRaE6Z+/OuQQeogHLblUZyFQ7mxjFdi1JCizncxqQ0NBZB8438Fz7l
 4XmvoJJsbeEcOSlCIZsRYFNiKQqi74X096iz9lgxtysgSLcsgL3/+sac2FmVr1HTYWFh
 CvZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xN5neQLEPuy8rf1hiSBhjEvuwhf5Or8I1z3QH2reqRo=;
 b=b04KFzcsIDIIv0RuRgzX7dGGvhp1P37piOJ2H85dcBQK9e0u8lQwBJNofF6EFRXLpQ
 sPQg/O2IXh8bW0uwisYACKk6ZIQ84oTLTaDTZgdLRZ6kPrVNy9QXoMlNAKbNCMuY7OdM
 FZDcfT5CZpZ8mCq4BlI0psvN51gjpOmPCf+W+iK2hZa/13DrBsETIi/R4AW90p3fhWVN
 3v/3VCUhnvEaM4HNxbyGD9ZpLm88XKo70TEBNAUB0eb9u5J7Mq5bwGM5isELI/8jqfhO
 GPMeXyQ3xSClw4DQxFdU2cCHJBXBjhAQeCQFZ/KI2S0iY3zJ1IkiMNOwduzWjSST7Nye
 g4Jw==
X-Gm-Message-State: APjAAAUI7JYDrcs0V3ySoXb8m+OGXrHGrn+37TgfPev9Dy/T4LroZdSy
 hSxIYV/++5YWzd0VEbUxjdA=
X-Google-Smtp-Source: APXvYqxqk6JDonQnV/wxu8JWsy8K0bS3rk427TwK4U+WoZy6ABfTmVuXj+UIawze5M0YKtA8Sa13ig==
X-Received: by 2002:a62:4d03:: with SMTP id a3mr152436226pfb.2.1559135747593; 
 Wed, 29 May 2019 06:15:47 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id o6sm17900752pfo.164.2019.05.29.06.15.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:15:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, arnd@arndb.de, qader.aymen@gmail.com,
 kim.jamie.bradley@gmail.com, keescook@chromium.org
Subject: [PATCH] staging: rts5208: Remove negations
Date: Wed, 29 May 2019 18:45:31 +0530
Message-Id: <20190529131531.6368-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Previously return variable fake_para was being negated before return.
For simplification, fake_para can be changed to valid_para, which is
returned without negation (corresponding values swapped accordingly).
Further, the function names check_sd_current_prior and check_sd_speed_prior
can be changed to valid_sd_current_prior and valid_sd_speed_prior
respectively for greater clarity on the purpose of the functions.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 76c35f3c0208..17c4131f5f62 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -598,38 +598,38 @@ int rtsx_reset_chip(struct rtsx_chip *chip)
 	return STATUS_SUCCESS;
 }
 
-static inline int check_sd_speed_prior(u32 sd_speed_prior)
+static inline int valid_sd_speed_prior(u32 sd_speed_prior)
 {
-	bool fake_para = false;
+	bool valid_para = true;
 	int i;
 
 	for (i = 0; i < 4; i++) {
 		u8 tmp = (u8)(sd_speed_prior >> (i * 8));
 
 		if ((tmp < 0x01) || (tmp > 0x04)) {
-			fake_para = true;
+			valid_para = false;
 			break;
 		}
 	}
 
-	return !fake_para;
+	return valid_para;
 }
 
-static inline int check_sd_current_prior(u32 sd_current_prior)
+static inline int valid_sd_current_prior(u32 sd_current_prior)
 {
-	bool fake_para = false;
+	bool valid_para = true;
 	int i;
 
 	for (i = 0; i < 4; i++) {
 		u8 tmp = (u8)(sd_current_prior >> (i * 8));
 
 		if (tmp > 0x03) {
-			fake_para = true;
+			valid_para = false;
 			break;
 		}
 	}
 
-	return !fake_para;
+	return valid_para;
 }
 
 static int rts5208_init(struct rtsx_chip *chip)
@@ -796,13 +796,13 @@ int rtsx_init_chip(struct rtsx_chip *chip)
 		chip->rw_fail_cnt[i] = 0;
 	}
 
-	if (!check_sd_speed_prior(chip->sd_speed_prior))
+	if (!valid_sd_speed_prior(chip->sd_speed_prior))
 		chip->sd_speed_prior = 0x01040203;
 
 	dev_dbg(rtsx_dev(chip), "sd_speed_prior = 0x%08x\n",
 		chip->sd_speed_prior);
 
-	if (!check_sd_current_prior(chip->sd_current_prior))
+	if (!valid_sd_current_prior(chip->sd_current_prior))
 		chip->sd_current_prior = 0x00010203;
 
 	dev_dbg(rtsx_dev(chip), "sd_current_prior = 0x%08x\n",
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
