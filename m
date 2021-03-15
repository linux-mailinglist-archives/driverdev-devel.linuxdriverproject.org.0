Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9032333C3B7
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 283BB83478;
	Mon, 15 Mar 2021 17:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48qrRqHNLAkd; Mon, 15 Mar 2021 17:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 578AE82C99;
	Mon, 15 Mar 2021 17:12:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B42AB1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A42C083486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uwuTPy4e5N_f for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F273483478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:36 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id o19so18235870edc.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=LdAr9KEII1yezKhueBR4FPjPZn4zTPaLuvlcFYwMQtA=;
 b=ggipLH5SgYPPZI802cceFc6NgoRD66tVtcliPHeUdKZvdGhwte4ad9sHGmE0ok8tUY
 C+dTSroCV+NpRG5kxhhFmxb5Ttq/Fp4H7UpJRNFFzusdwvQNEinikMztgPN2sY90AlNf
 NaKioN1nXMNXnQzLPm/1Rfw4YGQ2HvOtvi79X8EO0soc0m1LlpZl4gbEMc8QHbA+EeX4
 JTGTgUVomkQAeQwej9+XqEsWrfZDOryDhIRlb1f1eqlHUrYraNhu08hstfXmh9cJ54+l
 nh8U+l5jkxp2Gl7tfMtalk1vICH2Rv88hlUFMBVxwFNbI+Bpi5f3vvu1ralSPrtCKm9a
 M4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LdAr9KEII1yezKhueBR4FPjPZn4zTPaLuvlcFYwMQtA=;
 b=tnjdN5A4GLBfVV4zdx8Q9WeSOEveu8kKZezgd2X9M0pgt1S8+TsLX/l31UhhYQoQCK
 IW1xf9FiKB1QbuRBnJJ8HhL09QFgkAM9O9BOqJGzOzr2a4u4C6l3vfjjB5xl4VFYBp8+
 xHuHdMazgFI0eswSnEnReqtdIoKnp59+vSHPPXSRp3ep8awZToOUdR7hz/OLHk0xFt/w
 H0KwW9Ci9sM5/iaYISUhsF6HO39RKBurFap/jC9SAMS8CCziWHScIuynTlq7TaiqpcZU
 4Pi/q1wPZd4WI2qtOXILcWLH8QiVpIgCdSiRTZRtbzWHLSClZDk57kkg1JyS/uDY5lQJ
 hmKA==
X-Gm-Message-State: AOAM530D7ZgeFSKoK2HG/JhYrpZUH1hleJBBJZZnzsupfIs+qSZb8u+R
 S41jJ5PQaVwo16C1lVjP04g=
X-Google-Smtp-Source: ABdhPJxkboyk+MOuRRdjpPpiN8LfImEN55MyEY70FvZNaID0RPcwABa8ujnuan62De9r8BlIdBvGCQ==
X-Received: by 2002:a50:f391:: with SMTP id g17mr30865811edm.26.1615827995290; 
 Mon, 15 Mar 2021 10:06:35 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:35 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 33/57] Staging: rtl8723bs: fix spaces in odm_debug.c
Date: Mon, 15 Mar 2021 18:05:54 +0100
Message-Id: <20210315170618.2566-34-marcocesati@gmail.com>
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
    #10: FILE: ./hal/odm_debug.c:10:
    +void ODM_InitDebugSetting(struct DM_ODM_T * pDM_Odm)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_debug.c b/drivers/staging/rtl8723bs/hal/odm_debug.c
index 050aae37494e..8e0fb04bc3d6 100644
--- a/drivers/staging/rtl8723bs/hal/odm_debug.c
+++ b/drivers/staging/rtl8723bs/hal/odm_debug.c
@@ -7,7 +7,7 @@
 
 #include "odm_precomp.h"
 
-void ODM_InitDebugSetting(struct DM_ODM_T * pDM_Odm)
+void ODM_InitDebugSetting(struct DM_ODM_T *pDM_Odm)
 {
 	pDM_Odm->DebugLevel = ODM_DBG_LOUD;
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
