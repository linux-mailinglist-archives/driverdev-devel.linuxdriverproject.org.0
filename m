Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644531F8B1
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 18:34:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E45687E17;
	Wed, 15 May 2019 16:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcoOeK6HwibE; Wed, 15 May 2019 16:34:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4898F879A3;
	Wed, 15 May 2019 16:34:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F1B31BF294
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 16:34:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C96E8625E
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 16:34:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2jGJ1kLt2nfn for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 16:34:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50B5E85FD5
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 16:34:09 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d21so136540plr.3
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 09:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eVN5NvaYHK9NetY87DziZ04GNJGpcWkpFL88hHNR1CQ=;
 b=AIfMx6T+6tKNsXSpyolCJ2jljwj/E6SdkUojZb6exOC2aqj2YOKD93KFszTnHgWham
 b3HGJF3uPpOq9Du5Wx57qv6uCi3DxT8rb/Lf8AWNWyZXmryW5FaXhtUtSDn6/iNlLzts
 glrv8iYUNpdzsKfOpwDx7jI171d4nDY1c37Qz4BJ8oKJnw5l7rPzp7Wxahi150gaicp2
 QOz771BbaWbXHZvjuq+SPjPBfreXKdYpSKGCgjWt0BTJWLJBA9DIIfWAohEoOEBWPT5H
 Ox9fksBRRV4mUfmsYKk3gAcct953qzuTyPR9IvPD0KthYqqcbbQVbg+aXnIA68/MJj9Z
 mlbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eVN5NvaYHK9NetY87DziZ04GNJGpcWkpFL88hHNR1CQ=;
 b=b70BTbra0LX7b7vciVUF/sczyQsmzbDb53mTslwwGGru/lTyrns821psDZCC/mVjwF
 Jd1dhNFYOIW+1BbZ5Yl8bCEMO2ihdxcqx5D4D6z93EvR4gLMvvRjbuC8LjM9dMBhg2t7
 tcuIqflQfhzCvZ+7rQbJlTzaocpRUWD/Qy2/1uXXntQHSK/Ex4/bqXlxj59Q9oPEvJTS
 LCOZCSfP+IxvlHQwJwm9cSOZRVAPP7FRjZZdYOUJGAkAsDwoN3gjGCnARkEcwa2OQ68F
 seHF4m4n1hJqsXH3oiEKo2H5z4rVgOk8BpQWdjI30RluPbxGAZSiVeB8Rm2sQhmnqN3V
 T5/w==
X-Gm-Message-State: APjAAAXHZ4K8QRtxiwqzS8MN4tE084UvDhMn3aQOAe++V8itsr/FfYqA
 q5I3FDCtGEOlSL7QPMCUhS0=
X-Google-Smtp-Source: APXvYqxZPQ0S3EnTh/UESscmYeLemDq+yKm/Bg0g/lBhfcAme54tEsgnjM5OWdj25m6XiqYtNliRyA==
X-Received: by 2002:a17:902:b614:: with SMTP id
 b20mr42789238pls.200.1557938048245; 
 Wed, 15 May 2019 09:34:08 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cf:c592:16fc:ceef:f8b3:1624])
 by smtp.googlemail.com with ESMTPSA id n21sm4737751pgf.28.2019.05.15.09.34.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 09:34:07 -0700 (PDT)
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: kpc2000: kpc_dma: include <linux/io.h> instead of
 <asm/io.h>
Date: Wed, 15 May 2019 22:03:14 +0530
Message-Id: <20190515163314.24415-1-puranjay12@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix following checkpatch.pl warning by including
<linux/io.h> instead of <asm/io.h>.

WARNING: Use #include <linux/io.h> instead of <asm/io.h>

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 13687ab3e9c7..059932ab5907 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -2,7 +2,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
-#include <asm/io.h>
+#include <linux/io.h>
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
