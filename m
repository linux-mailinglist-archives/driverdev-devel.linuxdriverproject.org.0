Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09412156C78
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 21:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 206438782A;
	Sun,  9 Feb 2020 20:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iRDKX5Ms8Sh; Sun,  9 Feb 2020 20:56:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5562E875CB;
	Sun,  9 Feb 2020 20:56:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B46C1BF29C
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 20:56:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 172FD20027
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 20:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ss+V5brnSAVs for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 20:55:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 96D5C20014
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 20:55:59 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id e9so3289590pjr.4
 for <devel@driverdev.osuosl.org>; Sun, 09 Feb 2020 12:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=+26FYn1Jtrvl0Tdo43WhoX99YiKtnwNRDS1kjmkTi2M=;
 b=t0Vul+D0Xjo3QkfANq67nPW+JcvR+fnNlBs1wiGKUKYAQez/rJl2QQT89j3MTOg6fo
 0ephBTYaZSHyYKWdDq/1wKMVXPpYA8IHTaS94oFhe6WfUGdtzsGqoHHb8k2fUPVzCQzb
 BI0JcrZ8oak/B0fwFWNep5p7PTyTbH7smS569iHlZF4w2usJ6KYvchcRFcQviLZbUAlk
 6wGy4PVuoNehHJEG/bI6oQ45+1qOWCtddYO0u+rVSKI1XqZ+Utcg68a2HmPsmsEqeA3E
 QqFF1cOh/Z8DSxOS5YN+PIlrpKJSTdHieCWG181R5pMl+fInqag4d5qOoJGC7Yg6HkfL
 DZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+26FYn1Jtrvl0Tdo43WhoX99YiKtnwNRDS1kjmkTi2M=;
 b=U/N4uZBWcybLNjOvk5bMw6G9qF0WECPdpUR4Y57h0AACRVUccPs3y7bdT5TgvGPhDy
 JHiYYS4MEDKrsSQG4ioYcIOS3ULu7vPSCMsFJjgwBJOYoub8vA00ty7XLMqVbjzEj0BX
 5+QJbnCl8xFdzNDsdPm0WASd+ZksHptHfkfRrkM7wB4hPnT/FXkKV46kISjyMiV+r2iA
 yNpWULFOIKnR5nvlhi74Fe60c8JeauGOGDKOECLykYZ3sVXe24kgdi/GrGDhJrutXMIF
 KvNM97MO7faXwb7EV34CzoZkP6AzfD/oDNyMEkyE9RczSTiH5CkrBQFGTFDcXgXzRHtP
 uNRg==
X-Gm-Message-State: APjAAAVwB7fTp9Bh1AoarWdwIxyQvcATrK1ZZpj5Nn31aVHkCK0xZ9zJ
 plskNqJ9mc0vbQY9CZgQ2vo=
X-Google-Smtp-Source: APXvYqw8VhcIRxAHx/n78QIiNmOW7ezsRzYLfnmLCgZ6CnDw7qDMRc+fLNCB0O0iNgPsRs/m2r95rw==
X-Received: by 2002:a17:902:b617:: with SMTP id
 b23mr9796027pls.285.1581281759041; 
 Sun, 09 Feb 2020 12:55:59 -0800 (PST)
Received: from localhost.localdomain ([116.126.226.81])
 by smtp.googlemail.com with ESMTPSA id k123sm7075722pgk.48.2020.02.09.12.55.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 12:55:58 -0800 (PST)
From: JieunKim <jieun.kim4758@gmail.com>
To: valdis.kletnieks@vt.edu
Subject: [PATCH] staging: exfat: Replace printk with pr_info
Date: Mon, 10 Feb 2020 05:48:10 +0900
Message-Id: <20200209204810.9899-1-jieun.kim4758@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, JieunKim <jieun.kim4758@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

pr_info is preferred to use than printk.
pr_info calls printk with KERN_INFO macros by itself.
---
 drivers/staging/exfat/exfat_super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index b81d2a87b82e..3806036c0ef6 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -364,7 +364,7 @@ static int ffsMountVol(struct super_block *sb)
 	exfat_bdev_open(sb);
 
 	if (p_bd->sector_size < sb->s_blocksize) {
-		printk(KERN_INFO "EXFAT: mount failed - sector size %d less than blocksize %ld\n",
+		pr_info("EXFAT: mount failed - sector size %d less than blocksize %ld\n",
 		       p_bd->sector_size,  sb->s_blocksize);
 		ret = -EINVAL;
 		goto out;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
