Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC01272024
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C94A685FDB;
	Mon, 21 Sep 2020 10:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NxUHeGPo7DRO; Mon, 21 Sep 2020 10:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8EBF85F9B;
	Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33CF01BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E38C8683C
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YuWLnSRYoqVn for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 72416868AF
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:49 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e17so11564510wme.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XMf3TGfVECo8Ilq9E4yjhSEImTvnZ2dPgYfGTLgv0bk=;
 b=WW3lHzJn1qFTVR/w8nO2yUlxfSGExVtBeCWl6A36zih+tm7tGih+Mcp4mtuKNDRonA
 gEPCgPMmuLejb7S03ZvfayZwcGaM95eEtfWew1p4LADy4On0TJ52XS//VuL53Xsi44TI
 DEnPm8YPWL4S0ahxJFbSGQgq/GxjQc+u1j1TPjN8qVkPWQ13yY+1QaR2lcpmjYh+FIRl
 mAjkJOusuU65FsFqfG9f5pH5CXGfg+Nt6/kfD/MebtmgALFkMBNfiPMGwWKKXBDYznWA
 AKXZsFgHkRYHUbSpviarblJUweMi5vVU7vzMo6UE9kLxwTgK7RYnnT7+oUsrNb17XJNV
 oU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XMf3TGfVECo8Ilq9E4yjhSEImTvnZ2dPgYfGTLgv0bk=;
 b=WPD3xQDZj1hYfEkp8ztw5qzi2jNxHMVdiZUDrzNX8Je2Bj9qBQepiOYBxrWiw+zg4E
 IlM/k1NgIun+yx6y1aH2NUUx/3gS+mCCkP5HuJLZOnZnjgLLkFJf12iuPZCVPxEbjuSG
 lY3MmXdS6Wfb6dN34JFYz5Ev8aaPwJA97JePjdY8gmD3zGt/vcEIFXd8iNdIALuq6Qrh
 1+e7TUMOBiN5Y/2aiWixlkCj2Uv1eauorox5CszGoP51koNAaqqGmCu1avqL5jFEQyzM
 YCWufTr65ydGZXZUwaJwT6KqKcSf2kVT6F1HdpPCz4t4iqEV4xjIuJA7IHOFY2oh3z4L
 fg8w==
X-Gm-Message-State: AOAM532GLX0PclG2NDcvUDjJwI/TBqLN0LY5s3+/Shg9Bl9ud0napcG9
 Ge7y/j/76YbSxZRHe5pGr7MkT4mqLG9vGw==
X-Google-Smtp-Source: ABdhPJwLscV9pUAHVogHsXkwlXM0rs5yG9Zg1ezU4BZ8Y6KrmJb+etsGRk4200Pum4t0A/qFIxDRSQ==
X-Received: by 2002:a7b:c76d:: with SMTP id x13mr15271283wmk.10.1600683648002; 
 Mon, 21 Sep 2020 03:20:48 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:47 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 16/49] staging: media: zoran: do not print random
 guest 0
Date: Mon, 21 Sep 2020 10:19:51 +0000
Message-Id: <1600683624-5863-17-git-send-email-clabbe@baylibre.com>
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

The slot 0 of guest is never initialized and so we print later random
data.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 0fb65fa4a3dd..a33de61a5e9b 100644
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
