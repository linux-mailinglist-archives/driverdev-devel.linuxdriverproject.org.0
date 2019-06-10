Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D593AFE4
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8E3B68731E;
	Mon, 10 Jun 2019 07:47:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id alBzQpBdgk-u; Mon, 10 Jun 2019 07:47:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2233986E48;
	Mon, 10 Jun 2019 07:47:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 176A51BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 132732033A
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHLnWn9LS9F3 for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A6E52203D1
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:32 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s27so4589124pgl.2
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CuS5u9qGo24SOolNS3hHJ/2wm8VRaO5DdoHZWukXQw8=;
 b=GnNJmsQc5nNepJckLUOtOAct+CAvCPphmp1yqn8o0dpNGb3ibnolhxZn9cbgaYaAcr
 x6XhTlP/bDH4omZxFlKtOMknLCBjbhLLcQhpi4RG7/lJ0Y0efK6SDBrRPjJBs7EBHGFZ
 7uL3lNiVLJOCMQkQJpePlnvv4IUd0kukvT654qEviUEH8dEoM+e8GyzpWXE+sy4yyaPk
 O5gIbwirs2ymxj4eYUvp9JkgDeiyrCB+KF+Z8LnAqEeKqBdF/qHrUg0QnfIfFnj9AYjC
 sVRNEHtZMRfFehfTF1UgOk3Q5FDsKS6yic9GPOO97+qYDcaT6xbthxXl3UzBBLtdPA6n
 Horw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CuS5u9qGo24SOolNS3hHJ/2wm8VRaO5DdoHZWukXQw8=;
 b=SJ2K3vd0tjwTofafJ3DUCAiNVd83KyOn6Fatv/5jjpcAVVKJrO/+HFVw+7mB3TF6vY
 tY5dnOIMwYrzhcHW3qLWK8XfU7bCO31Pj6dpSmILbNEG7eYD7Rt5kvqjgp/W4yAeeFt1
 UZkaYx8VKYju8xGFc+AFfanoLyZ75oQPhIFHZxI+CXXGKJD6CikPzQlUAiNnXAe9+Sle
 PupARKvymoWMRkB/jWj4MjmAws3UMwoqpqVgamxOOew+o030d6TmkQtpZd1j1REpYcGG
 JK8u+p3fkRIi/lcLF5VOXYKD9NP75tpPTM6cOv8t6pk1nuNeOHpBYpdkY+ApHrFm2VsD
 R7NA==
X-Gm-Message-State: APjAAAWmzSqil3YSqemNzxRSFv2mpNiItrAw/Z//tRC7jL7vbWvBizdx
 UnwODxFYfd5N3gfRyb8JULg=
X-Google-Smtp-Source: APXvYqxqFunwDbfEXde6/7BZB4x8FvuE1tQPo5dX1op7oGIOiQkZvKhjTVadLvHV7txSOUhc1a4Xiw==
X-Received: by 2002:a65:668e:: with SMTP id b14mr10575394pgw.407.1560152852360; 
 Mon, 10 Jun 2019 00:47:32 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:32 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 06/10] staging: rtl8723bs: core: Remove variable
 change_priority
Date: Mon, 10 Jun 2019 13:17:06 +0530
Message-Id: <20190610074710.15677-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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

Remove local variable change_priority, as it takes the value of the
argument priority; as both of these variables are of type u8, priority
can be modified without changing the value of its copy at the call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of a patch series.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 53146ec62ae9..b5dcb78fb4f4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -625,13 +625,11 @@ static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *p
 
 u8 qos_acm(u8 acm_mask, u8 priority)
 {
-	u8 change_priority = priority;
-
 	switch (priority) {
 	case 0:
 	case 3:
 		if (acm_mask & BIT(1))
-			change_priority = 1;
+			priority = 1;
 		break;
 	case 1:
 	case 2:
@@ -639,19 +637,19 @@ u8 qos_acm(u8 acm_mask, u8 priority)
 	case 4:
 	case 5:
 		if (acm_mask & BIT(2))
-			change_priority = 0;
+			priority = 0;
 		break;
 	case 6:
 	case 7:
 		if (acm_mask & BIT(3))
-			change_priority = 5;
+			priority = 5;
 		break;
 	default:
 		DBG_871X("qos_acm(): invalid pattrib->priority: %d!!!\n", priority);
 		break;
 	}
 
-	return change_priority;
+	return priority;
 }
 
 static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
