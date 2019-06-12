Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82241432D4
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 07:42:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A1038636D;
	Thu, 13 Jun 2019 05:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gq0WF_9lIhv; Thu, 13 Jun 2019 05:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C45F886228;
	Thu, 13 Jun 2019 05:42:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BB141BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 67E14876C9
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 05:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HW6PlXzP6tZa for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 05:42:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E72B386D6F
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 05:42:17 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w34so10236678pga.12
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 22:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RRwbMt57YHtQ/U2+DEEYfQRLGuAhAy6XXQTzAlE1dCM=;
 b=gNyQfFPdUltQezZ7sfcMAbw/D7MAZrhaCgC98O3f2dIlr+IqTNb0E/5tzoUA7/Mvcc
 M4bPgQi+l/coS1gl+vnXJPx7EoTmwSdWaeDHlS+3wcfaAgHTYQC+4OaySHBhMgP1zdIY
 P7xkoy37FsPwaO7bHCh0B4yhVOWvX1YKwlXurGytUXGMPw8YMRrlkdMN/C4RWUSEM3o7
 gHv7GduO1epsSeT89zhzkSHwZhIvlQrK3rljFRj6XISh5Gwjit6DVTEhCGB1ZKlYrFFy
 3IznPsItozy7/5olHpfrBfqwDEb4V0GYYUipxu+1Faa0VluPGPPAJbmW+0Vk7c4Y5WfN
 BBMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RRwbMt57YHtQ/U2+DEEYfQRLGuAhAy6XXQTzAlE1dCM=;
 b=kJS6dwcjx56GYluc5Hxx69ej8Oa85E+3GePkE/UrobpHjawxDHpvYZM3tua38ZzxVA
 B6SJIjP3DhX0gKBfNMPgpblFVKbjQx+RpHWz22T43yOBcG4D715fBVB2yhczklr7z3ts
 tVXT5AgraqVwHolpHaNmridscht+oAzz00FTaX7Y9p6z7R1n/uK9KQSBuzxeGDhTUuQR
 HMoeLPbdgLEiLu7VYGMuE0OKq2jeYiO4L9vNBoVGe/NtAwD5a7cUdSHJRQeH/llDBJeo
 LONzdDLIiuCXXKjy2JGIgBR5wFWqOeohczOki86x+9bOOHziZxE/RbvzYPVJnhTSNzf7
 uheg==
X-Gm-Message-State: APjAAAXN+jakPeRBVBmX/0/VEufgncgVjaMAj5iWC017TZYyvfHmKTu4
 aL1Z4v3oQbunPgj11AXdGcc=
X-Google-Smtp-Source: APXvYqyN2uYYF5ATwvyfq6WytHulbaG5kt9rbZy98fqgxjn5Dyw5zPlTCUxxEGiqHeAoumLVYk60+Q==
X-Received: by 2002:a17:90a:d582:: with SMTP id
 v2mr3250069pju.22.1560404537607; 
 Wed, 12 Jun 2019 22:42:17 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id v126sm1453425pfb.81.2019.06.12.22.42.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 22:42:17 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 06/11] staging: rtl8723bs: core: Remove wrapper functions
Date: Wed, 12 Jun 2019 23:34:34 +0530
Message-Id: <20190612180439.7101-6-nishkadg.linux@gmail.com>
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

Remove function power_saving_wk_hdl as all it does is call
rtw_ps_processor. Edit call sites accordingly.
Remove function reset_securitypriv_hdl as all it does is call
rtw_reset_securitypriv. Modify call sites accordingly.
Remove function free_assoc_resources_hdl as all it does is call
rtw_free_assoc_resources with one extra constant argument, and the
former is only called once.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 22 +++-------------------
 1 file changed, 3 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index fcd26e1c95d5..988e909a5124 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1660,22 +1660,6 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
 
 }
 
-static void power_saving_wk_hdl(struct adapter *padapter)
-{
-	 rtw_ps_processor(padapter);
-}
-
-/* add for CONFIG_IEEE80211W, none 11w can use it */
-static void reset_securitypriv_hdl(struct adapter *padapter)
-{
-	 rtw_reset_securitypriv(padapter);
-}
-
-static void free_assoc_resources_hdl(struct adapter *padapter)
-{
-	 rtw_free_assoc_resources(padapter, 1);
-}
-
 u8 rtw_ps_cmd(struct adapter *padapter)
 {
 	struct cmd_obj		*ppscmd;
@@ -1977,7 +1961,7 @@ u8 rtw_drvextra_cmd_hdl(struct adapter *padapter, unsigned char *pbuf)
 		dynamic_chk_wk_hdl(padapter);
 		break;
 	case POWER_SAVING_CTRL_WK_CID:
-		power_saving_wk_hdl(padapter);
+		rtw_ps_processor(padapter);
 		break;
 	case LPS_CTRL_WK_CID:
 		lps_ctrl_wk_hdl(padapter, (u8)pdrvextra_cmd->type);
@@ -1993,10 +1977,10 @@ u8 rtw_drvextra_cmd_hdl(struct adapter *padapter, unsigned char *pbuf)
 		break;
 	/* add for CONFIG_IEEE80211W, none 11w can use it */
 	case RESET_SECURITYPRIV:
-		reset_securitypriv_hdl(padapter);
+		rtw_reset_securitypriv(padapter);
 		break;
 	case FREE_ASSOC_RESOURCES:
-		free_assoc_resources_hdl(padapter);
+		rtw_free_assoc_resources(padapter, 1);
 		break;
 	case C2H_WK_CID:
 		rtw_hal_set_hwreg_with_buf(padapter, HW_VAR_C2H_HANDLE, pdrvextra_cmd->pbuf, pdrvextra_cmd->size);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
