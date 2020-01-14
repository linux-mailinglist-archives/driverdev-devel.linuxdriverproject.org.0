Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5413AB4E
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 14:45:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D28586091;
	Tue, 14 Jan 2020 13:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IZ6goyrT2zjG; Tue, 14 Jan 2020 13:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D7B686016;
	Tue, 14 Jan 2020 13:45:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECC0E1BF873
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E6D3A86BB4
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 13:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GgrbbeQ8F5e for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 13:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3927486A98
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 13:45:06 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id d16so12215227wre.10
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 05:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oOinymv8pj0OPIX5ZcmZOCfgWEimDpoAKZBv8j+ojuM=;
 b=Lc53V3tkjlGBkcEODzZEcZMxyr5u7gBymcpf3xPxp3UNZGW7aeizjYh4kDZuGVh5cz
 qj9whch/rqLI3Ms+cNnAas3dr76fCNtoqTEwSGdA76RrNzEzrVBGCQ1ZBpzyZTlYcTSv
 VvYGl1lE+wciZiU2FOgrXwK/Can9sGn8/1L/FJa9ITjGCYnG/2TdK7I53a2xTymkhDi1
 RCq+tyTcQHQXxN0zKysxR6gxzwH+zRKdlzK5vieFInf/jv15TfehzoKPGi+5+4sYlGiV
 eTzHvH9FZjtWHYXp1mLaAvqmL70Tq3QbA+v1JVvijw0rTs4LlhrlZ9kKR/JTSroP7B5E
 FWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oOinymv8pj0OPIX5ZcmZOCfgWEimDpoAKZBv8j+ojuM=;
 b=amPnwfLW3pS+HG9nDv8U7sn+zqxoGy3FWrnZzqJxka5MkEg3wvTzdak8hKY41yJwV4
 XT+P3KSl6DjIu85J1reLCnPhXTM3moYa8z57t/QJcPg5mPP+3nK6QIsSNduT0n6uKJw+
 sbnZMmr55H0vgqwhyHJuWUx4Id2ugUuQW8a9sCN2ACdF82+2HAewteZEeTtIafG4r/Wq
 5+1Cr2VUDYjQJ8lniwcpIKDGx5GFJNMNBNeRkRdvjnMFTxT6d2Ak1f3acVpzjY61Upk7
 SdVKfPS4eDBxS+a8Id98G/BAU2RhEB+7EUJXEBUeP1EhSqt0VJp8YqWVDhW9jAIfcO3q
 5A/A==
X-Gm-Message-State: APjAAAWDpUQvKoGDNMKwXQ1kVBn0RbYgA5zx/kxYlOGQzDhJmqJ/69rC
 R+kJtBK9bShz+lbmTI5LKeM=
X-Google-Smtp-Source: APXvYqzFCtc2A2pvS5NtVwBfj/8CT2OpaYFNp29LauEBS3MXVSECFCW5PltwLwbBu1K/r6eg2TSLLw==
X-Received: by 2002:a5d:6350:: with SMTP id b16mr25470961wrw.132.1579009504598; 
 Tue, 14 Jan 2020 05:45:04 -0800 (PST)
Received: from localhost.localdomain
 (dslb-088-070-028-164.088.070.pools.vodafone-ip.de. [88.70.28.164])
 by smtp.gmail.com with ESMTPSA id x10sm19361333wrp.58.2020.01.14.05.45.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:45:04 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: rtl8188eu: convert
 rtw_hal_antdiv_before_linked() to bool
Date: Tue, 14 Jan 2020 14:44:19 +0100
Message-Id: <20200114134422.13598-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114134422.13598-1-straube.linux@gmail.com>
References: <20200114134422.13598-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Function rtw_hal_antdiv_before_linked() returns boolean values, so
change the return type from u8 to bool.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c  | 2 +-
 drivers/staging/rtl8188eu/include/hal_intf.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 0aa5e9346787..756945d41412 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -184,7 +184,7 @@ void rtw_hal_antdiv_rssi_compared(struct adapter *Adapter, struct wlan_bssid_ex
 }
 
 /*  Add new function to reset the state of antenna diversity before link. */
-u8 rtw_hal_antdiv_before_linked(struct adapter *Adapter)
+bool rtw_hal_antdiv_before_linked(struct adapter *Adapter)
 {
 	struct odm_dm_struct *dm_odm = &Adapter->HalData->odmpriv;
 	struct sw_ant_switch *dm_swat_tbl = &dm_odm->DM_SWAT_Table;
diff --git a/drivers/staging/rtl8188eu/include/hal_intf.h b/drivers/staging/rtl8188eu/include/hal_intf.h
index 516a89647003..39df30599a5d 100644
--- a/drivers/staging/rtl8188eu/include/hal_intf.h
+++ b/drivers/staging/rtl8188eu/include/hal_intf.h
@@ -209,7 +209,7 @@ void	rtw_hal_set_bwmode(struct adapter *padapter,
 void	rtw_hal_set_chan(struct adapter *padapter, u8 channel);
 void	rtw_hal_dm_watchdog(struct adapter *padapter);
 
-u8	rtw_hal_antdiv_before_linked(struct adapter *padapter);
+bool rtw_hal_antdiv_before_linked(struct adapter *padapter);
 void	rtw_hal_antdiv_rssi_compared(struct adapter *padapter,
 				     struct wlan_bssid_ex *dst,
 				     struct wlan_bssid_ex *src);
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
