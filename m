Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F977598E6
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4ACB6881CC;
	Fri, 28 Jun 2019 10:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiWbys6-XTYL; Fri, 28 Jun 2019 10:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D60B887D3D;
	Fri, 28 Jun 2019 10:59:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F0A4C1BF20B
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EA65F85C00
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxHu8Uxj6-vE for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:59:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8F4085BCA
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:59:01 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a93so3058177pla.7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/TgUZD9MdlXHcygX6so9wAlHqex0KFTEw+PZ5FbeMcU=;
 b=d1n642qlbpkeYBOy0Ubg4ZFJspjhyYBYr3vyjlKP6zELldR8iDwppnTHT/bs7gyXF8
 dSsfJtUS88X1M0m+TEu7aBwr/oJOqLv44l1TEnGJZA7j7krKeA9qJ19SReAG5+LeeriS
 OcF+UAhmnV0UX7zXqYGA/tv7PvBmAhDlErp8xC0hqtcSjKORmQ0ELuCZRXJjWnDFEjW6
 WBM6YtcvxaBv09gVn32+L5+rWN+uMTo4T0ubeueXSbT7tPv2LlMSjc4Tvh7tLAvlvKa4
 lqfKydTWwg+qhpDWPMcftkelSuoXWYOHyjIJPlSE0who6+/W+0nZxEjqG+RruRmNzuXH
 WYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/TgUZD9MdlXHcygX6so9wAlHqex0KFTEw+PZ5FbeMcU=;
 b=ZdzMy8NW1UhyuoM5IOTTvlQ3z5m/oOXr9g+5GglDEJnQGJ91EKlkpznKtJUtwfzUwq
 wT0fkue1yqoAFI8KwLuoDRPH6LXdbVurJhNbqRNp5CfwmsLNQ0Qjk7Dp396WmAi5E7B+
 ALXL9chKe9XG7LQWFq6tDl3fhkr4ylDsfpzjW9iV6mExtMWOn7Ggik2W6sO/QgMA0TIw
 dwD8tn7CDRbWSKE6QgHbAtsMxRAnwJVCfk0WkdztydDXvFDU1piFMIvLXII5cN1BmDPy
 ak4XBcIBA6o6yLx9I8MwgqVkfENiQwHitJUHheU/7JMXm8IrSybAcGYVbcf+f+oLC60k
 eviw==
X-Gm-Message-State: APjAAAXjCgk0prG16OePZvziQ7Hvdruc48qPie1MoBasopgqHM8u3O9M
 UfhLRnMTvxlON4nz63gotYo=
X-Google-Smtp-Source: APXvYqxnnwOedngzXkeH6RDvX4bVczU9zbcygA2DR4DE8g4tTGtcQO4BxFwujdqiLoPKWAbMkzMFVg==
X-Received: by 2002:a17:902:ac88:: with SMTP id
 h8mr10927861plr.12.1561719541562; 
 Fri, 28 Jun 2019 03:59:01 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.58.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:59:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: rtl8723bs: hal: Remove function
 clearinterrupt8723bsdio()
Date: Fri, 28 Jun 2019 16:28:31 +0530
Message-Id: <20190628105835.6931-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused function clearinterrupt8723bsdio and associated ifdef.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 35 ------------------------
 1 file changed, 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 399dbb4c934f..82e249e7fbb4 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -795,41 +795,6 @@ void InitSysInterrupt8723BSdio(struct adapter *adapter)
 							0);
 }
 
-#ifdef CONFIG_WOWLAN
-/*  */
-/* 	Description: */
-/* 		Clear corresponding SDIO Host ISR interrupt service. */
-/*  */
-/* 	Assumption: */
-/* 		Using SDIO Local register ONLY for configuration. */
-/*  */
-/* 	Created by Roger, 2011.02.11. */
-/*  */
-void clearinterrupt8723bsdio(struct adapter *adapter)
-{
-	struct hal_com_data *haldata;
-	u8 *clear;
-
-	if (adapter->bSurpriseRemoved)
-		return;
-
-	haldata = GET_HAL_DATA(adapter);
-	clear = rtw_zmalloc(4);
-
-	if (!clear)
-		return;
-
-	/*  Clear corresponding HISR Content if needed */
-	*(__le32 *)clear = cpu_to_le32(haldata->sdio_hisr & MASK_SDIO_HISR_CLEAR);
-	if (*(__le32 *)clear) {
-		/*  Perform write one clear operation */
-		sdio_local_write(padapter, SDIO_REG_HISR, 4, clear);
-	}
-
-	kfree(clear);
-}
-#endif
-
 /*  */
 /* 	Description: */
 /* 		Enalbe SDIO Host Interrupt Mask configuration on SDIO local domain. */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
