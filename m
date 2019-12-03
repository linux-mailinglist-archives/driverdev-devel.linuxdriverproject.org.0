Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9DB110024
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 15:30:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3FC086A70;
	Tue,  3 Dec 2019 14:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWuZPjr7eSyx; Tue,  3 Dec 2019 14:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D74D786073;
	Tue,  3 Dec 2019 14:30:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D339F1BF358
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 14:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CF12A8764F
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 14:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ntHqTH7MMbJO for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 14:30:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 69CA38622A
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 14:30:38 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y14so1476030pfm.13
 for <devel@driverdev.osuosl.org>; Tue, 03 Dec 2019 06:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=J2Bki53qX313b1AARXHLy2ucszmnsdlQKT35x42nCu8=;
 b=OKCh36lZ9pDx0Y8bc0qMl7g8YiKhOooNxDwawYU4yO7Dq7rTfzWx9N8HEHwFNhc5xS
 kTPmwwfJFv6q3zqRx6wJyoiGlRRuOFDasaCW45wzungTG/Z6ASkTzKO02JOMGEC14Lqx
 8vbjT7THR5CWyoeSy7ZcjBMQgA9Dk9GsLU3wCm58lcK7iYIyyeB/qQfotew+ztsiVO1m
 vBKsh1+FoSFggHoEIRSZtREx/ICfREIqhbLqIyT18zZTVy6ed1YZKrSAf8xsBzLnVAzc
 aUJ0B35mKG5i6A+eTPcK32med0uhmvSTN7NYfC/pH2v50jtJri9OOaYoUwQEipv/UjjD
 U8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=J2Bki53qX313b1AARXHLy2ucszmnsdlQKT35x42nCu8=;
 b=U9VGnPEKP1HsXRxOngxAtWta52HHhnYELNY0RKcuZE1dKFN55TsaTDPLzODkLJSZ4w
 +I2rwA7TgxTIX36tTyD7EUWVQvgtxz0FQAjEnqmO8zMGjnCfJD5Kgj8Ujft44LwbZzme
 Z3dG7sHLvBncCVFWNA5cs4eRGAg2BJ0RfNKwY+daxRhh1EtKeWaYlB4/5rATEI8YYCQe
 tzPJhTG7SZDZ+tkYTk09N9UoJMQY7mgd03nB6V8AmykhorCDsmyGB/xGEtdy3WAA9ULC
 LpJZnuWNykEEnhHnmdtSdjKGWZvf6kEw31PcdUZa2pwVGaqHL2bLdVXUBzfbFsgsc5Uh
 Yhmg==
X-Gm-Message-State: APjAAAWF3546/3swb6my52JyoxXVn1NJoFptc1wdb7HrZ29JW7iL5JoL
 XRRKrJ82oiSHCkN2AIBDzrU=
X-Google-Smtp-Source: APXvYqxd9orlFfynhShIrO9O1xR/zQV3ibpOIf2jcASyL8fEZuhTT6fLlphL85Wkw/2sKrMEmZkXCw==
X-Received: by 2002:a62:2cd7:: with SMTP id s206mr5081621pfs.106.1575383437811; 
 Tue, 03 Dec 2019 06:30:37 -0800 (PST)
Received: from localhost.localdomain ([2406:b400:a2:3691:8da9:a1b8:23c9:e525])
 by smtp.gmail.com with ESMTPSA id
 z10sm3756468pgg.39.2019.12.03.06.30.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 06:30:36 -0800 (PST)
From: Susarla Nikhilesh <nikhilesh1294@gmail.com>
To: valdis.kletnieks@vt.edu, gregkh@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: exfat: fix spelling mistake
Date: Tue,  3 Dec 2019 20:00:23 +0530
Message-Id: <20191203143023.2786-1-nikhilesh1294@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <43e42d774081d2edeaf826845915348209152756>
References: <43e42d774081d2edeaf826845915348209152756>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CHECK: 'propogate' may be misspelled - perhaps 'propagate'?
FILE: drivers/staging/exfat/exfat_super.c:1484

CHECK: 'propogate' may be misspelled - perhaps 'propagate'?
FILE: drivers/staging/exfat/exfat_super.c:1551

Signed-off-by: Susarla Nikhilesh <nikhilesh1294@gmail.com>
---
 drivers/staging/exfat/exfat_super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 6e481908c59f..d1c1e50fb492 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -1481,7 +1481,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 			count = count_dos_name_entries(sb, &dir, TYPE_DIR);
 			if (count < 0) {
-				ret = count; /* propogate error upward */
+				ret = count; /* propagate error upward */
 				goto out;
 			}
 			info->NumSubdirs = count;
@@ -1548,7 +1548,7 @@ static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
 
 		count = count_dos_name_entries(sb, &dir, TYPE_DIR);
 		if (count < 0) {
-			ret = count; /* propogate error upward */
+			ret = count; /* propagate error upward */
 			goto out;
 		}
 		info->NumSubdirs += count;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
