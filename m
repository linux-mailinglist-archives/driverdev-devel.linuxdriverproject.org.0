Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D6C744E0
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 18EC922005;
	Thu, 25 Jul 2019 05:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yee-x2eaUKOk; Thu, 25 Jul 2019 05:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 529E222001;
	Thu, 25 Jul 2019 05:27:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C12DA1BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B74E920477
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g2e+cq83LFwT for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E6A220467
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:27:06 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id b3so22934917plr.4
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2EHawML9VBUTT6zZt9UI00v5M66nNRZxZS3Yif4FAiU=;
 b=h6N17QCuoLJFzNK1iGGEoO1TbaK3wKGaZeltRgkqkjIBtjHoiZomcOmqf1af/U8kUm
 Kz0Oezo5J/FuYbdKa3J5HdTlSptUfXmaivXselzVxAAyrn8Vhzc6hD3nfzwz6XGshr+R
 G5zz8ZBS8zRsEDdoxQlotXwCDV0inmvbTMRq9ldGL0sx8YzPK15jJfTV+/23YXSHGJMP
 dGEHT0mg1PyBp/K1N+ep5qIGK/G7v/VPX+Qy6I9Iphuqz7ytZ3UCcQUajpQcfrQfttWo
 0VNUcLeCRN2NiPBEjjo2Gu2LEhX0k9YBH+dU37U2isHws4B5XItlDLyomtLWCtwZK1Gr
 vK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2EHawML9VBUTT6zZt9UI00v5M66nNRZxZS3Yif4FAiU=;
 b=T5TQ5HW0WdfMboYLJ8v5fCwyNzr49NJxbj/hshvmBet48mucVc7rrp6uLRgjURPAnM
 OXNfZtRdWSr1TrvbtVcSz9+fLf6XvxrNLIiy1R5o9XPUsvifv7NZPpxcxu8jUGiMrSQ1
 qSSpI1JNng/ZMoSawWCsV7rlJ8LoPOUHanGMb6C9Z5v0quX8Kz0IP1yD7PsICq4Poygf
 F7e5Lx7a2RHtf2/zYyrjHFabuOMlS5B1asRn3gUTw+43YCoc5qHQEF+gWeHtvv/x562q
 qA13hWpijxQBoZMaRhxH+D3DWbdf9+0fz89DrbU47IYvVLkEnMP3THmxObFbIsWQfz8o
 V1Tg==
X-Gm-Message-State: APjAAAW/7iF6vClDAGCJPlAvXxx4R6T7qBVYXFLbMseURNRzjr1QZmb1
 27tn/OSWqssYWLmCQH7Av88=
X-Google-Smtp-Source: APXvYqztLgVFuY360xJ0Ca8YttRrxzfQuyLu/FFcS0jzhH3QqbBYq2JrVJCtlwzsnZwCffa0xXV+2Q==
X-Received: by 2002:a17:902:290b:: with SMTP id
 g11mr87660683plb.26.1564032425941; 
 Wed, 24 Jul 2019 22:27:05 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.27.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:27:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 4/9] staging: rtl8723bs: hal: Replace function
 rtl8723b_set_wowlan_cmd()
Date: Thu, 25 Jul 2019 10:56:40 +0530
Message-Id: <20190725052645.2372-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190725052645.2372-1-nishkadg.linux@gmail.com>
References: <20190725052645.2372-1-nishkadg.linux@gmail.com>
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

Remove function rtl8723b_set_wowlan_cmd as all it does is call
rtl8723b_set_FwWoWlanRelated_cmd.
Rename rtl8723b_set_FwWoWlanRelated_cmd to rtl8723b_set_wowlan_cmd to
maintain compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 080e974914b6..0f2767c0454c 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1300,7 +1300,7 @@ static void rtl8723b_set_FwScanOffloadInfo_cmd(struct adapter *padapter, PRSVDPA
 }
 #endif /* CONFIG_PNO_SUPPORT */
 
-static void rtl8723b_set_FwWoWlanRelated_cmd(struct adapter *padapter, u8 enable)
+void rtl8723b_set_wowlan_cmd(struct adapter *padapter, u8 enable)
 {
 	struct security_priv *psecpriv = &padapter->securitypriv;
 	struct pwrctrl_priv *ppwrpriv = adapter_to_pwrctl(padapter);
@@ -1346,11 +1346,6 @@ static void rtl8723b_set_FwWoWlanRelated_cmd(struct adapter *padapter, u8 enable
 
 	DBG_871X_LEVEL(_drv_always_, "-%s()-\n", __func__);
 }
-
-void rtl8723b_set_wowlan_cmd(struct adapter *padapter, u8 enable)
-{
-	rtl8723b_set_FwWoWlanRelated_cmd(padapter, enable);
-}
 #endif /* CONFIG_WOWLAN */
 
 #ifdef CONFIG_AP_WOWLAN
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
