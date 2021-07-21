Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 925C23D0CA3
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Jul 2021 13:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C818860AE4;
	Wed, 21 Jul 2021 11:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwcXb8jMLxuf; Wed, 21 Jul 2021 11:04:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BCCA605A7;
	Wed, 21 Jul 2021 11:04:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C4631BF403
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 11:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F020782F51
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 11:04:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9oegs9dQcHF5 for <devel@linuxdriverproject.org>;
 Wed, 21 Jul 2021 11:04:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6367E829FD
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 11:04:25 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id i14so1954551pfd.5
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 04:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lw0L8P4Zu+MrkkpU2YmwwBqGuV3+jA8U9VDH+jkBE7Q=;
 b=kqTBhnD6ZLic5/ENbFMUmR4U3yYRFAEFjMyZlq6yo8zTaGKesRwSmlZ00NMSXYiFFz
 s+8KAGbrVIFvOINIV/b1ukXTX6nTiwCdDSn4IEjTRpFL1EpRmqVx21zbWRi8QqMuONFM
 I2fysd3SiLZ2pzadK/6DaGvgi30bgaZLMQAKttgBsCJ9SszpBhK7bh58f8TDxRxFqqZw
 Ne6WuCxekx7ZE+/uVv5UQPy3+diIHyoyKvRsOl+wH3rNqLz4mokmfrqkq56YPugwiUm5
 N0s/vnOmvjjOY8E5WbM8yuIDPIHFhV0P7TLcyDc9yU9QQXiW7AlxQY2AfbLC0N4NBJNU
 lr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lw0L8P4Zu+MrkkpU2YmwwBqGuV3+jA8U9VDH+jkBE7Q=;
 b=MQ9GvMctrXAsAJPYB6k+W82djRQc8l2V9LRXd0BCqN9gxGBANMwyu9hUGlZIQaYkd4
 VEcwHWbvARMy4MhRI4koHDslIm/5vW0Dqh4t+KCiDULl5uK7yfuurVjIiIZw2T6aHtPj
 M7SX7pNNKwZRXzRNlyIjOL9eY9DLTFbyvqNccI3YOQqn4BeZsPgSRjvkU0QK1r2GXtcT
 LOxWX8Iqa7hj6SpwSg5W3320S5MMjLneByiWMyaphJj9xiN3QNlzIP4zkzFTNaPPuA63
 cI5a/6tM9P0R0+g5b/nTpEBVVIibnkqFHRjO5qa1hmf3pikj7lQ7B9JrY3w1cUHfRN4s
 zgpg==
X-Gm-Message-State: AOAM530WE3XyqRX70wewc4H6lsuXL6/he/xJSCCEMTq64dwB7FpVMZOB
 +ofhchzb4RKUWriqqN5jUAE=
X-Google-Smtp-Source: ABdhPJwwBwg2rm0i0oAJEiRa28qUKsDiIs9GTuPrZwc+nRlg8P+wOlisy5foDXPTgzoELX63K+iy/w==
X-Received: by 2002:a63:dc15:: with SMTP id s21mr7267923pgg.281.1626865464819; 
 Wed, 21 Jul 2021 04:04:24 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id a24sm20593711pgj.12.2021.07.21.04.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 04:04:24 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: remove unnecessary blank lines in
 core/rtw_ap.c
Date: Wed, 21 Jul 2021 16:28:09 +0530
Message-Id: <20210721105808.63735-1-benjamin.philip495@gmail.com>
X-Mailer: git-send-email 2.31.1
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Benjamin Philip <benjamin.philip495@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes some checkpatch checks for blank lines before
and after braces in drivers/staging/rtl8188eu/core/rtw_ap.c

Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
---

This patch fixes some checkpatch.pl CHECKs for blank lines.

Note: Since all I have done is remove some empty blank lines, I didn't
compile and test the driver.

This is my first patch to the kernel. If I have erred in the patch sending
workflow in any way, I will be glad to resend it in the correct manner.

Apologies for sending the mail privately to Greg and Larry the first time round.

Also, should I have made a patch for each line I removed and sent it as a patchset,
or this one single patch better?

 drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index b817aa8b9de4..a2aeb78733d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -381,7 +381,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		/* set ra_id, init_rate */
 		psta->raid = raid;
 		psta->init_rate = init_rate;
-
 	}
 }
 
@@ -453,7 +452,6 @@ static void update_bmc_sta(struct adapter *padapter)
 		spin_lock_bh(&psta->lock);
 		psta->state = _FW_LINKED;
 		spin_unlock_bh(&psta->lock);
-
 	}
 }
 
@@ -1140,7 +1138,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-
 	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
 }
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
