Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC72BFA6EA
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 03:57:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D4E586554;
	Wed, 13 Nov 2019 02:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ELU7rAQyO2Ox; Wed, 13 Nov 2019 02:57:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32E4086430;
	Wed, 13 Nov 2019 02:57:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCC481BF2B7
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 02:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C591B87079
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 02:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pKuYPSGBf23a for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 02:57:42 +0000 (UTC)
X-Greylist: delayed 00:06:48 by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F2DF8731E
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 02:57:42 +0000 (UTC)
Received: from mr1.cc.vt.edu (inbound.smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xAD2orIF008342
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:50:53 -0500
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr1.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xAD2omV0008867
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 21:50:53 -0500
Received: by mail-qk1-f198.google.com with SMTP id a129so551862qkg.22
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 18:50:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8QTCb+WFX3FpJ3fVztSaFH+rTvdtPtL4YNVcXp9Kn7s=;
 b=ejzMdd3nDT/rgY6ahL6vMmCjbRYIdXLO1scGvvYpVLDAPrzkkJhk8u5P6Rcfex0AKv
 OYWumhWf3BuNyRS9X9F0BXuvlpd9BIbisU+hfCjFr+jB3wkxONmerH9T5zYG/Gtyf4H6
 Fqc9uD69DqLXpNi96HLR1gzUGN53qFJ3jE0P35KqgOsXPS1l8V8nyeoZztxnUqI9L3Do
 zBAyzozPPQ51W/WpAhUgEy56tE7I1ccsM4UJuppD0kq1d/s0njCAiVnUq1WC5WcasHN7
 gyMHWdtbfiNvAeU5S8d1L3UeG7vwo0Y3NeNvbDHqveyYD4fBPT81vHx1DGj1ej/gBZq/
 K32A==
X-Gm-Message-State: APjAAAVDsFSvd/fVHTeEs1Cp0zVyHbqgFka6i2ljywSDo7eAcXCL8cEE
 RnCoHqcEmMj7Po65D0Y3GzjcLSbX2h+70npHWlklB5yFvHxzcqhlMFC9VbB96WIwqx5eSW2CseW
 oteR5jYtfvQt5efhQxXhWFgP9avILslDm
X-Received: by 2002:a37:c44b:: with SMTP id h11mr646981qkm.234.1573613448299; 
 Tue, 12 Nov 2019 18:50:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqyWCFwzxoLiz+DgZpL/3YHBFIyVsL+YXuOhgpxf7giev41idLzl1WPF245u/f3hwaBto4LWkw==
X-Received: by 2002:a37:c44b:: with SMTP id h11mr646972qkm.234.1573613448001; 
 Tue, 12 Nov 2019 18:50:48 -0800 (PST)
Received: from turing-police.lan ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id j71sm319265qke.90.2019.11.12.18.50.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 18:50:47 -0800 (PST)
From: Valdis Kletnieks <valdis.kletnieks@vt.edu>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: exfat: convert WARN to a pr_info
Date: Tue, 12 Nov 2019 21:50:34 -0500
Message-Id: <20191113025035.186051-1-valdis.kletnieks@vt.edu>
X-Mailer: git-send-email 2.24.0
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 syzbot+787bcbef9b5fec61944b@syzkaller.appspotmail.com,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

syzbot took a nosedive because it runs with panic_on_warn set. And
it's quite correct, it shouldn't have been a WARN in the first place.
Other locations just use a pr_info(), so do that here too.

Signed-off-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Reported-by: syzbot+787bcbef9b5fec61944b@syzkaller.appspotmail.com
Fixes: c48c9f7ff32b ("staging: exfat: add exfat filesystem code to staging")
---
 drivers/staging/exfat/exfat_blkdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat_blkdev.c b/drivers/staging/exfat/exfat_blkdev.c
index 7bcd98b13109..8204720b2bf2 100644
--- a/drivers/staging/exfat/exfat_blkdev.c
+++ b/drivers/staging/exfat/exfat_blkdev.c
@@ -59,8 +59,8 @@ int exfat_bdev_read(struct super_block *sb, sector_t secno, struct buffer_head *
 	if (*bh)
 		return 0;
 
-	WARN(!p_fs->dev_ejected,
-	     "[EXFAT] No bh, device seems wrong or to be ejected.\n");
+	if (p_fs->dev_ejected)
+		pr_info("[EXFAT] No bh, device seems wrong or to be ejected.\n");
 
 	return -EIO;
 }
@@ -112,8 +112,8 @@ int exfat_bdev_write(struct super_block *sb, sector_t secno, struct buffer_head
 	return 0;
 
 no_bh:
-	WARN(!p_fs->dev_ejected,
-	     "[EXFAT] No bh, device seems wrong or to be ejected.\n");
+	if (p_fs->dev_ejected)
+		pr_info("[EXFAT] No bh, device seems wrong or to be ejected.\n");
 
 	return -EIO;
 }
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
