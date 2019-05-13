Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B861B741
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 15:44:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F7A4876D8;
	Mon, 13 May 2019 13:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R+ZuZ7-Xkqc8; Mon, 13 May 2019 13:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9A32870DF;
	Mon, 13 May 2019 13:44:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D85C1BF291
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:44:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A5AC2550C
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:44:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W5sOoOV5Wk-b for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 13:44:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B71D122EE7
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 13:44:01 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y3so6522965plp.0
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 06:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GkpT1sXmb+12L7PMhae4FFhag91+1a6A+uc2b01x+KM=;
 b=s6DFoLZtUqlkOd20JLTwW9RKM8oNEOVZginRLmfTyKaaghR7dksNdQNikyz1R1l0YD
 jsf5QkoplKHoCItfE9QhoyEJCiacsDS8DEj6P270utiM2xzLcH2IiO+1EoZw8CFOT65Z
 NkeElX31tgycWRgonfSZnqoW+d5RLoT7MmquECNfg1hXG6QUG3gL7wfrA7S6uUL4933s
 gXVqIWwKgRnigCsmCB3kP5n/KPXgMFP679XeNyTlNJjN0NTU6v2ewVw6EZl/fsSwJURf
 ujOZc2Z07AYGOQkkDPne9DDHhpq8jpjZYp9i9mZAMEFQWH8W9OBvrxeFQP4r3xwLUCZH
 H0+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GkpT1sXmb+12L7PMhae4FFhag91+1a6A+uc2b01x+KM=;
 b=gHL3D54ZwXjWTx9y9554Go2EfcH92Ue3npJLFmHAm85/nmK4AlhbWsCb76FHmUYmxm
 ov4hytwEgzWTz0RwNOshpEZS0PA48/1N+ZAcGvYzLAN7bNK9c/IZHmVlpitMuII7xnA0
 3DwgpB9MKkq9CXkihS6rSaa2aI33CTy+Ebi55U3jpMVzXnJf3bK5BcZszrxMIXHFuMjg
 iUEDTmyjmcoTNa9hVX9D23gYymsgKQAvnkGpUNGdoY8MGnG45SmY0Trl1FsjbqdnkM8O
 eOm5wZUR7dknzdTbi8jPIJMcWcKgXN7+3ThD+gBIfv3M4jfLlToLBcRs6ruu6zu0Nont
 Dayg==
X-Gm-Message-State: APjAAAUpUYoCwZDWk8q5slJcGTU1pA4Swg7j1q0KGvbwJW0gnWwKfakU
 FjzDHw6+SAkaeMqkORvVMUw=
X-Google-Smtp-Source: APXvYqy90EXkl2Z8jAnWXZnG28TxgNjucm+D1eIdecwlVWFMf5c1cr9bRd+bih8bzsm810BosTMyIQ==
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr14646747ply.234.1557755041266; 
 Mon, 13 May 2019 06:44:01 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 e10sm10874261pfm.137.2019.05.13.06.43.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 06:44:00 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: dan.carpenter@oracle.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lukas.bulwahn@gmail.com
Subject: [PATCH v4 4/8] Staging: kpc2000: kpc_dma: Resolve code indent and
 trailing statements on next line errors reported by checkpatch.
Date: Mon, 13 May 2019 19:13:23 +0530
Message-Id: <20190513134327.26320-4-bnvandana@gmail.com>
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

This patch fixes code indentaion error reported by checkpath
ERROR: switch and case should be at the same indent
ERROR: trailing statements should be on next line

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
v2 - split changes to multiple patches
v3 - edit commit message, subject line
v4 - edit commit message

 drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8dd948ef455f..c09147aaa4ef 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -395,10 +395,14 @@ long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioc
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_ioctl(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", filp, ioctl_num, ioctl_param, priv, priv->ldev);
 
 	switch (ioctl_num) {
-		case KND_IOCTL_SET_CARD_ADDR:           priv->card_addr  = ioctl_param; return priv->card_addr;
-		case KND_IOCTL_SET_USER_CTL:            priv->user_ctl   = ioctl_param; return priv->user_ctl;
-		case KND_IOCTL_SET_USER_CTL_LAST:       priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
-		case KND_IOCTL_GET_USER_STS:            return priv->user_sts;
+	case KND_IOCTL_SET_CARD_ADDR:
+		priv->card_addr  = ioctl_param; return priv->card_addr;
+	case KND_IOCTL_SET_USER_CTL:
+		priv->user_ctl   = ioctl_param; return priv->user_ctl;
+	case KND_IOCTL_SET_USER_CTL_LAST:
+		priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
+	case KND_IOCTL_GET_USER_STS:
+		return priv->user_sts;
 	}
 
 	return -ENOTTY;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
