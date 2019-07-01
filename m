Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B0B5B7D5
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 11:18:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C17EF204E3;
	Mon,  1 Jul 2019 09:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FrNt-v0173dk; Mon,  1 Jul 2019 09:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 08090203C6;
	Mon,  1 Jul 2019 09:18:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D86BE1BF59F
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D007187985
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 09:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z+eXqK+K2-VJ for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 09:18:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 052E587924
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 09:18:32 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id p10so5753007pgn.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Jul 2019 02:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fzvP8HsexBXafGTy8wYw3ZPgPbTPPLi6YA9iEipFdG0=;
 b=pfvvln4v3NXuWrPZLDnR04sWAgfgWmbfynPRnS/C+j00WgOnSyh+RVuoL2h0LUgvak
 BFVj/rSK0Ys62KJK2vgsDgfBtg8MUoCee0XldlhoVwcxxy3EVMVxqOKGAVmQweAR3Pxb
 dBZDjfYAWUkLeRFQuCB8eU9vIRxCtZVVf4YDHctrCv8s/DZjK1yPbyZ2EeaLR+Mfhgam
 tCqUYnGDRoAMOwZwKZYbBEljuOpvc0eRKn86H6wJ7tQ5ir3stf7NbsfDN/5FytHcmFv7
 kX+/wvSiuJ2Em18VcPito0oFWI1jxMy5HiaQ+uiOAUEX5hHEAmvx+9r71vBBxJhvvT61
 axUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fzvP8HsexBXafGTy8wYw3ZPgPbTPPLi6YA9iEipFdG0=;
 b=C7qK31oXL8JrgR8Lc5FdIYjWymTgUn2lmhcFaFSbf3h2l1G3GeZyROP37CtIjQx7LS
 GzMqgSNC2uAyHrQm5ZAnayWX1q2FwusJ+3ZPFTDrlua7yu9msPrINwcTr25evc2zFGNs
 bWrBVpry1KgnjKDeE/8/hgc47QCX3HQxaOkXN30H4yBpxciDXyJoCDzFzWy4r8v4Ptov
 LXCA8EvhxbO/M4vxTtokBk90QLZhC+da9LkjCRXegPrCZl3QfUNIMxcJPdub/ZUn5Mmk
 +sq7vR0t8fUDk1vLnotHMOsm3ntL9drFZr95oBSSIr/ulWeHSEBawxnAELaJzy9O3Hgp
 eGog==
X-Gm-Message-State: APjAAAV9Cf14SmV+crQGgF2As7kIL6pb/bjZXo+J7KuaFYSmd6Rul8/d
 5Q987SMjn1sC9TKhHrJo/gg=
X-Google-Smtp-Source: APXvYqxk85B6ixl64/REo8y9tjfbvH/yhQRsVGekK1rkcgkKTLYAmKofI7NGNi9wjiX31kd89gZVMw==
X-Received: by 2002:a63:3d02:: with SMTP id k2mr23313896pga.36.1561972711611; 
 Mon, 01 Jul 2019 02:18:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id 25sm10137911pfp.76.2019.07.01.02.18.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 02:18:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: rtl8723bs: Remove rtw_btcoex_RecordPwrMode()
Date: Mon,  1 Jul 2019 14:48:09 +0530
Message-Id: <20190701091817.12759-2-nishkadg.linux@gmail.com>
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

Remove function rtw_btcoex_RecordPwrMode as all it does is call
hal_btcoex_RecordPwrMode.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_btcoex.c    | 5 -----
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_btcoex.h | 1 -
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_btcoex.c b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
index fcdb6c1aa81c..4ff3a2742a50 100644
--- a/drivers/staging/rtl8723bs/core/rtw_btcoex.c
+++ b/drivers/staging/rtl8723bs/core/rtw_btcoex.c
@@ -107,11 +107,6 @@ u32 rtw_btcoex_GetRaMask(struct adapter *padapter)
 	return hal_btcoex_GetRaMask(padapter);
 }
 
-void rtw_btcoex_RecordPwrMode(struct adapter *padapter, u8 *pCmdBuf, u8 cmdLen)
-{
-	hal_btcoex_RecordPwrMode(padapter, pCmdBuf, cmdLen);
-}
-
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
 {
 	hal_btcoex_DisplayBtCoexInfo(padapter, pbuf, bufsize);
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 16ff688947cb..177261c79e94 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1133,7 +1133,7 @@ void rtl8723b_set_FwPwrMode_cmd(struct adapter *padapter, u8 psmode)
 
 	}
 
-	rtw_btcoex_RecordPwrMode(padapter, u1H2CPwrModeParm, H2C_PWRMODE_LEN);
+	hal_btcoex_RecordPwrMode(padapter, u1H2CPwrModeParm, H2C_PWRMODE_LEN);
 
 	RT_PRINT_DATA(_module_hal_init_c_, _drv_always_, "u1H2CPwrModeParm:", u1H2CPwrModeParm, H2C_PWRMODE_LEN);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_btcoex.h b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
index d8897a7ddfd4..db987a0cf951 100644
--- a/drivers/staging/rtl8723bs/include/rtw_btcoex.h
+++ b/drivers/staging/rtl8723bs/include/rtw_btcoex.h
@@ -30,7 +30,6 @@ void rtw_btcoex_SetChipType(struct adapter *, u8 chipType);
 void rtw_btcoex_SetPGAntNum(struct adapter *, u8 antNum);
 void rtw_btcoex_SetSingleAntPath(struct adapter *padapter, u8 singleAntPath);
 u32 rtw_btcoex_GetRaMask(struct adapter *);
-void rtw_btcoex_RecordPwrMode(struct adapter *, u8 *pCmdBuf, u8 cmdLen);
 void rtw_btcoex_DisplayBtCoexInfo(struct adapter *, u8 *pbuf, u32 bufsize);
 void rtw_btcoex_SetDBG(struct adapter *, u32 *pDbgModule);
 u32 rtw_btcoex_GetDBG(struct adapter *, u8 *pStrBuf, u32 bufSize);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
