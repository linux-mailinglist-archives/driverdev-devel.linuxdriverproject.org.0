Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1893C390341
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 May 2021 16:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DDB5402AC;
	Tue, 25 May 2021 14:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aQ2i__RrNSv8; Tue, 25 May 2021 14:01:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF860402AB;
	Tue, 25 May 2021 14:01:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A450A1BF2B0
 for <devel@linuxdriverproject.org>; Tue, 25 May 2021 14:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0E99402AB
 for <devel@linuxdriverproject.org>; Tue, 25 May 2021 14:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHuiZV2fcOnE for <devel@linuxdriverproject.org>;
 Tue, 25 May 2021 14:01:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08B24402A5
 for <devel@driverdev.osuosl.org>; Tue, 25 May 2021 14:01:31 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id y15so12287850pfn.13
 for <devel@driverdev.osuosl.org>; Tue, 25 May 2021 07:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=npC+RRakXkRoTXBsh2sw5pYhIkNkzjadp7arbd855cU=;
 b=Mzit0biFNb9vUaUEsMUtiaaeuqg0mYFMLQYS3IpzpPWwAnarxTmXM1UMQLVCf1Z0IA
 7kEgDWUs7eT+IH1Rvyh8uuhRGcwea4MTlxB8MNoQB+XMdODEGS+mJuC7XMtWUMaVTPYd
 TFXtuOw8saw2wT0ov/p8jwYYrDvcF/mjB56Qel+1OE+zUJ/cvhegcS4fyHWROZxxzi50
 mAJRdszNTbWMVa4nN9xnFIMcxrL0f/+thcfdjr0Sb2w1coBuM0NHE1hCuAB1T9EYl31C
 +HRaRHQIs2DrHHn5iHmiLShPQ4t95zDkhSPBZv41W2GciB6XHEWyFXF6fPeu6frIrPRI
 JPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=npC+RRakXkRoTXBsh2sw5pYhIkNkzjadp7arbd855cU=;
 b=OOteJph/X+U3UYBtfOKRelGBT85L/4BvEV0VXIkE/l7slEn0uzTEnsJb0b7s0MkcWw
 ZEZt8EtbpPkxsgfRhTq99dhQjnbqTj8HsBXZ19sImQ18bgFSlWhfp/EDw0tqWGhk7szF
 1AIQbrLd02I/ydcN7OXugPoq2aPzHdOcTAdEX8ND89v66wR693NL8h4U/TYqdQjpz9ZE
 LQwASaNiWqM/q3loe1CRAysmoU4kk0JvbcTnySTF3QC7GOEIQLp/Pecp2LjsllXG+bL/
 O+eK7ppykOL6MQDh0+d7ceFac5RyGoGPds3/Toql1s25fZr5i69CocVIv0nvyEMprV7b
 T2Mw==
X-Gm-Message-State: AOAM532D7pX2UOxhZ00okY0E2Fx5IU9WPQ0uf3zDhr86es8aRM62xuu2
 /JRfhXG/sf/vHGL18zYE5uo=
X-Google-Smtp-Source: ABdhPJx24u+V6IyavCX4/zxCQfoGgZj3bK4rrOmshoIuUpQjV4zxnWDHezxMP8MQxRokdrL3c/6Taw==
X-Received: by 2002:a62:828f:0:b029:2e9:1449:4269 with SMTP id
 w137-20020a62828f0000b02902e914494269mr1907645pfd.6.1621951291400; 
 Tue, 25 May 2021 07:01:31 -0700 (PDT)
Received: from localhost.localdomain ([220.149.255.9])
 by smtp.gmail.com with ESMTPSA id y24sm14049174pfn.81.2021.05.25.07.01.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 May 2021 07:01:31 -0700 (PDT)
From: Donggyu Kim <a29661498@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: fixed a blank coding style
Date: Tue, 25 May 2021 23:01:23 +0900
Message-Id: <20210525140123.15100-1-a29661498@gmail.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
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
Cc: devel@driverdev.osuosl.org, Donggyu Kim <a29661498@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue - add blank after declation

Signed-off-by: Dongkyu Kim <a29661498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index e1a8f8b47edd..40d99644ddc7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1337,6 +1337,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 static void dynamic_chk_wk_hdl(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv;
+    
 	pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
-- 
2.30.1 (Apple Git-130)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
