Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FE35C9B5
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:01:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E048E87A6E;
	Tue,  2 Jul 2019 07:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WOsKbWm5N2u0; Tue,  2 Jul 2019 07:01:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A13A8707A;
	Tue,  2 Jul 2019 07:01:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91A251BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8EDBF8707A
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iQY+cSDtXNg4 for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:01:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D512B86FCD
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:01:51 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z75so7218034pgz.5
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XBwiOrgMdCbpXpAHHOfmzdeqH+23FQ9WW3+tfSCIgOM=;
 b=BZ6bvPcHwNhFPJTuTZAxjJT5P+cphjsCNVryw8+nlF9YmYuhQ6PraTS6za7f37jYTe
 EvJOigPXUhHMVpGo+MK44dEvUhQIi4zyHMR/NF7lEiulSwiKzBeRLcto1EmjSryH8dPP
 ZMxukAfU0J58p93DI/dcj4SkYbcBG5Rqe/BdjrKlMdSJ0fO5WV2D7mtinSOeLZtBgWXD
 MNp1xz0KFvROQdnJXkTMByCphhC2BxPnywolTTXDWj/IfW4PG67QFsDINOwVJ6NwMT8e
 MCVM4PV8lZzKqATIXHYYraIl73CQQPL+9vQp0aYacbcEU8s/FJUwEDQE4ZtYmIQ7C9HX
 g6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XBwiOrgMdCbpXpAHHOfmzdeqH+23FQ9WW3+tfSCIgOM=;
 b=bZJSukU1tcRmO6Ra8ypXBUIteL7/mp3w8IirSGklr6T4+rg4N5IYIwWkf+PLAVCAV3
 TI/k0VcVHJZz3G+jp/Oj7vyWqv0Ab2df2u/C5WSpdcY7PyEC+eHEnkK1hRu1sPS/lBMU
 o9V7Fg4nCDc2ArXpExo2AUYCSVJJ9EjduPqWOEM5ToYN3RrlqWGcKmr44UqQ5FHFoAoY
 uWj44hJkfUgefFJrlUDhrRn/K4RUooM6qK/Ngk7+xypPTbc8FTxYwMSfk1EDDvD2zxuX
 0o6n+gPc+PKAjeQfnt4l7SkBi6SqU3hYMwydVGyn72kqE56iw7BhDl28lfNvW9Ku/5pm
 YjRg==
X-Gm-Message-State: APjAAAXiqkOjG2zHA53RmiDGXUaFzrgDAzFdUhMqLGDnn1+6wYPDKcVP
 1zP9Lk/iLGAG8qL6XM1j2zM=
X-Google-Smtp-Source: APXvYqyd1f//Rf5WYcDl62gqDZBY5loZYJn6MpBb8uhx+0Jsiwkx/jl4F/IKbIpQLaP9HlZIWWStkQ==
X-Received: by 2002:a65:4085:: with SMTP id t5mr29617291pgp.109.1562050911447; 
 Tue, 02 Jul 2019 00:01:51 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:01:51 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 3/9] staging: rtl8723bs: Remove rtw_btcoex_ScanNotify()
Date: Tue,  2 Jul 2019 12:31:26 +0530
Message-Id: <20190702070132.6997-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190702070132.6997-1-nishkadg.linux@gmail.com>
References: <20190702070132.6997-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_ScanNotify as all it does is call
hal_btcoex_ScanNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c       | 5 -----
 drivers/staging/rtl8723bs/core/rtw_cmd.c          | 2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h    | 1 -
 4 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index ac199d75ee63..cedc60401b3f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -9,11 +9,6 @@
 #include <rtw_btcoex.h>
 #include <hal_btcoex.h>
 
-void rtw_btcoex_ScanNotify(struct adapter *padapter, u8 type)
-{
-	hal_btcoex_ScanNotify(padapter, type);
-}
-
 void rtw_btcoex_MediaStatusNotify(struct adapter *padapter, u8 mediaStatus)
 {
 	if ((mediaStatus == RT_MEDIA_CONNECT)
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 41346b101f1d..569a7fabd6cb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1463,7 +1463,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
 	switch (lps_ctrl_type) {
 	case LPS_CTRL_SCAN:
 		/* DBG_871X("LPS_CTRL_SCAN\n"); */
-		rtw_btcoex_ScanNotify(padapter, true);
+		hal_btcoex_ScanNotify(padapter, true);
 
 		if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
 			/*  connect */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index ce244798198e..d05528908ac7 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -3876,7 +3876,7 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 	case HW_VAR_MLME_SITESURVEY:
 		hw_var_set_mlme_sitesurvey(padapter, variable,  val);
 
-		rtw_btcoex_ScanNotify(padapter, *val?true:false);
+		hal_btcoex_ScanNotify(padapter, *val?true:false);
 		break;
 
 	case HW_VAR_MLME_JOIN:
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index f294acce149b..0d118e8f3389 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -15,7 +15,6 @@
 #define	PACKET_ARP				2
 #define	PACKET_EAPOL			3
 
-void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
 void rtw_btcoex_HaltNotify(struct adapter *);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
