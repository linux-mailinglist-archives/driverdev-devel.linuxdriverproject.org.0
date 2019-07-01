Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EB45B667
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DBCC887A30;
	Mon,  1 Jul 2019 08:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6st-Xy30Q+sR; Mon,  1 Jul 2019 08:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68AFE879A7;
	Mon,  1 Jul 2019 08:11:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 165F61BF5A0
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13FB7875F4
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 06:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SzpvxsgvsRiM for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 06:23:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 06959875BE
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 06:23:34 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id c13so5497636pgg.3
 for <devel@driverdev.osuosl.org>; Sun, 30 Jun 2019 23:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8qgFghFCAK2yubub04OeDth0g+EzZYG1iBptoC2JFFw=;
 b=It//OwRq1rF0aljOik8fbhqW6OaZlVaPJOlMXeup70FefAYAfUGYedMSyt1MVhxg0d
 uviRrPi21U3sEt7KpuT2TIr4hS6fwj5vYgUPo/Gfwq7VbBhU1vS8Jj6C6DrHQsnM2YmO
 6B+7rwaiCjs9vOKuUrZF4A0w4N2gUJSTHnPYB52EElWw/7LJbPsEdhWcYaPFJwHPRw2e
 FyJ8sgsWeSV+8N0kAOqTtbOU7xGZgT7iUoBkE1BqNz0yzfRhVvVu9xQ40hc2ioO1lfgl
 gzpDvyfxV5wLQAiY5wjesx4I1EGQ51y/5GHzyJ5122bebe5BKeUu+STPugSxtIcpNoP4
 VnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8qgFghFCAK2yubub04OeDth0g+EzZYG1iBptoC2JFFw=;
 b=JcaAFgaRsmhjhHC9QZy09Wjb3BxRDo6GAVchYrqF9D0yU9cUZRL2W8o14fOxuagQOQ
 cNfXWB7Z9z3yk882SyZq2EpyThG36WW7sTOyW9wmp4F6Q0Cnmm3ku3h/nF31AaIhM80C
 ghL/MRdXVxYjoTm/bZxjti9sD8HyALuRp1R3ZfLeytdUxPOVJ6g+xgetcLKENEmAyk5a
 f+qp03MBqmnLMmEP+G+y12xNKElSF5BpL0gBnKyF6hYSRpV9WJoctgWLncZ+6w+NF6RC
 Q7b+i9fkw6auarp2ZCByWfWqCGHJcCNSUeBj2JX1vdtIpdXX7RnQ8wufS9g8r78KoblF
 zyXw==
X-Gm-Message-State: APjAAAU1M2Gno7BfvkbvDMHtWS+rcGXBPL5kdmuFhtX1ru/V8qD8Pv6k
 MBVRPIhNGtkZLSmRtv5IyApAjZwW
X-Google-Smtp-Source: APXvYqz5/0ffAvKTYKtI3zZxBFZNmq2djmSFlLJ3JMbIlvwBanik2tZo5SM/eQwwTOudTyW7cI5DBg==
X-Received: by 2002:a17:90a:19d:: with SMTP id
 29mr29793448pjc.71.1561962213727; 
 Sun, 30 Jun 2019 23:23:33 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id f3sm11998191pfg.165.2019.06.30.23.23.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 30 Jun 2019 23:23:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 09/10] staging: rtl8723bs: Remove rtw_btcoex_SuspendNotify()
Date: Mon,  1 Jul 2019 11:53:03 +0530
Message-Id: <20190701062304.2440-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190701062304.2440-1-nishkadg.linux@gmail.com>
References: <20190701062304.2440-1-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_SuspendNotify as all it does is call
hal_btcoex_SuspendNotify.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c    | 6 +++---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index dd0aee1fa663..ab796ee12694 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -34,11 +34,6 @@ void rtw_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
 	hal_btcoex_BtInfoNotify(padapter, length, tmpBuf);
 }
 
-void rtw_btcoex_SuspendNotify(struct adapter *padapter, u8 state)
-{
-	hal_btcoex_SuspendNotify(padapter, state);
-}
-
 void rtw_btcoex_HaltNotify(struct adapter *padapter)
 {
 	if (!padapter->bup) {
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index 179f96897855..aebbed4f3a54 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -19,7 +19,6 @@ void rtw_btcoex_ScanNotify(struct adapter *, u8 type);
 void rtw_btcoex_ConnectNotify(struct adapter *, u8 action);
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_BtInfoNotify(struct adapter *, u8 length, u8 *tmpBuf);
-void rtw_btcoex_SuspendNotify(struct adapter *, u8 state);
 void rtw_btcoex_HaltNotify(struct adapter *);
 u8 rtw_btcoex_IsBtDisabled(struct adapter *);
 void rtw_btcoex_Handler(struct adapter *);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index d505ccebad40..544e799d0a03 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1475,10 +1475,10 @@ int rtw_suspend_common(struct adapter *padapter)
 
 	/*  wait for the latest FW to remove this condition. */
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
-		rtw_btcoex_SuspendNotify(padapter, 0);
+		hal_btcoex_SuspendNotify(padapter, 0);
 		DBG_871X("WIFI_AP_STATE\n");
 	} else if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) {
-		rtw_btcoex_SuspendNotify(padapter, 1);
+		hal_btcoex_SuspendNotify(padapter, 1);
 		DBG_871X("STATION\n");
 	}
 
@@ -1829,7 +1829,7 @@ int rtw_resume_common(struct adapter *padapter)
 		rtw_resume_process_normal(padapter);
 	}
 
-	rtw_btcoex_SuspendNotify(padapter, 0);
+	hal_btcoex_SuspendNotify(padapter, 0);
 
 	if (pwrpriv) {
 		pwrpriv->bInSuspend = false;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
