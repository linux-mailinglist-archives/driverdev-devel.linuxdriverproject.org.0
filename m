Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6683227913F
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:00:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9038F86E65;
	Fri, 25 Sep 2020 19:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JK3CA3iYpP3E; Fri, 25 Sep 2020 19:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9511086DC8;
	Fri, 25 Sep 2020 19:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 416A61BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CE5B87625
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fY0BG8pHXCrG for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:00:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B38F4875E0
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:00:25 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id i17so3818378oig.10
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2WgdDjK1XgGHDaV6//v7/ddHloSVnhsSOt6qKeVAN5M=;
 b=GGQD8Zn6RT4a2zfkZ1kqX0OCG3TtfDAAOwAiN7cO/qtHrG8QyqIMQVqoUV9A0XTOTs
 tvsGDVZPZ/EVpZgTZAS/ito0R7Q/+ajPYRFrE6yikhVZFeFte2E8cucVT7ceQTGDeicm
 M0i1wupcDKk4ZZIIjfWZaLSi54TUvBgW32hnX/hXbnmt0RmV8sXdNON4hIFOqfKIiJs7
 exYlLP4/BiOzvwbIdkmLRRj3gwVh9hhmkZoQg7wX7S4aHi9Mvyq9OVWD8bcQgrJ3OpWc
 /1RS7MzBY5Q3wCZs7gaCcNgpehXkYaKFZUzHQ0ll7RVYs1kjm1xNtAVlijVpOpnll+Yj
 CzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2WgdDjK1XgGHDaV6//v7/ddHloSVnhsSOt6qKeVAN5M=;
 b=WFoJX1Ng5SR+6J5bnFo2fqskkZo3Ko6ehl6zjxCySkjhNE6j7vEtqYlKR9Hs/7GnTy
 HU8a1tpo9Q5g771l5kCs4SmQeN3OPS+Yqd/+ScNztAV7Tdfbk4bmrtWhEto4iwPOvA22
 eM615FTSZ/aUCFqEBM2QibnavmdgGYbI6aiDM4tYVVcZUCChMsQSPw1Mqnb1ktEe/MpI
 1lDu3tvWSqxg9qSoJ6YjmY9G5di64yD6EOg96kugwz8+/RiNB3u00QWGmOaA4saRMTv5
 a8VRhndz7vr+kh06A7jeukcT+2wRB1lD/MCa8YZsnE9w3nD/Yz6RPi4/7kwxrpOUdA1v
 26jQ==
X-Gm-Message-State: AOAM532k1r+DcH7E1CkizKn1ciL1GDaeB5Rbcg/x5ZsmpZV0QdJU5GIl
 pXbQ+EfvNFHJgn2t61qXoPFfTH/Kpje/Zw==
X-Google-Smtp-Source: ABdhPJwHEA/3I/bUPFTqLSSgHSU8z9ERjyAVkrO8MXOstvP+Z6ipHjkoXCShERNyM7pX5OIBe+e9Xg==
X-Received: by 2002:a17:90a:aa94:: with SMTP id
 l20mr777114pjq.95.1601058842891; 
 Fri, 25 Sep 2020 11:34:02 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:02 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 28/47] staging: media: zoran: convert mdelay to
 udelay
Date: Fri, 25 Sep 2020 18:30:38 +0000
Message-Id: <1601058657-14042-29-git-send-email-clabbe@baylibre.com>
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

As asked by checkpath, let's use udelay.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 0ecb044f8e8f..4c9f6eafd130 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -1332,9 +1332,9 @@ void zoran_init_hardware(struct zoran *zr)
 void zr36057_restart(struct zoran *zr)
 {
 	btwrite(0, ZR36057_SPGPPCR);
-	mdelay(1);
+	udelay(1000);
 	btor(ZR36057_SPGPPCR_SoftReset, ZR36057_SPGPPCR);
-	mdelay(1);
+	udelay(1000);
 
 	/* assert P_Reset */
 	btwrite(0, ZR36057_JPC);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
