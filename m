Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0B7432D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FD4E86352;
	Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqAo7dE_gC_Q; Thu, 13 Jun 2019 05:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E91B786293;
	Thu, 13 Jun 2019 05:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E1E261BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DAF4B86D6F
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WoVTbdIeLspT for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A93E98771B
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:23 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id c85so11094164pfc.1
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wsuZlSgefgsk5BgJ78liDIAIfaYWtEcJpMi7CaVuTiA=;
 b=UGySgf3l+TSQzYLQDWWkiWZPKqRfEg5r28xeVrNwrd/DiYHLUUx25yZAIvyEc7/242
 Ie17P6JkjKe0qlm5yIs74vqnA9/uGWjFre9qAANOSjlN519jo+YH1HGateuvQj75paaz
 6zPrM1c5uDH3vByWPSFjg+o2OFnFnGbvu9MKk1mSh3khGROAKKtIc0lMmVd1WtdDcMr4
 BGfwuB08tf7ssyuLCjIzi5E2yzgo8RTetgEzIx/NHDxnhDT38yLFLmitlCDErW47sQLn
 xtvpjdsVI5hBxBTr9dCX7ICs/J5GQ9EwrPPkxMtQa4OfjzoMAi0iDa3Fa5YC/QBv6SZQ
 fMcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wsuZlSgefgsk5BgJ78liDIAIfaYWtEcJpMi7CaVuTiA=;
 b=A/YNgCG4hwcR+bO4qwWK3g3gFWTJx6vzJyK9Rm/iG8C0uEfOoo0K5SHqg/CbRFc0sx
 KmE9lfoBhh1HMKNIEuJq3ZvX1gGpMk7opaS+iQKeGHkabqBZRLjUC4qnWHX2iU6KlIZk
 c53sJddvm2v6tYYFzqjoNE8yNAunW2qSfVrHBsDxwZ2c742ghmrvBtYWLSJCorepiG7v
 kpxkdRimw3ft7enfv98nxc6cYpmE4TGH6zOkiSv2eSqeB5/c7jwqN0LIeF+TJZuZYrHB
 QMmaUiTsQIyqvxeTkpzv0vIrLMas4tza47yOMX9q8qW+8568BXeMCM3BjImlW7W5L0fT
 7PfA==
X-Gm-Message-State: APjAAAV9TY4XT9s6nL4J8g9HuH9lnAwiheJ1rFY7LCgJ/+4yYi7gOLM6
 EolRhtxYJPLQnHkmpMg7GXc=
X-Google-Smtp-Source: APXvYqyOBIIGxBMT0Mu+gdhCw9Yy/4qQ8CNuhLUSgiVLR1bWi2wudqeQ2tBssehKpyhz5QYG0k2QFQ==
X-Received: by 2002:a63:f817:: with SMTP id n23mr21365064pgh.35.1560404543349; 
 Wed, 12 Jun 2019 22:42:23 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 09/11] staging: rtl8723bs: Fix typo in function name
Date: Wed, 12 Jun 2019 23:34:37 +0530
Message-Id: <20190612180439.7101-9-nishkadg.linux@gmail.com>
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

Change name of function hal_btcoex_Hanlder to hal_btcoex_Handler.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 2 +-
 drivers/staging/rtl8723bs/hal/hal_btcoex.c     | 2 +-
 drivers/staging/rtl8723bs/include/hal_btcoex.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index 35310e8e0806..8944db15863d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -101,7 +101,7 @@ u8 rtw_btcoex_IsBtDisabled(struct adapter *padapter)
 
 void rtw_btcoex_Handler(struct adapter *padapter)
 {
-	hal_btcoex_Hanlder(padapter);
+	hal_btcoex_Handler(padapter);
 }
 
 s32 rtw_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter)
diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index aebe8b8977ad..fd0be52988c1 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -1472,7 +1472,7 @@ void hal_btcoex_HaltNotify(struct adapter *padapter)
 	EXhalbtcoutsrc_HaltNotify(&GLBtCoexist);
 }
 
-void hal_btcoex_Hanlder(struct adapter *padapter)
+void hal_btcoex_Handler(struct adapter *padapter)
 {
 	EXhalbtcoutsrc_Periodical(&GLBtCoexist);
 }
diff --git a/drivers/staging/rtl8723bs/include/hal_btcoex.h b/drivers/staging/rtl8723bs/include/hal_btcoex.h
index 4066b0a1450c..10f44ed72c0a 100644
--- a/drivers/staging/rtl8723bs/include/hal_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/hal_btcoex.h
@@ -43,7 +43,7 @@ void hal_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf);
 void hal_btcoex_SuspendNotify(struct adapter *padapter, u8 state);
 void hal_btcoex_HaltNotify(struct adapter *padapter);
 
-void hal_btcoex_Hanlder(struct adapter *padapter);
+void hal_btcoex_Handler(struct adapter *padapter);
 
 s32 hal_btcoex_IsBTCoexCtrlAMPDUSize(struct adapter *padapter);
 void hal_btcoex_SetManualControl(struct adapter *padapter, u8 bmanual);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
