Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 239CC33C3A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:11:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C5F183546;
	Mon, 15 Mar 2021 17:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8_3zCgz0wsfX; Mon, 15 Mar 2021 17:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17B6D834BA;
	Mon, 15 Mar 2021 17:11:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 416D11BF387
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 308A0430B9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0Rpm39n86_C for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 650D141503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:30 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id jt13so67570733ejb.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=psSFB+32JXo7l8ANmcyAbYMriKzQ2sXScmbahtuLhrU=;
 b=cN7FT0oXl2tRsQNOpWIRTjBvn5Z9v9mZgmA0k+3hZaev6g30bT0sPJmOy2MoGcsDH1
 xjYtLdsLb26pCrfehyYmyP8KDvtcgmaw680EYlZs7mvXsDWU3ov7JcVkD+IILMO6p/62
 XWxp5CdBEL6mshXcrB6GyzDujf/V2lzOjUTwAggScYNgCahzyOhtAy5DU/KuvXclpt0t
 gCLSX97uNN+p+e7pL/oFdffX0INGgxaqrWxgJo7ILWZgPNOB9wxBmUGVsiKjtArK51TG
 +sssAS+tmpQb8HgiZpQAFT47dFedoTZh80XMgVav5cEb65D/sEBwmun5zSEzAa5c0fLj
 nvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=psSFB+32JXo7l8ANmcyAbYMriKzQ2sXScmbahtuLhrU=;
 b=L6mczGOg+pHxxjsxfhGM0JqaoZg9pxL/3QExyxed4uF2MlkS9Yv5qfa8AdY7qL94mS
 BhC1usiY3dqFgsq0OwSH6fGFR2HHiPKaiYcH2SdOgM+f/Lz9IyKLKXPQpdC5OoWfrFlP
 7pFULoms5hI0lC+XpKLmms09l0jIpBCeP47CbFZm2p3HE2jP4osanL/62QcT3jpx56Jw
 vHD/tw+t+hEqVFbyItgv3mMMANV+6/MxRs7FG4G2hMR9Lb2ht9ZvrEWXY4B1yqTsp7t6
 v/6TgxQN+w0lDmPOeZaQG/xEXFPzyVYy/SSg3oT9/eF6XQMQqFgyDFBI1CQ+KMdjxjIb
 wL0A==
X-Gm-Message-State: AOAM531DICXQgLbpWLWVbuBpEx7m1Uy2NG6FOVZL8ymQ6qhzcIVP7IxA
 uw2qCXxay86xrQJ+Yww2M1U=
X-Google-Smtp-Source: ABdhPJxBSXKYCRN+74XsNiPmWJ/YdEzIPwhaL677q10NMDybGwkUJQbsd3bly0Hihtma8sLMccqlEw==
X-Received: by 2002:a17:907:2bdd:: with SMTP id
 gv29mr23926597ejc.259.1615827988647; 
 Mon, 15 Mar 2021 10:06:28 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:28 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 25/57] Staging: rtl8723bs: fix spaces in odm_DynamicTxPower.c
Date: Mon, 15 Mar 2021 18:05:46 +0100
Message-Id: <20210315170618.2566-26-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #12: FILE: ./hal/odm_DynamicTxPower.c:12:
    +	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c b/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
index adb57e9af408..ca8246c1a2cd 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DynamicTxPower.c
@@ -9,7 +9,7 @@
 
 void odm_DynamicTxPowerInit(void *pDM_VOID)
 {
-	struct DM_ODM_T * pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
+	struct DM_ODM_T *pDM_Odm = (struct DM_ODM_T *)pDM_VOID;
 
 	struct adapter *Adapter = pDM_Odm->Adapter;
 	struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
