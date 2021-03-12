Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CF0338745
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:27:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39FAD844F0;
	Fri, 12 Mar 2021 08:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5eE9B6T5502y; Fri, 12 Mar 2021 08:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7281D8450D;
	Fri, 12 Mar 2021 08:27:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68D741C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65DD54150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bj_SXN66e3Yq for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7EF240025
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:51 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id w11so4277066wrr.10
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KM61Rw9AB5hF3Q0ALiymzlTqLxZwzNcm4+STZCKTeYQ=;
 b=FLUklenF4tGJN+g21LaEchZSZN81uK/UQKJpH2mQk0VA9S+tCheHYB94BFM5xqyvXZ
 JiVWbvO8ApAqLAN/rRB67Pn2qyZNH2mdozXI00bkuCzd8xM1yQDmbpxGOdSAZruYKnyY
 g3siNG22UCJwPzrh6QnwSQvOW9oVcqtHZCXIBGhYQ2MwFf1ZRSexvcs0P3RcVgWUndHZ
 7QvUNAnA4eQXWa9eT7oRVn97a41cm9u1pXHzJIXuhxxzSwUQ2QIIBIDA4sQPKp6djLU/
 yv+zcIW6ee2KLTtiKloYDaL+NacPTq5wmGDpsZABRFNSy+ieV0t90U+PMwS80jlWTG5Z
 cGKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KM61Rw9AB5hF3Q0ALiymzlTqLxZwzNcm4+STZCKTeYQ=;
 b=bNC2EDj/6LL41Lib9rnt4PY+aSPARZ7KyfS+dTMw07h5qVKqGLzUmqWHxqA/sjeLyy
 Nwr+/kUEHEbJdYYXot65LbE5eg2TQdLKAYrgMrhmSUMmWWaPFWO8HHOrMJJc+NZ8HD3W
 xv2gpl705xTQDj6nQOIINT2wkZawNNN+dgoz86YVHVx71pj5togPZOnh+M7eCRjWAV8r
 5rSYRMjefARhm3j2LTVPQ2Vz8yZY5SnfYuU9gyEav02ijy8qVs2w394gbBqKZDNqAiBQ
 kvOfIiDNvh5Ns6stjvLAVUBy20H9OAmGqWUXCYPES4IUoZJcRq1FsoFRPFDNSfQD1Dn1
 1byQ==
X-Gm-Message-State: AOAM5328+r+RDNynXIZCu9EOn8GblzJBQRqCrdQ5Ph5L0lsiuPNe5erf
 GgmjarClMedIo8FkGbUWyLw=
X-Google-Smtp-Source: ABdhPJw2GpQo+/GxgD8f+ACEyubQYUiZZ05UBuVCI5IEYrvglCBJwcTpP0P9+x7S+2/WPI5AE2Q22w==
X-Received: by 2002:a5d:410b:: with SMTP id l11mr12919008wrp.16.1615537609982; 
 Fri, 12 Mar 2021 00:26:49 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:49 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 05/33] staging: rtl8723bs: remove typedefs in
 odm_NoiseMonitor.h
Date: Fri, 12 Mar 2021 09:26:10 +0100
Message-Id: <20210312082638.25512-6-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #27: FILE: hal/odm_NoiseMonitor.h:27:
    +typedef struct _ODM_NOISE_MONITOR_ {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm.h              | 2 +-
 drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm.h b/drivers/staging/rtl8723bs/hal/odm.h
index 0b8693a9f862..9a73297f94d0 100644
--- a/drivers/staging/rtl8723bs/hal/odm.h
+++ b/drivers/staging/rtl8723bs/hal/odm.h
@@ -1076,7 +1076,7 @@ struct DM_ODM_T { /* DM_Out_Source_Dynamic_Mechanism_Structure */
 	u8 Adaptivity_IGI_upper;
 	u8 NHM_cnt_0;
 
-	ODM_NOISE_MONITOR noise_level;/* ODM_MAX_CHANNEL_NUM]; */
+	struct ODM_NOISE_MONITOR noise_level;/* ODM_MAX_CHANNEL_NUM]; */
 	/*  */
 	/* 2 Define STA info. */
 	/*  _ODM_STA_INFO */
diff --git a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h
index a7f13a85559c..0eb55d785c7f 100644
--- a/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h
+++ b/drivers/staging/rtl8723bs/hal/odm_NoiseMonitor.h
@@ -24,10 +24,10 @@ struct noise_level {
 };
 
 
-typedef struct _ODM_NOISE_MONITOR_ {
+struct ODM_NOISE_MONITOR {
 	s8 noise[MAX_RF_PATH];
 	s16 noise_all;
-} ODM_NOISE_MONITOR;
+};
 
 s16 ODM_InbandNoise_Monitor(
 	void *pDM_VOID,
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
