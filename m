Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B613B3408CE
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:27:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B01E4EE3A;
	Thu, 18 Mar 2021 15:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3k7glccuAtS; Thu, 18 Mar 2021 15:27:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 642804EE06;
	Thu, 18 Mar 2021 15:27:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2F8F1BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2C5D4328B
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tUIFhsk7Kw9t for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEC77400B5
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:00 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id o16so5988676wrn.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V6RdrbDpubj6J5vihjKmeNa/I/cW+KIcqKlP2w3YSfo=;
 b=lvF9CcQ+nh1eANtGR5piZmX0xhis2WOD6zBSg9SKnsI7XBn6LgdobHwd0l4QC7lkoh
 c/QFA4xOXQubE/HFiK0EbWTigASycwilxjnM12ZGC8LAPEbK8Xh1z4UE0UFsFsY6mtvU
 26UngOeNhrq0LLc2lXEO/AhlokAW52hXaIDdweaLS1C1qG5Osxo6q4/ghvt1l4kfynBe
 eo1NCz5Hw0gFKm/Jn3o0yg+QMR2JNlMNwnrDO2NBfIrM4RWDuUT2v4rPlNSBsPFQlTZs
 ywaA0dN4XTFJayEjmZtc7XeGCjkX/ry/LYKaoGIVy93bkGKhYQXawbW/TqYDMfPqmCTA
 hBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V6RdrbDpubj6J5vihjKmeNa/I/cW+KIcqKlP2w3YSfo=;
 b=cU/qT6sW8IkqXCALmnKIRlyx2i2sxePn1DGzACVUUoHfyOl8fBBgx2xHzLyGWcPrhw
 d7wkGLjPchAuDVKp94crOSeVUEMhIMbYv3GIw1FCtSHRTjRIqjV5SSFE3P9zc9CLOWYA
 eml0i2Dg64bLcmy0bRlYiG1YCP0LBI3evVoLq97fGjqzYr7YdyLepaOEFU9RerFTrL0i
 in7Hgx3ZfkwLd9DBmMXpl34IRzM7BUPOjOjZg7FJ0cuzxrFgd0ZKk8BJY8GEFPMEo9OF
 cElE8VHVWwM+TwJClGaJlFbhPZHXTNP+RbeVEDMVyGAgXA1uqq6q06QyQTk+J7Y4um8U
 +U0A==
X-Gm-Message-State: AOAM530b333veEfKmTbt2J7xqns1AWMN2ULclGHfmYkAbs2Qds6JWe7F
 O/qx38l4TBMjhy/k1XqA6o4=
X-Google-Smtp-Source: ABdhPJyPvjHE8/FdBrvCRu7ytikvoXLXmpU6f0uCgm+JB7WnjzrhdQaBNKASegFTO95V108U7HaD5g==
X-Received: by 2002:adf:84e6:: with SMTP id 93mr9793845wrg.376.1616081219262; 
 Thu, 18 Mar 2021 08:26:59 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id s83sm2626320wms.16.2021.03.18.08.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:26:58 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/15] staging: rtl8723bs: remove unnecessary logging in
 hal/HalBtcOutSrc.h
Date: Thu, 18 Mar 2021 16:26:01 +0100
Message-Id: <20210318152610.16758-7-fabioaiuto83@gmail.com>
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
126: FILE: drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h:126:
+		DbgPrint("%s(): ", __func__);\

and remove the whole unused containing macro BTC_PRINT_F

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
index c38baf2bc412..aac8e8ed080d 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
+++ b/drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h
@@ -120,14 +120,6 @@ extern u32 		GLBtcDbgType[];
 		DbgPrint printstr;\
 }
 
-#define BTC_PRINT_F(dbgtype, dbgflag, printstr)\
-{\
-	if (GLBtcDbgType[dbgtype] & dbgflag) {\
-		DbgPrint("%s(): ", __func__);\
-		DbgPrint printstr;\
-	} \
-}
-
 #define BTC_PRINT_ADDR(dbgtype, dbgflag, printstr, _Ptr)\
 {\
 	if (GLBtcDbgType[dbgtype] & dbgflag) {\
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
