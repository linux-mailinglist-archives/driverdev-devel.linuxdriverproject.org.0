Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2173609A
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 17:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 001E7872F8;
	Wed,  5 Jun 2019 15:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j5pzchrk-lOF; Wed,  5 Jun 2019 15:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B299D8506C;
	Wed,  5 Jun 2019 15:57:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA4F01BF2B9
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 15:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D3EBA8506F
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 15:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hODBv86mIKk1 for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 15:57:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0AF7C8506C
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 15:57:26 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id d18so20018399wrs.5
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 08:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rA3vsfkqh5egWjaPGw3fMqsipviOktraHdbK2Sevo6Y=;
 b=oXLvHLvSuyfl/Z/VI+0HDmZgPfI+F4hbIyIsIG8r7tpFLSFtGqk6BbXnPscyq7zpPU
 R8bR2osq0wXH6QL6oDEfPdCDD4PHsOnJxrsfSMX9Amze/IdsUv2hTcKLf7Ijrdo2sAmY
 FkIjL1KgCvH7faWhP4fkS8spjRwEIbg8EPUMCBMAoBoMi0vGVEVxgRZb1pQ1fz6NFc2u
 aAesJiFSkX0+HAdvO9f/6BZF5RwEoWEcBssFQXUDhuEaNa/WMiaiRqHjVSmS+BNdGMtA
 SEm5jeimDTDsBAkZsc04+khhWfqmc+uvb6AE5Z0UGCCcYoKXjllAu4kSzFnLCS164W2M
 fCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rA3vsfkqh5egWjaPGw3fMqsipviOktraHdbK2Sevo6Y=;
 b=ealeFLpz1T3a0czf/TKvFxjqyeOq+2UlaigAlIypmMdslCM1yLv7pU/2b+6AWhzaag
 jyOROeVN/7qooUDsEJDJXmVKQdlZWpOpFNBetXXweqT78pfgOiz0Y1Ju/nBaqLHMqfBQ
 vzULpjSw59OlxST/gciR6KwAUN4ibGPGUsYLJVk4T/ZBf8xNuDHOEqKd68lRgX3/E8sc
 qJ4eYw7Hv1UbKboFM4FUJOgJpY/IvDcvARc7UkU35DKrHCbl2nPQyqtHq5XEGm7HvT+n
 bA9UlH+FAuq/d3ZhXnBzCf04sD38o8NXc2xT8iEEUN9fvkSmvsOQHQkNiYaL6LBIwmGp
 KjOA==
X-Gm-Message-State: APjAAAVahXg3sLLfd2iQMa5RoR13NjoSP4c2twHyuurBkX1A/Vb9/joB
 DAv9L0taGrn/bV8kffBoRy4=
X-Google-Smtp-Source: APXvYqxXNHjHrDbXIYSo93UBNPu5T5NR6YJpRDCej4BTK/2kDPXmTy3BCC3tETHUKya5d0J7bosZSQ==
X-Received: by 2002:a5d:4302:: with SMTP id h2mr731522wrq.137.1559750244732;
 Wed, 05 Jun 2019 08:57:24 -0700 (PDT)
Received: from localhost.localdomain
 (host228-128-static.243-194-b.business.telecomitalia.it. [194.243.128.228])
 by smtp.googlemail.com with ESMTPSA id
 j123sm30845556wmb.32.2019.06.05.08.57.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 08:57:24 -0700 (PDT)
From: Valerio Genovese <valerio.click@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: kpc2000: kpc_dma: fix symbol 'kpc_dma_add_device'
 was not declared.
Date: Wed,  5 Jun 2019 17:57:11 +0200
Message-Id: <20190605155711.19722-1-valerio.click@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Valerio Genovese <valerio.click@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This was reported by sparse:
drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:39:7: warning: symbol 'kpc_dma_add_device
' was not declared. Should it be static?

Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index ee47f43e71cf..19e88c3bc13f 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
@@ -56,6 +56,7 @@ struct dev_private_data {
 };
 
 struct kpc_dma_device *kpc_dma_lookup_device(int minor);
+void kpc_dma_add_device(struct kpc_dma_device *ldev);
 
 extern const struct file_operations  kpc_dma_fops;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
