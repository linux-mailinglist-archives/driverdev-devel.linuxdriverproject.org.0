Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 623893408EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:29:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF8AC6FACA;
	Thu, 18 Mar 2021 15:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PwChtl0UHMet; Thu, 18 Mar 2021 15:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF2176FAD0;
	Thu, 18 Mar 2021 15:29:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 825AD1BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7EFD06FA27
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YbaEV_tniAXr for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DEB6E6064D
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:22 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id g20so3822319wmk.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FAVWeRHn9iAhdC0Ut9ovsSctOKr2pG4p/gzTEx4WbI8=;
 b=j2DXa2DI74N+aQrXQSHLIpCDHPMQt4hlnxM+MVvUCGs5TNa/Rk6BAL3EBnN8s6fpaM
 0fcXFln6o14dED+EUK/x0BLwvEXwxp46G1YCiQTnwYbjnfOPtupc+dlWh2Zm1R+sdBcj
 t1jtWgfBZsi9dacz5YcmdasoIYMW1spr4Y/s+j3n43OpnOERlkMXCZ8WmtTosfbpyFlr
 xmUvl2sITTAa3WTOvWDdyRQuWb9p8EZ4kh4ZHs8EXqvpoU1SB3YM3d7CF7B+o0bZ50u3
 gBeoKtCj8y4ZtAW5TlqPdgFkrH8AAPUb064ORefJ5aTofV0loTdiXbhpUGmPU3PDDPlX
 meYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FAVWeRHn9iAhdC0Ut9ovsSctOKr2pG4p/gzTEx4WbI8=;
 b=ARZiXc1TJ123juXbnkKx6MHgj74S/TZBvTuFZmKvCx+lQh36g0KaSCvwR5A11nBKoN
 7NsGFUarXV3bBfFSlqNnWbCfu+KuxhBt5QNHK3V1bj8wlx0ijKT5vWDLW6fuEl1ihc0a
 sbs6UTwbqAxcEMQ6SRr8pSbv/AKDHTafpjnM1y/qGTJPm4Fd/whRUbbiwYhApRQyZ+yx
 cXDGfDjgSl8CJYVSfE8pgq97Dp8TIuKieIX7i8EBqijQvEFSfpcy+1LZtr1NlV2mPa/B
 GlWWqe+xFOTLSHc4mt3MnjzIuiTPw+zgEj5aMPeD6uzAvYB+GXHn3KDdBnmZEhf35EgD
 r4kA==
X-Gm-Message-State: AOAM533tXNb7EyeGT4hGg5RNbN96D4kyftaCJxP7l9fLxDptKKvX3OPR
 OPh5m+LV3L8M0LM8FT6ePM8=
X-Google-Smtp-Source: ABdhPJyZeVHONd+40V8pCLPwRvYiiCs/Th4yfBMQ07+RNCceL5dWFGLP11cl9mKBM9QbqOPGuNvpAw==
X-Received: by 2002:a05:600c:49aa:: with SMTP id
 h42mr4277827wmp.49.1616081241221; 
 Thu, 18 Mar 2021 08:27:21 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id w131sm2768807wmb.8.2021.03.18.08.27.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:20 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/15] staging: rtl8723bs: remove unnecessary logging in
 os_dep/wifi_regd.c
Date: Thu, 18 Mar 2021 16:26:10 +0100
Message-Id: <20210318152610.16758-16-fabioaiuto83@gmail.com>
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
153: FILE: drivers/staging/rtl8723bs/os_dep/wifi_regd.c:153:
+	DBG_8192C("%s\n", __func__);

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
index b3d87a971398..93a35b94d8bc 100644
--- a/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
+++ b/drivers/staging/rtl8723bs/os_dep/wifi_regd.c
@@ -150,7 +150,5 @@ void rtw_reg_notifier(struct wiphy *wiphy, struct regulatory_request *request)
 {
 	struct rtw_regulatory *reg = NULL;
 
-	DBG_8192C("%s\n", __func__);
-
 	_rtw_reg_notifier_apply(wiphy, request, reg);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
