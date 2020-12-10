Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7B92D5631
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 10:10:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BB3B87181;
	Thu, 10 Dec 2020 09:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltKaERicPCmj; Thu, 10 Dec 2020 09:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 84E0E87094;
	Thu, 10 Dec 2020 09:10:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 331DA1BF3D4
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 09:10:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 299CF20134
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 09:10:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SzGzAr90Fn-4 for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 09:10:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A6DB2011B
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 09:10:37 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c198so3943251wmd.0
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 01:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QpyrZoiER+zCyF8HpO4UqQSTTSh7Jr5N+k2TvNlAzgU=;
 b=MdJK2mD0l5uJdJbu/Gswmd44hgf/kn4QbbPenS4LG2YlN0FZKzmobhEGnsvppCzkMe
 JNif/+N1s8wdRobYG4fzbMU59eWsIvDcKEvusa6XrpaSss3VEU6SgEL3gJJe2VELmNod
 Zyvvin3G/OZYABNwpkmkk/4c9Ab6kKccURqsllox09sOtyzkkcleFvV1wTrMhIapBCMR
 vHQliQU/r58TM+8s0MOri49Iu3aRBD2EDJxMF0K+5aPJRHLeBXIwk52VMzGnkz8UqTNJ
 delWzmILv001ksWWpNtbg9DANsL9TxKAG3QLCPDF3Br+C+D7j7qQsDgENkDZbFndw/Y3
 GfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QpyrZoiER+zCyF8HpO4UqQSTTSh7Jr5N+k2TvNlAzgU=;
 b=iHWVk2MGpl48gGDx8PFrxinLVI4aUGAIObjXj5rNIdWY4j9/9FjTGf2ptj/MU62OR0
 wBGNTV1qVJ8UqUuC50JFMRRHdYFMorin9TSGSt+6K31vXrrwYOpcdsmeI45V3Xps+ob8
 MzqPwOA81NDahA3ppeGYUxEJOSAwwznZOqxSBwMmirfa/I8io9TDBToU3xwcRhhPwH77
 6so79QJ3a/sLJ7evGaQD/sndB0vX35I3X95GRXrPZVmpZbQkNO6lahXHNI4YJaNA01BU
 KIltHqHJdXSS2VYoE1lYPbHwFtzKsoY1b5NbHsZcX0gVwt8h1TyFmvXEstCI3YrUOEJj
 zwAg==
X-Gm-Message-State: AOAM530ddecFpa6x9ZGuGE59oc5cY9pI2QHUu7+EboQoZQ2qVqMkgLyI
 HLVZZyewlDPnsiRnHAZU6/8=
X-Google-Smtp-Source: ABdhPJzMuh6P7mMx5+wD+cRni0VZSIG4oEfWDELzQSfTATTz8yGsl58hrQH76IYKHUA8L2bu2mwrMA==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr7270501wml.31.1607591435630;
 Thu, 10 Dec 2020 01:10:35 -0800 (PST)
Received: from localhost.localdomain (82-132-223-245.dab.02.net.
 [82.132.223.245])
 by smtp.googlemail.com with ESMTPSA id r16sm9123935wrx.36.2020.12.10.01.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 01:10:35 -0800 (PST)
From: Chris Bloomfield <ginge264@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: ralink-gdma: ralink-gdma: Fix a blank line coding
 style issue
Date: Thu, 10 Dec 2020 10:06:57 +0000
Message-Id: <20201210100657.22562-1-ginge264@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Chris Bloomfield <ginge264@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix a coding style issue as identified by checkpatch.pl

Signed-off-by: Chris Bloomfield <ginge264@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 655df317d0ee..a6181a167814 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,6 +122,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
