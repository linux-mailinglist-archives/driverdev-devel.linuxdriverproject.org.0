Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0A833AFC5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:16:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D0566F4FD;
	Mon, 15 Mar 2021 10:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8dB-0GMe4NRi; Mon, 15 Mar 2021 10:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AF6560707;
	Mon, 15 Mar 2021 10:16:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF801BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D8F86F494
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dBxm9u9XmTK for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:16:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3DA76F06F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:16:36 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id o16so5377416wrn.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qEcvd79epFvjAlVRoO+1lYJ1AOd3z/2fMLyzMbtlsW0=;
 b=WiR3wWlmCPIN1yifpERq1yzS5j8cZfvVufWe6O6iasibSjtFu8IBSYSw9kqkkEkkxT
 CZgfdihOpxX5+p+LrH03RXH8slyo/CYLJBxQDIetKcX9DppSepBYgWYNJ60Fo+JjloGB
 B0n67MRmFbhNaGRArGzB8JWQ28lS8JYMPZJumxHBOJJ8btV/WDT53E1Rdb76m/HEtGJ8
 GKFxhBPsG3iC7MUBKEnXV/98Mn4KcFMBIPcjjqVG1JirGZJtSht5lYIQrZWNq5tZzI/E
 B1GP6/u0THhZwN6FSL42CkuZCnm2CKxtSnXjbpnmTIu4JuoUjdobQjEButKabb4H5U1X
 Kv1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qEcvd79epFvjAlVRoO+1lYJ1AOd3z/2fMLyzMbtlsW0=;
 b=hbo2c9IBd6q4EKTHGhhw6rsg0P1aKYypdKOo+t8sEXSHaRPFa0NRawK2x9APWtzhnY
 EsOD0MVtTIsWDC41leOxIHuYeutVay5Tt9ScRMg+O3qMPdHcIJSAPC0iGqjiTqQ9mSkI
 bBnKnk2iaPN6QeC7UoLtpAMQOGVWolOTpm6huhyS6dCcmkQ1mzryXydr0Mhqaw/xpY8U
 WqZFJyF6sVqoHeihWz9+xjhz1UNOtZoSlnUQgrkpbykkdVZM/Nh43vOBOpGxNN8q9kzQ
 z4qYwl18zjReP1jVjMO4CY9pgPGfKeeEYHi6bDGJUEYow0ofLA6fEL1mb6GWt2FSQDhI
 Jfag==
X-Gm-Message-State: AOAM531UIaB7O3y9+tT9+ZiIJA9rovj6hU1D0uIyQavoZgHu6Gtmuk8P
 fMdtR/N+fYF8YVBi/kM9mBxkyJfGC4A=
X-Google-Smtp-Source: ABdhPJxBRWGOkhDzJBNtIPxZ4G8Z3SOfLXdFXysQMhlzGyqcXLqrLK+t8nMGcts3vZtT9VQvLVYRCQ==
X-Received: by 2002:a5d:4443:: with SMTP id x3mr26438383wrr.49.1615803395167; 
 Mon, 15 Mar 2021 03:16:35 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id s3sm11280842wmd.21.2021.03.15.03.16.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:16:34 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:16:27 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_EXT_CLK
Message-ID: <e50627bb53a8c2d3fcb03a95d8d490e98beff03a.1615801722.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_EXT_CLK

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index a64274fa9907..d0e5b482f382 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -53,20 +53,6 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 
 
 	/*  all of these MUST be configured before power on */
-#ifdef CONFIG_EXT_CLK
-	/*  Use external crystal(XTAL) */
-	value8 = rtw_read8(padapter, REG_PAD_CTRL1_8723B + 2);
-	value8 |=  BIT(7);
-	rtw_write8(padapter, REG_PAD_CTRL1_8723B + 2, value8);
-
-	/*  CLK_REQ High active or Low Active */
-	/*  Request GPIO polarity: */
-	/*  0: low active */
-	/*  1: high active */
-	value8 = rtw_read8(padapter, REG_MULTI_FUNC_CTRL + 1);
-	value8 |= BIT(5);
-	rtw_write8(padapter, REG_MULTI_FUNC_CTRL + 1, value8);
-#endif /*  CONFIG_EXT_CLK */
 
 	/*  only cmd52 can be used before power on(card enable) */
 	ret = CardEnable(padapter);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
