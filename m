Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8983408E9
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:29:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 535184EE39;
	Thu, 18 Mar 2021 15:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id as-POR4VqVwC; Thu, 18 Mar 2021 15:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37EBA4EE2F;
	Thu, 18 Mar 2021 15:29:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85B691BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F5654EE35
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySfSoZ4p8pi3 for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E14004EE06
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:19 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 r15-20020a05600c35cfb029010e639ca09eso5676095wmq.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FSkk9Yd2ayS87h/bRiWToyBS4V09sFZorEnhiQpsGRc=;
 b=Grk8droE1GZjSXxCNuGL6Xo+lCutqeR1djAql5Z7DtzoHIRq+/T/M7X4KIM/IUC6Hx
 GaZZoMe8f4BVavyBArjGy01FRAPoGqtQ5/fAeAxnB+ED1yPEu6D/12uqaMhWnYO11Ugt
 j6lYFEE9mNx8bU/SDF8vZQ4rfuM1unc4BWf9hGYjstTyFb9YFLkQyToQTmeGwi+U6roj
 DHbFg85RO8tQws4hkzPTk2doXg+PC4MnTR3e3JznhUWRFpH2Z4ZmkMXbP0zBYBkpNkDZ
 IZ5nGpm8Quomb7f1RSxkPE0bQm3Il7fOmwueSsL65gToqlDnd7b0owqGjS+6g78tGTbM
 bPaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FSkk9Yd2ayS87h/bRiWToyBS4V09sFZorEnhiQpsGRc=;
 b=pTps7r++H8oZLE68GztvrViPtnU5CrehDjlsApzXotR/ZDHg+cSCTnErZ3YLrCfSgQ
 SDsT2mry6wYw4sOViSdbPIYQ7TH/LusC/eoxgpx+sCl14cISXXKzAG2CRGR1feY0fp8y
 lsCwbJC5yicz4JYID9TKmjZXr67IB2LlvMRByhjs66J+ecbGkDr3uCw508/9dc0aczJZ
 eStmdpMUYkgEdh3thWKE2LkxmiLRIZG3YeS+ONM7IQB2JAzLG/ccr5E/WGUHam3U0JRd
 gtbRkCuKFd5UQkJUlDskprYQX938OEwYcFvKJxjAoq40QMJigad+DL1ecesa6HqbqElf
 GZIQ==
X-Gm-Message-State: AOAM5336RrSYNPgJ3fqVfEgRMDITXo596Az6szuM0qwfxYThzP5yYlJj
 PTUckz1UXLdewwL+BFi/E/g=
X-Google-Smtp-Source: ABdhPJz1Q820o1C9Pj4vK3uFfR0PIWMJMJ7oCtDWXXc8yaKCX2B+Wz576xCvzUnCHJVYT4hUPgUqww==
X-Received: by 2002:a7b:c214:: with SMTP id x20mr4216172wmi.186.1616081238268; 
 Thu, 18 Mar 2021 08:27:18 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id c16sm4180431wrs.81.2021.03.18.08.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:17 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/15] staging: rtl8723bs: remove unnecessary logging in
 os_dep/os_intfs.c
Date: Thu, 18 Mar 2021 16:26:09 +0100
Message-Id: <20210318152610.16758-15-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
977: FILE: drivers/staging/rtl8723bs/os_dep/os_intfs.c:977:
+	DBG_871X("===> %s.........\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1030: FILE: drivers/staging/rtl8723bs/os_dep/os_intfs.c:1030:
+	DBG_871X("====> %s...\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1127: FILE: drivers/staging/rtl8723bs/os_dep/os_intfs.c:1127:
+		DBG_871X("===> %s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1177: FILE: drivers/staging/rtl8723bs/os_dep/os_intfs.c:1177:
+		DBG_871X("<=== %s\n", __func__);

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 3909f149de47..93d696d5cf19 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -974,9 +974,6 @@ static int  ips_netdrv_open(struct adapter *padapter)
 
 	padapter->net_closed = false;
 
-	DBG_871X("===> %s.........\n", __func__);
-
-
 	padapter->bDriverStopped = false;
 	padapter->bCardDisableWOHSM = false;
 	/* padapter->bup = true; */
@@ -1027,8 +1024,6 @@ void rtw_ips_pwr_down(struct adapter *padapter)
 
 void rtw_ips_dev_unload(struct adapter *padapter)
 {
-	DBG_871X("====> %s...\n", __func__);
-
 
 	if (!padapter->bSurpriseRemoved)
 		rtw_hal_deinit(padapter);
@@ -1124,7 +1119,6 @@ void rtw_dev_unload(struct adapter *padapter)
 	RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("+%s\n", __func__));
 
 	if (padapter->bup) {
-		DBG_871X("===> %s\n", __func__);
 
 		padapter->bDriverStopped = true;
 		if (padapter->xmitpriv.ack_tx)
@@ -1174,7 +1168,6 @@ void rtw_dev_unload(struct adapter *padapter)
 
 		padapter->bup = false;
 
-		DBG_871X("<=== %s\n", __func__);
 	} else {
 		RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("%s: bup ==false\n", __func__));
 		DBG_871X("%s: bup ==false\n", __func__);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
