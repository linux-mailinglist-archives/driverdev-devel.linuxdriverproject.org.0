Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 698AC5C9B9
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 09:02:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 052D987AAF;
	Tue,  2 Jul 2019 07:02:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4nMECdPf-Xlj; Tue,  2 Jul 2019 07:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 851C98707A;
	Tue,  2 Jul 2019 07:02:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C0F11BF35D
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 65D9986AFE
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 07:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id azezb-ZRcben for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 07:02:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6DBC86AEE
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 07:02:01 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b7so8648811pls.6
 for <devel@driverdev.osuosl.org>; Tue, 02 Jul 2019 00:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JRL64p//F5Em+tyfIlJjWhznqCZrEyQ0IytPseG5L8s=;
 b=Q9m3NZqdlOhtSRgn8ETJZsPHWVD0SPkcs3kU8qmbxdMUlKEemwN3C7NqtLchXtK474
 az118V71u1X6aE6LXFhGHyFLcuP64LFoR0panDaY4pSid344svuV9ye8dm93ENRuTu/N
 6Rzh8FYAo9gmeMXGYOUSXzJjyR/6kK4INS6soq+3P4Vjfrx1o5b60nMkgc3Vi4RA0sl9
 9TxfKkMncuhfGRKyw0EYHuZImZyVh0MWtKlRCIU/2gW7iHnyJcRahaD7DBUbVxmdnAb2
 a0Pp52J09ZQfW1WHNIb7LiB6x+S/2EJOwwurjwAazfUpbCsCBX2s4NqkVzibTiL5Rf6u
 +0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JRL64p//F5Em+tyfIlJjWhznqCZrEyQ0IytPseG5L8s=;
 b=mWu7y3EEAC4SnrNPy7vc4eJ2Khg8axoB6e/yHj6EQaRRLOjMhJej/twy5p2T5A7Pwn
 QqOeiJU1BXd/PhxxPote+EE/kxjrqgfC8C0aoZNyQ4O4iZJLQptz0FSL6KvOIiBLXRez
 PyxvhW42ZcMoM3omTvSBKIt2Wd8zLScxOuZKLoIiDXKVfOSvM1KIYdyDo4lIGVGreG98
 RzJTnrYxERF6zSrpWDUvmFl4dtOQ/FJqlm78ACv3Sh2BUppy1Q++J7qf2MEzQa2N702M
 NVIR4GjfdQpwqeagLPeYRtjSm5QPNMMoMSaRT03tonrljI2Znm1DffJk01Aq1tczE5F8
 OVdw==
X-Gm-Message-State: APjAAAVpoLH4j34dHpXtozCQHBLZgyokN9ktBQ5bwqTbr4+p6QuBYggt
 cZvM/bZFR0k+z2oOCfOCsaI=
X-Google-Smtp-Source: APXvYqytt2cbIUM0ViX+ITgcaNDt1MYZhpP0SXQN5uZA7r8cY6ZXeb/58k/DTlFh2o5QzDlCQJpjfQ==
X-Received: by 2002:a17:902:aa5:: with SMTP id
 34mr34677574plp.166.1562050921684; 
 Tue, 02 Jul 2019 00:02:01 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id t29sm21813902pfq.156.2019.07.02.00.01.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 02 Jul 2019 00:02:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 8/9] staging: rtl8723bs: Remove rtw_btcoex_DisplayBtCoexInfo()
Date: Tue,  2 Jul 2019 12:31:31 +0530
Message-Id: <20190702070132.6997-8-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_DisplayBtCoexInfo as all it does is call
hal_btcoex_DisplayBtCoexInfo.
Modify call site accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/core/rtw_debug.c     | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index de997c291f3a..44219b7b6123 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -38,11 +38,6 @@ void rtw_btcoex_HaltNotify(struct adapter *padapter)
 	hal_btcoex_HaltNotify(padapter);
 }
 
-void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
-{
-	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
-}
-
 /*  ================================================== */
 /*  Below Functions are called by BT-Coex */
 /*  ================================================== */
diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
index d46ea418d34e..695a85999270 100644
--- a/drivers/staging/rtl8723bs/core/rtw_debug.c
+++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
@@ -1429,7 +1429,7 @@ int proc_get_btcoex_info(struct seq_file *m, void *v)
 	if (!pbuf)
 		return -ENOMEM;
 
-	rtw_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
+	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
 
 	DBG_871X_SEL(m, "%s\n", pbuf);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index c2f2c1f35254..19764c80b8ba 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -17,7 +17,6 @@
 
 void rtw_btcoex_MediaStatusNotify(struct adapter *, u8 mediaStatus);
 void rtw_btcoex_HaltNotify(struct adapter *);
-void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
 
 /*  ================================================== */
 /*  Below Functions are called by BT-Coex */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
