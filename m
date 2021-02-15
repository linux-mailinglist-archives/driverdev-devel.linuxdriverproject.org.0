Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B5631C469
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:35:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31C5686A01;
	Mon, 15 Feb 2021 23:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CoRUlwrFdiwE; Mon, 15 Feb 2021 23:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D1A186566;
	Mon, 15 Feb 2021 23:35:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40C601BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3B0086F548
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0zcEBh-N1OP for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 265F26F539; Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E481F60087
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:48 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id t15so10974651wrx.13
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gdMjv3PHcQrBqt3IFxBp+nAvs8Tvvw+J+yRn42FzksY=;
 b=04ziwiH/3f5gWmZXWGLooWh2OkL/hHNSOWTSosSAXeDfYnNVeYZEa2sFQJbN8fww1r
 bINo77R6othLZUcT8LKoIF8oX9HeXmxhIaBctDuywrIVnUanwT+r9J2IMfUCmrafnZGK
 7gcpgCEAqrMJ/kllj0rksO8hU687UgwVg/9qLKKWjO2dXvGkcCbBGfIB0KNgdy2rhVag
 855GG8Rt/a5Bd945agv22XdSlTYOc68/ETy62b2NmI6mtb/xfQsLPE24eqhWcPk2otiV
 VuDTmrf19D4VHuTGuaNmx6Ajf0FVsxxn9UoriOrIN96a9mWcja+9P9C68RO3HKaWaMGN
 yeiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gdMjv3PHcQrBqt3IFxBp+nAvs8Tvvw+J+yRn42FzksY=;
 b=rII4eAM3XqzikUM1TxGZ/nlVotBfMrwohA15I/TCvP093nJaOG8MBmnrN4QeMhaR0x
 +Dw7FR64jrQ2n87VvOdoH2X8PRgFlnUuzVH9tltqey/SZXAciszp8lwyBABVosA7dNXv
 THg8zpXCBEuVM8O1cBiLdxuGdxDI40OCEfopbtLpz62dTl/lKSgHwH3oPZZhUaVu4i4F
 ZYaq8CJkO8OS+zTyhaWfeyzn6uS77hEa0QzzDCQjqSCt5orUGxNPwHJAYl1tXbQIVu7+
 XLojyil5vXvDnPWPi9JcogVCaoHPR2Bah4lRv0Np+glEqa3+2AVThUa6XU+3TeEXM2sR
 1fVA==
X-Gm-Message-State: AOAM5305HXSlNC0nxbSIQo+2t9/WmSudmmWL++0seRj3uwozmuCqUI7i
 bDS5yt+X/GkzHroFDh5Ual0R+w==
X-Google-Smtp-Source: ABdhPJyPTPgp0sEyylnIEkgypLdLzkMrXaX1dCdc2cti2Bh/XNvmOuBu3hfEk8C06jwn3wB/tzhfRA==
X-Received: by 2002:adf:d0d2:: with SMTP id z18mr21614520wrh.40.1613432086757; 
 Mon, 15 Feb 2021 15:34:46 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:46 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/6] staging: rtl8723bs: remove DBG_COUNTER definition from
 rtw_debug.h
Date: Mon, 15 Feb 2021 23:34:39 +0000
Message-Id: <20210215233440.80617-6-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215233440.80617-5-phil@philpotter.co.uk>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
 <20210215233440.80617-2-phil@philpotter.co.uk>
 <20210215233440.80617-3-phil@philpotter.co.uk>
 <20210215233440.80617-4-phil@philpotter.co.uk>
 <20210215233440.80617-5-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, yujian.wu1@gmail.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove DBG_COUNTER macro definition from include/rtw_debug.h, as
all uses of it have now been removed and it is no longer required.
The DBG_COUNTER incremented values were never actually used anywhere
else in the driver.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/include/rtw_debug.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
index c90adfb87261..d1c557818305 100644
--- a/drivers/staging/rtl8723bs/include/rtw_debug.h
+++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
@@ -252,12 +252,6 @@
 #endif /* defined(_dbgdump) */
 #endif /* DEBUG_RTL871X */
 
-#ifdef CONFIG_DBG_COUNTER
-#define DBG_COUNTER(counter) counter++
-#else
-#define DBG_COUNTER(counter) do {} while (0)
-#endif
-
 void dump_drv_version(void *sel);
 void dump_log_level(void *sel);
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
