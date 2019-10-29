Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC94BE840B
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 10:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B10CB87816;
	Tue, 29 Oct 2019 09:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjo5IAuGbGOZ; Tue, 29 Oct 2019 09:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EF958712D;
	Tue, 29 Oct 2019 09:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F30281BF307
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F008284C63
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 09:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dr0mmR0LYM64 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 09:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 52A4084B82
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 09:16:48 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k7so7283681pll.1
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 02:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QxVCTrKNjWhjlkyA4a4PjlbJLD0+omh4Y9cUtwpdEOA=;
 b=YTT1qL4qmvHYO9gVLxUbJqc0lYWx8cwPWmKWLfFdXvGIPcSSnenZWgFrca+1x7sc43
 6BVik0e77zA0RyY9fp65ozg5QbUU6lsHWoTWfTIMXBmHIDMrbUkia6LAgNwKLD4mfg9K
 cH9ZfRjJIIfYvWFYZ/sOEM0XuRzcy7V/JeTS5P1JeX3Ufjm+3GRHJfLjHiHiUvN0b2di
 z+IAcM/Jyr3RsXRSPEWPavS0BIm2PuEdzTaORCsQBQli/Dh+q5xK/76ttc2EsBD3v4y4
 jC3EPA0dSQ44/J47btZe3F9In6rzsWKo12ik/e82+WFHbxyrFkJ7Qdc71Bb4RgY9yFmP
 uApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QxVCTrKNjWhjlkyA4a4PjlbJLD0+omh4Y9cUtwpdEOA=;
 b=DV743s8oewOhTjKF5OYp46ThQr56nZzANK6slrw9qod/iMekSbbpCfs9PCs8h57LXz
 Fz5ERqMFEfH4jgihtEXblFZ2TltWV7YVT6AR10NGT5N/ne+hmRMPMg7Z8WQtUh5x6/UN
 NKh9fjo+8Iv3qwHda6tc4HWD8Rn6vSHqIGqmX9ZODNvL1UwQ0EYiCxPhPA+G5iyjfDix
 Pt8XuClGtLXDcWuYLXb6+mWU7op5L+u6SqEPksEZ7DL0qzDQPgMBULpsoNL+nzx7h+iV
 pippLO5k6IzsnlFWa/885vW8QLnI327EZ6BD78bigMUy1v503A7qpvC0zm0IVbRzfwQL
 14wQ==
X-Gm-Message-State: APjAAAUzvIUXkKhx2SMOKeJn/w9JTEQz+wt/GFGUGY/7saGn6hB4olIn
 WgdPdvh5Tzp9f1VdlJaluLo=
X-Google-Smtp-Source: APXvYqykXnxVExXdjyakWUi5HwnsRYnF0kqMc578j2xedEQEESIjGpSSAd3+1QNUsJuBEWD/uoBNHA==
X-Received: by 2002:a17:902:a717:: with SMTP id
 w23mr2960149plq.27.1572340607796; 
 Tue, 29 Oct 2019 02:16:47 -0700 (PDT)
Received: from localhost.localdomain ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id g18sm9910556pfh.51.2019.10.29.02.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 02:16:47 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/4] staging: KPC2000: kpc2000_spi.c: Fix style issues
 (missing blank line)
Date: Tue, 29 Oct 2019 02:16:35 -0700
Message-Id: <20191029091638.16101-1-chandra627@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: "CHECK: Please use a blank line after.." from checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
Previous versions of these patches were not split into different 
patches, did not have different patch numbers and did not have the
keyword staging.
 drivers/staging/kpc2000/kpc2000_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 6ba94b0131da..5712a88c8788 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -50,6 +50,7 @@ static struct flash_platform_data p2kr0_spi0_pdata = {
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi0_parts),
 	.parts =	p2kr0_spi0_parts,
 };
+
 static struct flash_platform_data p2kr0_spi1_pdata = {
 	.name =		"SPI1",
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
