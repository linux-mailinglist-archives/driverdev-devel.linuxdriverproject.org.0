Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F6A5B7DC
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E049885CF2;
	Mon,  1 Jul 2019 09:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id huLxxPA48VJG; Mon,  1 Jul 2019 09:18:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42FB28562D;
	Mon,  1 Jul 2019 09:18:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F072E1BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E65928562D
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h_Vn85DZJIRi for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5FD7D854AF
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:46 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k8so7036188plt.3
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1MBz+ZDISDaoJ+xH/SWmnfPfaua567TeA5H7k9dPtTA=;
 b=FK8/u3/VJh5ZQYLZXt5FsJ0KLgO+v2iTnJxyoJgbtyfyEt11LjkSGsF6Djt8n2Kc1h
 LBihoId9O/DtwLyez05V/8CBtiAbGXI5z+O4snzcr10SW5NCtu8IdIpHVpmn+fttKACp
 OgGr94ZqCav3fMIH4EvTbs1Rr+w5ZCjhpis+JnpVcFlRQF7vQxO8GzE9DWuzyBlc8Asb
 YjSWNrx5jNwoMMAV8vLwkAbYdln4mlMmaPbPVK7qpVyKQbg609rQ5KUzr4M+YSb3JtgW
 1vGLposhjnlXa0ONnSpOY9eya1fIbrn5qUSIJsT6Zf2hKW3cyh4gMwpfa/7jC4fWX1lf
 xtnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1MBz+ZDISDaoJ+xH/SWmnfPfaua567TeA5H7k9dPtTA=;
 b=UhTvVCeL9y1K3LsfDdX9beyo92dFrz/ZWMTqMsjwtzuzapl4N76ghF4MN46IP2tTTa
 TWmNb8ZcZ+XHtw0UXCDh1Nockj41Vi1ZntEKlHqpnBV28IM+psaMV0FUcJkrRBsbXGC8
 xNL8gqlgFepJxW/3Go34IKPDIexC83/9QTYUFxkEk9Sc5AKXVmBw4On+SYvjJiv4oq/K
 yWjXXtPFpATYPP8xEucrCEautGdSBY5ldHnXuQJQkslYgJ8H3ZnkWyUaIHeJQGjeLZgy
 ErapaC3hvQ6BG8zjUZmV9IkUFqs0h6RtHGD0tKeetIHhXMh3Du4u3gABA+j+1h9TJRYn
 7wxA==
X-Gm-Message-State: APjAAAXsTOv7g+f2l+1Ud6cOBwFHUsJ0yUkqcL/t6YcQA2zUViLJ2GnJ
 CUWF9+o2QbKagyNo1pNsvJE=
X-Google-Smtp-Source: APXvYqwF146E0ZhZ3kNh1RywSwfZkeiGd7NqRjZ/th4zJv4P6l95zLaL7xC86mdSYZzNMsFuldKPMA==
X-Received: by 2002:a17:902:2aa9:: with SMTP id
 j38mr26753693plb.206.1561972726099; 
 Mon, 01 Jul 2019 02:18:46 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:45 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 08/10] staging: rtl8723bs: Remove rtw_btcoex_ConnectNotify()
Date: Mon,  1 Jul 2019 14:48:15 +0530
Message-Id: <20190701091817.12759-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701091817.12759-1-nishkadg.linux@gmail.com>
References: <20190701091817.12759-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_ConnectNotify as all it does is call
hal_btcoex_ConnectNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 4 ++--
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index de8f6cae7942..276aaab2781b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -14,11 +14,6 @@ void rtw_btcoex_ScanNotify(struct adapter *padapter, u8 type)
 	hal_btcoex_ScanNotify(padapter, type);
 }
 
-void rtw_btcoex_ConnectNotify(struct adapter *padapter, u8 action)
-{
-	hal_btcoex_ConnectNotify(padapter, action);
-}
-
 void rtw_btcoex_MediaStatusNotify(struct adapter *padapter, u8 mediaStatus)
 {
 	if ((mediaStatus == RT_MEDIA_CONNECT)
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 5ce93a56ad68..934245493c88 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3885,11 +3885,11 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 		switch (*val) {
 		case 0:
 			/*  prepare to join */
-			rtw_btcoex_ConnectNotify(padapter, true);
+			hal_btcoex_ConnectNotify(padapter, true);
 			break;
 		case 1:
 			/*  joinbss_event callback when join res < 0 */
-			rtw_btcoex_ConnectNotify(padapter, false);
+			hal_btcoex_ConnectNotify(padapter, false);
 			break;
 		case 2:
 			/*  sta add event callback */
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index d5552543a490..5b15e0129cc9 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -16,7 +16,6 @@
 #define	PACKET_EAPOL			3
 
 void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
-void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
