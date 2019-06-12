Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AA6432D7
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7EB8876D4;
	Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emoE7es7Y+hq; Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D94B7876C9;
	Thu, 13 Jun 2019 05:42:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7A1991BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 775B78630F
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pwt8AMPhlmg0 for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 147CC86228
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:26 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p1so7624451plo.2
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1OlXEKtzjNPNzDNMQedbOZwPFQEJ9GUWM5yli/6ibfc=;
 b=fhFYCMehY4A/T/A4SKvbfFYyZKXelDznt67+XdYW0GDa2sskaK8RuD2nScYaiPG2MN
 Q3j/327LkhJ4Z/VzMmsWrs5uS/zM/MlxhimRGsaRgFsWLOmpdg67bqDBbLOfhRr7bBx8
 rqh0JOr1H9Uter8rFBxmE3XMnY+EQYTrSWksCaFg4RfFAyQcpaNpMiFPCl4aKqo4fFdU
 nL966SKQJRlQ69DrPSKk2s60Txt2CtR9qEDVnZ/1x31GAX4aNkhX1IiczWw845hHDQhW
 VSGU3gWihedX3ABaEZaBauhSWksIyQqo0x79C2g5+XZGjCem6xHac4d8uKYPHrZui6Fk
 bCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1OlXEKtzjNPNzDNMQedbOZwPFQEJ9GUWM5yli/6ibfc=;
 b=ZrhNqB74Ed6nL0P9cGhVF4qCSNANgIZ45mckGODux9zkNX1emreQgSOQLhwP2vc05w
 8g/MVingx704YQAP/efRY8O7f21rFosTemQtSnbj/TFFugjHEi7rFP858DQs8iABmoSW
 Xno9tL8DyhevioW7/pLFqx4cBLHqYlOWXyaRWAjzzAfpNvnoWVRH00qOUMcqvGUcjk0f
 TG7cqFQsYsEii8xi+fGj2/+95rbxasmQkAr+PyZ9lRGIOBE0TQ00UlwxiZtdMUpbKMcA
 jEMWIm4Jr2TwKGmaJKoeO6Shv8HWxM03OJCqzsiCSDHXmCIKBgb/boXjaYrZb26J2Cc6
 thUw==
X-Gm-Message-State: APjAAAW1mFxFX4ep72IjdGWpjNJkbA6484S6kcgHazvnaF6h+GtnN67S
 vPsavL/5huSjjGMz+UwvdwQ=
X-Google-Smtp-Source: APXvYqzQKipGC3amHYPViUy8AYMDmrx+O7CtW3Ay+vfHJQs0SptEm8lCN4LbqHCGniBy4CHyQdPE9Q==
X-Received: by 2002:a17:902:4124:: with SMTP id
 e33mr48346272pld.135.1560404545834; 
 Wed, 12 Jun 2019 22:42:25 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 10/11] staging: rtl8723bs: hal: Replace function
 _InitQueuePriority()
Date: Wed, 12 Jun 2019 23:34:38 +0530
Message-Id: <20190612180439.7101-10-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190612180439.7101-1-nishkadg.linux@gmail.com>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
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

Remove function _InitQueuePriority as all it does it call
_InitNormalChipQueuePriority.
Rename _InitNormalChipQueuePriority to _InitQueuePriority for
compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 55d21aa52e62..0676e4febf33 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -397,7 +397,7 @@ static void _InitNormalChipThreeOutEpPriority(struct adapter *padapter)
 	_InitNormalChipRegPriority(padapter, beQ, bkQ, viQ, voQ, mgtQ, hiQ);
 }
 
-static void _InitNormalChipQueuePriority(struct adapter *Adapter)
+static void _InitQueuePriority(struct adapter *Adapter)
 {
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 
@@ -419,11 +419,6 @@ static void _InitNormalChipQueuePriority(struct adapter *Adapter)
 
 }
 
-static void _InitQueuePriority(struct adapter *padapter)
-{
-	_InitNormalChipQueuePriority(padapter);
-}
-
 static void _InitPageBoundary(struct adapter *padapter)
 {
 	/*  RX Page Boundary */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
