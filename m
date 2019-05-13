Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8261B743
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 15:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D71E857B0;
	Mon, 13 May 2019 13:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OWZlcv3VrSJy; Mon, 13 May 2019 13:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A810B85816;
	Mon, 13 May 2019 13:44:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C77031BF291
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C4CF722EE7
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kE9f5+JzVWib for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 13:44:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 1031B258EB
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 13:44:05 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id y3so6523038plp.0
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 06:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SmS1tHJZuu1TzBbhnzD6ESGOsCR6ApPpfTs/I1lOhUY=;
 b=D5hzPWG6gtCd0TMFcL+cgKdSZm0s3l4fWz8loMtKRxjuhvmhXs9bxiwu2cFEEpRuRN
 +HrmDtqBudGQeIwXdHJiN6WAVYlyMLk9RdYL2TK4LeYQw6Grtn7nMVoz2DHPW+uB/Jj+
 zT2Gz2Cs8Mj0+KwHadXJ9DgqeoQJyLaYElrB9xyZiN6i21GOKBK3psU8JAM/K4290UQy
 CPXVf+4jgS9UixHWfwoOPFevF4zBKsf82FBrlYYCnGR69vTCyvAD918uBAPXNeCeBaBa
 cIK0VZKjnrVq8GBKrhrpo4kN9UoVt6nbVG5OsN3U7sbL6PVDqMEgQxhzFZEc/ELQd8oK
 v5kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SmS1tHJZuu1TzBbhnzD6ESGOsCR6ApPpfTs/I1lOhUY=;
 b=ZWLHg6g/cOE8YESO6RCcRDVscd8xiUUwoByJ96fAt2MZ2pfQZUVlB7KMTPXQz2DmB8
 2YBrKOKbjnMeY0OepG+MRbBWWsT3dn4CKYASN0L6jeeAfSnr3qT/2CbguWicNGN229KV
 OdKCrgjiSmd1RG7a+ttHcCOMwUb/nd0wfm4hG7lqXy3T7x8Hz0brxP6xkPi1q9Is/7zb
 lQ39Mpb6tjgp0qPMwdx+Z0cwCIrv8JK66J22dgy7sV9QZBOd41kdWToJfYp7gZaalLtu
 XgFtOEZcNa0R1R/yyFywoXk7D9tknJ8nTvno4fRNr8fDIs0V/8oTy8ysbUi6TI0wf4Rz
 kMJA==
X-Gm-Message-State: APjAAAXgjxtT8GraZzFRczzCgSsQGHEE4C9ZB/oN9pXVByc+vhqfp4sB
 REXk3VqpOI0FcgwZvtVG0w0=
X-Google-Smtp-Source: APXvYqxyxzhUjqIhmL52JnWQuGs9wpsgd3PD7MTpjvxbqgt+3ubDZ4fb6ZOa0zYZyzBmiQHyvc5jxg==
X-Received: by 2002:a17:902:7082:: with SMTP id
 z2mr8052506plk.176.1557755044642; 
 Mon, 13 May 2019 06:44:04 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 e10sm10874261pfm.137.2019.05.13.06.44.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 06:44:04 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: dan.carpenter@oracle.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lukas.bulwahn@gmail.com
Subject: [PATCH v4 5/8] Staging: kpc2000: kpc_dma: Resolve checkpath errors
 Macros in paranthesis & trailing statements on next line.
Date: Mon, 13 May 2019 19:13:24 +0530
Message-Id: <20190513134327.26320-5-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513134327.26320-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513134327.26320-1-bnvandana@gmail.com>
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
v2 - split changes to multiple patches
v3 - edit commit message, subject line
v4 - edit commit message

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
