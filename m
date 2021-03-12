Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE01338758
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:30:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B37344326B;
	Fri, 12 Mar 2021 08:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id poiz_sPnqtkD; Fri, 12 Mar 2021 08:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECCBB43254;
	Fri, 12 Mar 2021 08:30:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 906841C1135
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FDE56067E
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vxph1cO5P0pr for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDB9160607
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id l11so4299370wrp.7
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Zotet6DrtX2E5iKmIxRo5F7jgyqfRbll9nhgXMq/FoU=;
 b=FhL9v7enqVpippQBhRb57TLdYJ/zC7YTJA6rz9hYAsvaEo436fslLGzJzFhYo0wK8W
 wfPpUL5W+yME6+8o/G9WcJexjnnjisHeDnT9JEDnv8WiyBnIU4zwCUK/K4B32dGDbWWo
 aO7NzzXqfXnfa0WwcJRnu32l2COfNSUCtf1hStUhGGn5jiu1G9Jh6lvk/jlz67lsgH83
 hByDSUp63ktxQ9HdTwLxou7YFPO6NmBhNuh4fPVc/Xjgk6eQi40KIxjT8B3LbC1b/MvL
 /0P6/wQhUkPkQdELMzzto3G2Xlv1Jf4X6d3gvSU4MMYDXsWmEOPKnaPkDTr8WhrodUo0
 BRxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zotet6DrtX2E5iKmIxRo5F7jgyqfRbll9nhgXMq/FoU=;
 b=J+D9SSRFg9Fe0NcMdE2A+UCpzJ7Y5AhoEGbwFPKvLGNW5zh2eOc3bkrMeW09J3KG1X
 1/6g91hnQ4u4wWE5abFDQpOUu/fHZmLOZxQe844FREkP5TbHnhyV6xSWeUcHseLt0GDs
 Fa/yUrihBa5+FWOuFPheaWo2h+P9y47bshqhTRFGlIZ/lAZk96BdpSxlte6lxPIYoRUP
 o0D/fjbduXYpbR4UHcQm7j3RYKYqPAv6bR17f3sumG1XZDyR+XD6mLMeCpP0W2GiZ/8U
 k59DykNMkTorzB2SbvyfbpdxKcIAcSvMR5/goeyKnPXVabC02NYig2ItW+UwUXUOQ86v
 7niA==
X-Gm-Message-State: AOAM5329M5XtW9z9wO5X9dmgFIr+t/BcThnAySOIBzB/kakibbWyddHP
 7nmTokC8efp1NSEOSJqzzUU=
X-Google-Smtp-Source: ABdhPJxBW93aZ0W8Te5ycvgVjakxjEhw0jyv4QfZRUmXn5eV0EKIzRm9sA8gri4PqTPRNDrXiwgY3Q==
X-Received: by 2002:a5d:4592:: with SMTP id p18mr13592778wrq.244.1615537618045; 
 Fri, 12 Mar 2021 00:26:58 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:57 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 16/33] staging: rtl8723bs: remove typedefs in rtw_mp.h
Date: Fri, 12 Mar 2021 09:26:21 +0100
Message-Id: <20210312082638.25512-17-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warnings:

    WARNING: do not add new typedefs
    #52: FILE: include/rtw_mp.h:52:
    +typedef struct _MPT_CONTEXT {

    WARNING: do not add new typedefs
    #268: FILE: include/rtw_mp.h:268:
    +typedef struct _IOCMD_STRUCT_ {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mp.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index 2ea7100c3a4c..6cf598439e5c 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -49,7 +49,7 @@ struct mp_tx {
 #define MP_MAX_LINES_BYTES	256
 
 typedef void (*MPT_WORK_ITEM_HANDLER)(void *Adapter);
-typedef struct _MPT_CONTEXT {
+struct MPT_CONTEXT {
 	/*  Indicate if we have started Mass Production Test. */
 	bool			bMassProdTest;
 
@@ -148,7 +148,7 @@ typedef struct _MPT_CONTEXT {
 	u32 		mptOutLen;
     u8          mptOutBuf[100];
 
-} MPT_CONTEXT, *PMPT_CONTEXT;
+};
 /* endif */
 
 /* E-Fuse */
@@ -260,16 +260,16 @@ struct mp_priv {
 	bool bSetRxBssid;
 	bool bTxBufCkFail;
 
-	MPT_CONTEXT MptCtx;
+	struct MPT_CONTEXT MptCtx;
 
 	u8 *TXradomBuffer;
 };
 
-typedef struct _IOCMD_STRUCT_ {
+struct IOCMD_STRUCT {
 	u8 cmdclass;
 	u16 value;
 	u8 index;
-} IOCMD_STRUCT;
+};
 
 struct rf_reg_param {
 	u32 path;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
