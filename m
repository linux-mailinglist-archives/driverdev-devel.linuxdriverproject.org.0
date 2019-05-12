Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F771AE6E
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 01:40:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7CB8F85C98;
	Sun, 12 May 2019 23:40:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7+UrECY0tTC; Sun, 12 May 2019 23:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3621585F96;
	Sun, 12 May 2019 23:40:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4CC2C1BF44A
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 23:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 49CAC86F3F
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 23:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YCV6VpvPkYGh for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 23:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D66FC86F3E
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 23:40:38 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id r18so721838pls.13
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 16:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=V/9aP4sXBWazgP7P1SMPOO9GhyiSLOQpBIXJQm36sCA=;
 b=uaC+lCMkuXnDyHkEOZfK1yewRColyHvVkl0QxzhnlelKBTkU+k8dKryWZ/YzA6wVMK
 YAiNhJ24rhHhqeqqPagttd+7ZaCQ4noMSuwrzMZ0dxTIzgIezAps2s8ejjQ1mM6Cz/5h
 5vr718Jrl9wbwEUjMjBphyj1cCjnZ8MZGsXjGtKnTc7e/plebBRmOon2I60SgRd5hmkZ
 3Ud1VNtV5UCkBMNLd3G+4yzgrDti8X2dFzYVOb9hnpI1awbt6bpp5Um2FXOqS4IXau00
 skHlqRnp2zsJBKxCmVjtxDlCnCrDQn87ASAFO2WqxU3tDzmW5kuo7jTodWaQ1JePEnZV
 tpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=V/9aP4sXBWazgP7P1SMPOO9GhyiSLOQpBIXJQm36sCA=;
 b=jFJZ4mwxUHgpTsfFjmXgBSV9Euo4Bn5JI/kFTV2TAIb3Xy1urfalGVt38l0G7fBkdP
 6PN3LZGmN/ZXXkeeN5dMgrbY2Kh7tChIlTFbBWwRUjKGA9FKfQ3l1O5JPZTR3ATNQHR4
 xMeNCzf2Oyvu/34AZdD8VKcD7Coh5I0GyNbies7uRT2pFivsDSusMgDl2ajNKGm/IXuj
 AFrtuK/5RixWey/U9Erq54HZfTUiA0b0X1t1c9Ium0wWACdKjh1Mqb+EjrZpXeFu0Pp0
 2jxUoSzlU+Unqc+iTLR3grqyckjglTUyicwuzTmH6KjVpKxtiPd7SqTY3BlyFPcOLJxd
 Vg7w==
X-Gm-Message-State: APjAAAUIuswOJoPuZVS7gvifpHO+4odx9BdeLwPEiEfNN/OdhE6WznUa
 0XKBmHPZKJjhCJoqfQJJHQw=
X-Google-Smtp-Source: APXvYqycVl+mVmGsXkjcTIs/TP0YbWeE+vrg0qUqSF5yOkD4TgrWAGxgCbUc4QpP7G+K66NVnGjraA==
X-Received: by 2002:a17:902:e708:: with SMTP id
 co8mr27022182plb.141.1557704438416; 
 Sun, 12 May 2019 16:40:38 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.241.202.125])
 by smtp.gmail.com with ESMTPSA id
 e29sm13528376pgb.37.2019.05.12.16.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 16:40:37 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v2 5/8] Staging: kpc2000: kpc_dma: Resolve coding style error
 reported by checkpatch
Date: Mon, 13 May 2019 05:09:57 +0530
Message-Id: <20190512234000.16555-5-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512234000.16555-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190512234000.16555-1-bnvandana@gmail.com>
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below errors reported by checkpath
ERROR: Macros with complex values should be enclosed in parentheses
CHECK: Prefer using the BIT macro
ERROR: trailing statements should be on next line
ERROR: trailing statements should be on next line

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 0b8dcf046136..e996ced77bd6 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -14,7 +14,7 @@ MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Matt.Sickler@daktronics.com");
 
 #define KPC_DMA_CHAR_MAJOR    UNNAMED_MAJOR
-#define KPC_DMA_NUM_MINORS    1 << MINORBITS
+#define KPC_DMA_NUM_MINORS    BIT(MINORBITS)
 static DEFINE_MUTEX(kpc_dma_mtx);
 static int assigned_major_num;
 static LIST_HEAD(kpc_dma_list);
@@ -55,9 +55,11 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 {
 	struct kpc_dma_device *ldev;
 	struct platform_device *pldev = to_platform_device(dev);
-	if (!pldev) return 0;
+	if (!pldev)
+		return 0;
 	ldev = platform_get_drvdata(pldev);
-	if (!ldev) return 0;
+	if (!ldev)
+		return 0;
 
 	return scnprintf(buf, PAGE_SIZE,
 		"EngineControlStatus      = 0x%08x\n"
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
