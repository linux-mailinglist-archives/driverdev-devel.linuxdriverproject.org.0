Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EAF432D8
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A07342273B;
	Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L9JrnF2RQSFj; Thu, 13 Jun 2019 05:42:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1DCD421515;
	Thu, 13 Jun 2019 05:42:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14E161BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 12413876C9
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8CLfbjAp-qn0 for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9196286D6F
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:21 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p1so7624352plo.2
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Itf/PGucHpqVMj0hVe0Neepm0j7VFx55N12ERjXtZqk=;
 b=T9SGOxq6GFa4D694T5utzrrJKu66nmkzXXKIVs+EQABRikK6nu7FT1zFFifyqX3uzL
 xZkqLwIh1QaX09mOCEbClNP4YIByciLYjsFJdu5TZJom1DInCwNN2WS6Sx2XHoJcG/2h
 H+EfdhaCq5dsYvDX23X2YfmF3p/VVnA8P3k1sp1cwl7hQmnpLZj7bMcSY++N06bahhZn
 9OAFEszUstrdphmqNxmojoRkpnyRly5V7WDEys/7EA4mvMSfnL0DoizxfNARqQCWU1Gk
 O8Pun6NXEGGHZEHDz5J2b6m1O7wmCfNhcplLAbgimanPVJ28B/zyaobnO+RpYjjiy6LJ
 fi/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Itf/PGucHpqVMj0hVe0Neepm0j7VFx55N12ERjXtZqk=;
 b=MoaJ1pHNI5f88dmoN8jz8TCy0XSNkL60iQPVkG/S63Q4yuqNmhYQF3+91HuLQ5NlCK
 TifUaaCwN6VNMUEEbQyipSdT24NPFB7Zb7FpxZ3oyeHVNdXMRg9eo8OWOrSiikd5lsSW
 a6Yk1xDDuP8cKsnzmTeUy3hbJtRo+MbKLsAL7xDI2nNs9hZNTgytovlblE70ycmdF4wz
 BLGVucaJJ9Q18s8pZsDoD2DcdmDgrafaiOA5BwWMiZ7tsaAmZs0g34xFl4ZYHsJqahj1
 gSw/T4+Ay0bu4kwVN9lbj3OFWBZIMeOdv6x/ejzX8zDd02CSZ1KTkGaiRgLidoh11Vhj
 cHgA==
X-Gm-Message-State: APjAAAUe9ZDWNp0GmYHS9nqQPJEmbdA7JISimXh6ORhTuWY9+8+dmycJ
 KNLvO4lXUKw9yv1MnCJLzukaovk0
X-Google-Smtp-Source: APXvYqwgIO1Z8b2GcJbp5SEZG7GvSeQIP54URkW5WFadpbnNu8U1Zmm88dmfEXqUuzLcAKJcUYKcEg==
X-Received: by 2002:a17:902:7083:: with SMTP id
 z3mr21146990plk.205.1560404541311; 
 Wed, 12 Jun 2019 22:42:21 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:21 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 08/11] staging: rtl8723bs: Remove function
 rtw_set_scan_deny_timer_hdl()
Date: Wed, 12 Jun 2019 23:34:36 +0530
Message-Id: <20190612180439.7101-8-nishkadg.linux@gmail.com>
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

Remove function rtw_set_scan_deny_timer_hdl as all it does is call
rtw_clear_scan_deny.
Modify call sites of rtw_set_scan_deny_timer_hdl to call
rtw_clear_scan_deny instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 5 -----
 drivers/staging/rtl8723bs/include/rtw_mlme.h  | 1 -
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c | 2 +-
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index b42d94a3a28c..63b381ed4a17 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -1930,11 +1930,6 @@ inline void rtw_clear_scan_deny(struct adapter *adapter)
 	DBG_871X(FUNC_ADPT_FMT"\n", FUNC_ADPT_ARG(adapter));
 }
 
-void rtw_set_scan_deny_timer_hdl(struct adapter *adapter)
-{
-	rtw_clear_scan_deny(adapter);
-}
-
 void rtw_set_scan_deny(struct adapter *adapter, u32 ms)
 {
 	struct mlme_priv *mlmepriv = &adapter->mlmepriv;
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 9c9aa9254288..d3c07d1c36e9 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -589,7 +589,6 @@ extern void rtw_scan_timeout_handler(struct timer_list *t);
 extern void rtw_dynamic_check_timer_handler(struct adapter *adapter);
 bool rtw_is_scan_deny(struct adapter *adapter);
 void rtw_clear_scan_deny(struct adapter *adapter);
-void rtw_set_scan_deny_timer_hdl(struct adapter *adapter);
 void rtw_set_scan_deny(struct adapter *adapter, u32 ms);
 
 void rtw_free_mlme_priv_ie_data(struct mlme_priv *pmlmepriv);
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index da4bd5292b0a..aa2499f10611 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -26,7 +26,7 @@ static void _rtw_set_scan_deny_timer_hdl(struct timer_list *t)
 	struct adapter *adapter =
 		from_timer(adapter, t, mlmepriv.set_scan_deny_timer);
 
-	rtw_set_scan_deny_timer_hdl(adapter);
+	rtw_clear_scan_deny(adapter);
 }
 
 void rtw_init_mlme_timer(struct adapter *padapter)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
