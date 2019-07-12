Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3644667A0
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA8562279B;
	Fri, 12 Jul 2019 07:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rn0XvG-E8l2o; Fri, 12 Jul 2019 07:18:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 002A72278C;
	Fri, 12 Jul 2019 07:18:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6215A1BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A90587633
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id owOAyGiQiZN1 for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A43218761F
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:05 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id s27so4141481pgl.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JfkXwEYyxXv2NbCqeKXhxPupOXOGqnO8bNhM6GFE2Sk=;
 b=IbXDZes0Y8wrxLf1RD03ycziDa/eVBujduViXBMs0o/LC2LEDzOLHH6LarMW8pVQjV
 VX6FV2AZh8UW9gKLGbPbZ2CbUQLmP6LvX+LLcx+p/Dq7XXwAtiOhlXRt1tONGQ6FUZ+I
 m0GxAQaJCxNKHbQpgWafFSfc3SPgtxOy3XyEK+exxSqYhZhzemtIv5tTLVFtlDoEmCw+
 AJbNSP+eJTtfrbfSK1nFARlrGZ4zb5DGkZd2NVg70XFiw/M2eQPl/M5WVd2IPMC6vn7O
 2KppT3haVyqaf8F0zWA2nZ+318o+cTPeI+z3c1ldh5fI2JpL65PQhvR8lv/cb45Y/5lw
 aylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JfkXwEYyxXv2NbCqeKXhxPupOXOGqnO8bNhM6GFE2Sk=;
 b=NExVdfWGdGN2x2vur8W5eCMRjGMSGtJ6oMxSBiI/mcnL5nn5TqkesvZpAopKpf2bea
 s5fQxQoqMLjictCWA9n0YZmNbDVwrkcjKTV9I+vAqM30J8FdD5lqCwxfY9wP8mpSdtIN
 U5cvjfuQdN5U8Mp2wQhpXmAs7sUEAfEDUr3AOlDTdh5+YJ3Wu+mBJ/dVwWnO4xOhethM
 OsY5yHtMy78Bh+TfMs1Qnoa3skBXcxBlGVHq3jqgm0xYDjKsUud0aoTCYqu9qx7zVeUI
 Rlvp17g7Z0ppguh29w6qKzoI0B44vU52ioPNT+CHJDnVhNI2XTt8ynjSdSP5A2QN5Lju
 G90w==
X-Gm-Message-State: APjAAAXV2iUUpdxUvlySkBfliTzvc3k6YEcP7mYeczbRlJ6zYUNdI89v
 RpmN6pqdbMc4z+JDQBjyYCI=
X-Google-Smtp-Source: APXvYqxDpT5SvG3+5GNz4Td+hFR+f3jzrPqeCuNzFSW1DkH09TOyNPqO/y+mrSAmXTtlUUfvkgORYA==
X-Received: by 2002:a63:f807:: with SMTP id n7mr9362143pgh.119.1562915885291; 
 Fri, 12 Jul 2019 00:18:05 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:04 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 2/8] staging: rtl8188eu: core: Remove function
 enable_rate_adaptive()
Date: Fri, 12 Jul 2019 12:47:39 +0530
Message-Id: <20190712071746.2474-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712071746.2474-1-nishkadg.linux@gmail.com>
References: <20190712071746.2474-1-nishkadg.linux@gmail.com>
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

Remove function enable_rate_adaptive as it does nothing except call
Update_RA_Entry.
Modify call site of enable_rate_adaptive to call Update_RA_Entry
instead.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index b75568efb46f..1f2763ff2a70 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -1174,15 +1174,10 @@ void Update_RA_Entry(struct adapter *padapter, u32 mac_id)
 	rtw_hal_update_ra_mask(padapter, mac_id, 0);
 }
 
-static void enable_rate_adaptive(struct adapter *padapter, u32 mac_id)
-{
-	Update_RA_Entry(padapter, mac_id);
-}
-
 void set_sta_rate(struct adapter *padapter, struct sta_info *psta)
 {
 	/* rate adaptive */
-	enable_rate_adaptive(padapter, psta->mac_id);
+	Update_RA_Entry(padapter, psta->mac_id);
 }
 
 /*  Update RRSR and Rate for USERATE */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
