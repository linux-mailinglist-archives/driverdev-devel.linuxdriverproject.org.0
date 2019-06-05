Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F01354E3
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 03:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 813F220416;
	Wed,  5 Jun 2019 01:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OX5oD60WTqlb; Wed,  5 Jun 2019 01:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 186CC20108;
	Wed,  5 Jun 2019 01:10:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FE481BF366
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9706B85BC8
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 01:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CECl1N1Lamfu for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50F6C85E7C
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 01:10:10 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id t64so4157289qkh.1
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 18:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m1CgGNmT41gdKkbcLTzL9G1FcUp7/mgA73pnl43Phi8=;
 b=GcR+MIOLnaiQUoIFQyd1aL+z7yikowSZrJfCvqygTTLiXhVXCI3+icoPLO485FJz1d
 hb423kZ5oSQGYUy6Xs8ZnjkUMd9v80POPPTGN68seD7ncR9JilCIuAa5meto+y+oF1N/
 MdrnoSHzTsztIT6IX606D5OpEHT5sEZcK3nu/shIXvPZnjOaxUkP/Y4u6T5LsomMGF2j
 HiZnE4eh8RzcH2HP04Ra3X1etIOAdWTqv/SYCW1E+WsEyrBediC+crAXKTCQy/KI8hGn
 9XvVu2fy5FuLP+Gxfgu3Mj+kvjtXW/A/hEOjy4jNtxzPbKqEsYssxJ8VAsnSPGWUk0YE
 9/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m1CgGNmT41gdKkbcLTzL9G1FcUp7/mgA73pnl43Phi8=;
 b=nazaEL3uvzul/m5ogmWTX7LhWEZAmhy8X1Oq6hONuY8jHvVWzNzWE08e4NAhR2E08L
 nj17AOIMb2nIYQH2sirCAHrrhVv9RujGcuHsGmrPFaAxYqIv42nSs9qDytxkbmXgMN/M
 XMROwJ2coPHjSFW6x23OEiQh3Y9L0uWaUzp2b4K/dOnG8fc+YVK2h1lzlTGimAAl/3z7
 iL63JYkghDr8O51wYFAXMA1ux4Lj+/XuT79775tZHvmJWlzbN2EW6+R5VhAuAwdU2QVE
 +7Y5xzdaWc7NRNPurXF+gFNFtu9LCM6xl9Fmknop8Jw7M2q0ITo2BO7AJ3IlpL/l+/aS
 mvqw==
X-Gm-Message-State: APjAAAVfKM92N7t2EEOvJ7VYht8jvbOLYE0ycTG9dqzo2VFIL7+ql4o7
 XgFfBp3pWrtilFMrRTkzs/s=
X-Google-Smtp-Source: APXvYqyW7sJM4G+Uq1TE53I7+IRyPcKZECBTQFnNF5AsXY3c1kDZs+NamfZ99VCjGuKcKmcv57dIag==
X-Received: by 2002:a37:505:: with SMTP id 5mr13022676qkf.277.1559697009537;
 Tue, 04 Jun 2019 18:10:09 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id v41sm7169401qta.78.2019.06.04.18.10.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 18:10:08 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/6] staging: kpc2000: kpc_spi: remove unnecessary ulong repr
 of i/o addr
Date: Wed,  5 Jun 2019 01:09:12 +0000
Message-Id: <15f12ed247c7911619adb3445579ce13394a5ddd.1559696611.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1559696611.git.gneukum1@gmail.com>
References: <cover.1559696611.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 Mao Wenan <maowenan@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The kpc_spi driver stashes off an unsigned long representation of the
i/o mapping returned by devm_ioremap_nocache(). This is unnecessary, as
the only use of the unsigned long repr is to eventually be re-cast to
an (u64 __iomem *). Instead of casting the (void __iomem *) to an
(unsigned long) then a (u64 __iomem *), just remove this intermediate
step. As this intermediary is no longer used, also remove it from its
structure.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 07b0327d8bef..4f517afc6239 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -103,7 +103,6 @@ static struct spi_board_info p2kr0_board_info[] = {
 struct kp_spi {
 	struct spi_master  *master;
 	u64 __iomem        *base;
-	unsigned long       phys;
 	struct device      *dev;
 };
 
@@ -462,9 +461,8 @@ kp_spi_probe(struct platform_device *pldev)
 		goto free_master;
 	}
 
-	kpspi->phys = (unsigned long)devm_ioremap_nocache(&pldev->dev, r->start,
-							  resource_size(r));
-	kpspi->base = (u64 __iomem *)kpspi->phys;
+	kpspi->base = devm_ioremap_nocache(&pldev->dev, r->start,
+					   resource_size(r));
 
 	status = spi_register_master(master);
 	if (status < 0) {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
