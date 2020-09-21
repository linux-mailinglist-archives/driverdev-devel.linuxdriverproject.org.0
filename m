Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D454627202A
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C98A868F1;
	Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OURYreLix7MX; Mon, 21 Sep 2020 10:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F23B86881;
	Mon, 21 Sep 2020 10:21:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3AAB51BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35DA386819
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSAgKJ7sdAiU for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E2C78683A
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:01 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t10so12133896wrv.1
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Phn676ck9fxFNj85BpKV8apw8QC3TViwDCE0eTe2lKw=;
 b=SPcgfzwxG+7TAk0IVdcJAFHhW8FgtzKodBdFxADUrLFsEGadjF7vCav7EEu+lU0+GP
 NoSmoxIDJ3mjicDERBPfRbNj0tsMIMvrPFRtjvcX38BcDEyPZ+/MtRLdkL1pEoHeC0J+
 gXrEKMhnbxYg66roPjpaq84u95xIeiKLqFwr6gZRgbMVE1Ejz55JtyaTrEwjb4KbTcfG
 PpIGABEtexnVZHJNYqRPwi+RilJspBYCpSHEv7rBDHbghA1z5RyiTEM2DE/c619SP3FJ
 TbuHDmkJTLnNPptMWYqQEXm86UexWo+n/qwGjWsOL0TI/mnhmAyDZPYrSSrudAVE9pX/
 XHFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Phn676ck9fxFNj85BpKV8apw8QC3TViwDCE0eTe2lKw=;
 b=hdZmNiz/Ksy1zdKxeqP9JLOKrLSzGKucI43a0hz4eyMvGwyTVYKSnweG8Re36f2pVM
 FkDcqnVwQ/MfVqX7TCT1IgZYSjrRNGNJmaNNlFzvhNkV+gKUhy8PTAOgqwLhupfHDdL9
 E77CNBDyrPLUa5rrYkG3DnsEdmfiDZEO03PZ9Ta9ib9CUTIHu5lOqL3q+JKfkp4u8qOJ
 iArhtKETG0//EjCULOtdg3+B6zkSnIl8mBJIjJSSXrn+CaIltkX9H2qQXUKDL1NRDwRF
 wFjXBMfXLUD0J0pqpjVrqwNsfDr0eqm67h4iGAdCn8M8Ua57En4cZyBEHFuG4/T6NctI
 vUnw==
X-Gm-Message-State: AOAM531Qp3MkBim+JPS4sDsR2q4EmzUYfoqPwCDCXBdBYC/WwKwQKWiw
 dMHgF0OC9SD6HjrZrx3bmuOnhfLwGCkzwg==
X-Google-Smtp-Source: ABdhPJzidbt0pzET/EtSowQUwY6EY9mSfVSCXN4I8uUlbcM+UuJ2gQy4RnxaDKlVsybR+D7AZPvq9A==
X-Received: by 2002:a5d:668b:: with SMTP id l11mr50274670wru.89.1600683660027; 
 Mon, 21 Sep 2020 03:21:00 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:59 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 29/49] staging: media: zoran: convert mdelay to udelay
Date: Mon, 21 Sep 2020 10:20:04 +0000
Message-Id: <1600683624-5863-30-git-send-email-clabbe@baylibre.com>
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

As asked by checkpath, let's use udelay.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 3a353130afb9..82d522c1a528 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -1315,9 +1315,9 @@ void zoran_init_hardware(struct zoran *zr)
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
