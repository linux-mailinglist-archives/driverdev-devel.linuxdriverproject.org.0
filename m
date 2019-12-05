Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4D011438B
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 16:29:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B253688AA9;
	Thu,  5 Dec 2019 15:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qD1UCLZ3hIHz; Thu,  5 Dec 2019 15:29:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A7F5885A8;
	Thu,  5 Dec 2019 15:29:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D7C11BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 15:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DBD1885A8
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 15:29:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-wppMz1ToaX for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 15:29:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C36488553
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 15:29:18 +0000 (UTC)
Received: from mail-wm1-f72.google.com ([209.85.128.72])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <andrea.righi@canonical.com>) id 1ict48-0005VB-3f
 for devel@driverdev.osuosl.org; Thu, 05 Dec 2019 15:29:16 +0000
Received: by mail-wm1-f72.google.com with SMTP id g26so989309wmk.6
 for <devel@driverdev.osuosl.org>; Thu, 05 Dec 2019 07:29:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LC6DDS7dzR3mgMabSVrO4Lfc9Ry73+/2Egm44NEkV5Y=;
 b=s9g/qfmHvF4zCh2bHaihB67DpaPxzAat8b2IZaEGFGRVxnFR1qV6vMwzoPb6wXHjUg
 EO9VHPpp+vHxb6kpMXqeZAKgYB4+Epd8fSewxeTXMKHN9N2IXscwRw2rdZcuFJFsgau9
 P84zuff5iqeLOYj4PPd77giCEYa1Aj10VFUOFYrr0N7ewccF5euZAN5Nbddv89fv6Myq
 ge+u+mNLeZuiG3TxJsU0o32SYR09rmuJ1+GO/ptryh3SYXKdmP5pdWmxWCxbvkJBC/Nz
 QRZeoSwI1zAu0zbF3UA5V7/bOy3NIclfklY/8w4TA2SYMbeEHRp/ihImnaX0uRv9oxB8
 9srg==
X-Gm-Message-State: APjAAAVul+vu4seuYIGsrmZBr4AEJoeUzijmq2RcT2lS+qh0wHP7OJWb
 I7tjCeM2qBv69+6HJNYWqSaDExwuFqlICYsvdXRAQKjGdmzWgLluNTcUtBuOBQadhhk3GDHq4vx
 O6nIXeOtzev/KhC/TMxpYGIy8ViGL1Py7ABYtMIo=
X-Received: by 2002:a5d:4281:: with SMTP id k1mr11236635wrq.72.1575559755749; 
 Thu, 05 Dec 2019 07:29:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqww3fLVvHw4i2+mxqUfxSNjvtsmae9g98lTbmDUho19nYRX5yQGivaJ4A4RPXoES4jgYCTINg==
X-Received: by 2002:a5d:4281:: with SMTP id k1mr11236599wrq.72.1575559755411; 
 Thu, 05 Dec 2019 07:29:15 -0800 (PST)
Received: from localhost (host40-61-dynamic.57-82-r.retail.telecomitalia.it.
 [82.57.61.40])
 by smtp.gmail.com with ESMTPSA id g74sm179791wme.5.2019.12.05.07.29.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:29:14 -0800 (PST)
Date: Thu, 5 Dec 2019 16:29:13 +0100
From: Andrea Righi <andrea.righi@canonical.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: properly support discard in clr_alloc_bitmap()
Message-ID: <20191205152913.GJ3276@xps-13>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently the discard code in clr_alloc_bitmap() is just dead code.
Move code around so that the discard operation is properly attempted
when enabled.

Signed-off-by: Andrea Righi <andrea.righi@canonical.com>
---
 drivers/staging/exfat/exfat_core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index d2d3447083c7..463eb89c676a 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -192,8 +192,6 @@ static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
 
 	exfat_bitmap_clear((u8 *)p_fs->vol_amap[i]->b_data, b);
 
-	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
-
 #ifdef CONFIG_EXFAT_DISCARD
 	if (opts->discard) {
 		ret = sb_issue_discard(sb, START_SECTOR(clu),
@@ -202,9 +200,13 @@ static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
 		if (ret == -EOPNOTSUPP) {
 			pr_warn("discard not supported by device, disabling");
 			opts->discard = 0;
+		} else {
+			return ret;
 		}
 	}
 #endif /* CONFIG_EXFAT_DISCARD */
+
+	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
 }
 
 static u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
