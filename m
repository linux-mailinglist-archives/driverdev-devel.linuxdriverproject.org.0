Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A213733C364
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:07:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 313B14D8E4;
	Mon, 15 Mar 2021 17:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSFiXRUmevKn; Mon, 15 Mar 2021 17:07:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E3FB47A73;
	Mon, 15 Mar 2021 17:07:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF0691BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DC352430C0
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMhh_eJHvNxb for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21C1C41503
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:16 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id p7so56189758eju.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=wx2Hreeiv7jdK7xqykRkyRaKI0c0M/ak1VxWxjOZqxs=;
 b=sKl1u237FHX2iuZD4l2/+bgwKRS0MoYN5+c6xTIjCnBzHDvXHUdRjcd+KoR9mQIu1m
 dvr3bnYb3RObKPjiULIzK72Krk1l+sbZnV5DKIyvOxvr5fIhIttodQEKA7aT8QCDHTt6
 eLuFq+qFeKevoJqJFXjQZgFoa29FPPNwTkMgXHsaovq9oRwT7cZy1067O9DChgXcUd71
 pRBTxK5HSDzRErXBHw4yg5VnLAoYxXSNpm/1RMEjxYhR4YvsfE19dBu7C0/G2e6VfqeN
 P1ZtW41h0PLL916IwkX9J26pMVmB8MPCR4Ts/mj20H+X6bUw1gy8r9wKmQVOWKXAcPWv
 HnCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wx2Hreeiv7jdK7xqykRkyRaKI0c0M/ak1VxWxjOZqxs=;
 b=T6dYLCI8lUrvklZogGbXSjvLn/G8kVo3Jw6UiDlp2NMsWGU4WsLri4smPA4QGI0lYl
 Fh61HQ9hICdL+MXWRoNNKxIbGgxLFD9uM0l1Yqx/IavwDxcj/5dFvqf8kqDJ8LO0p3h3
 EheQj1i6/yVtZKPSbKnt2EiWZhyNfz100Qa4k1KITHbQyhy0uW05BxOgRn7qko4nUVAr
 s4ykdAUIkfA0CsK78kp6m0mDuFfiu5AXeM/31NarQB50rJnVm9Qic0ccNIqqaiJvS5Rh
 0xfYmQ+NxwP6u5/uj5ossRb7tj9waiTzS2D2U1qQ9iJuTKXATAtlbk1wkzwUg/Xy+NUd
 vO5w==
X-Gm-Message-State: AOAM531hNA+ysQS/m1/7PW7Nr1nmjPxPqeDD9BbTxiEkcvD3JUvG/Fe8
 ay9Oj+WZ0djog2UdxLdj07o=
X-Google-Smtp-Source: ABdhPJxAKd+K2Xzdn6ayiBH/5l0h5TdaZD7z6ydziASYee5fCA7+VqF+XvR/DB16fKyhhJ6OfGvXAg==
X-Received: by 2002:a17:906:bfcc:: with SMTP id
 us12mr25426971ejb.266.1615827974369; 
 Mon, 15 Mar 2021 10:06:14 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:14 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 08/57] Staging: rtl8723bs: fix spaces in HalHWImg8723B_BB.h
Date: Mon, 15 Mar 2021 18:05:29 +0100
Message-Id: <20210315170618.2566-9-marcocesati@gmail.com>
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

This commit fixes the following checkpatch.pl errors:

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #18: FILE: ./hal/HalHWImg8723B_BB.h:18:
    +	struct DM_ODM_T *  pDM_Odm

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #27: FILE: ./hal/HalHWImg8723B_BB.h:27:
    +	struct DM_ODM_T *  pDM_Odm

    ERROR:POINTER_LOCATION: "foo *  bar" should be "foo *bar"
    #36: FILE: ./hal/HalHWImg8723B_BB.h:36:
    +	struct DM_ODM_T *  pDM_Odm

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
index 69485ce3a408..1cb572604206 100644
--- a/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
+++ b/drivers/staging/rtl8723bs/hal/HalHWImg8723B_BB.h
@@ -15,7 +15,7 @@
 
 void
 ODM_ReadAndConfig_MP_8723B_AGC_TAB(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 
 /******************************************************************************
@@ -24,7 +24,7 @@ ODM_ReadAndConfig_MP_8723B_AGC_TAB(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_PHY_REG(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 
 /******************************************************************************
@@ -33,7 +33,7 @@ ODM_ReadAndConfig_MP_8723B_PHY_REG(/*  TC: Test Chip, MP: MP Chip */
 
 void
 ODM_ReadAndConfig_MP_8723B_PHY_REG_PG(/*  TC: Test Chip, MP: MP Chip */
-	struct DM_ODM_T *  pDM_Odm
+	struct DM_ODM_T *pDM_Odm
 );
 u32 ODM_GetVersion_MP_8723B_PHY_REG_PG(void);
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
