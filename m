Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE8B667A2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AABF87659;
	Fri, 12 Jul 2019 07:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HRB+IKna27EB; Fri, 12 Jul 2019 07:18:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14B4B87633;
	Fri, 12 Jul 2019 07:18:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32AD21BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 23FDF882F0
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WI95wO6gQcyN for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 885FB882EC
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:13 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id b13so3921648pfo.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9nmBkqPkU6uUEZa9weaGZgIaFsRemGA0uVi9n49iH4A=;
 b=BAlM0mv8jTUK5/ooMqxswSlTzXEVtnMII8xzZkyNv9vAKeUklRVtO8TPLlveItPnDs
 SPCBCaaFMcq8HdubFojLMfgGcksEonnFqKd70r+JIJbZxkNQYMYdSDc+JarOiJ0IuH1j
 8HK/AqTwzFH9MbpyXtVb6e8o/ulrmwuaLfNkpXPWDdUrZ3cxQPe6KG/V0vsLzWxU1lLP
 Mljrytq02FzVWJZ9DRvTUFDivxDqNBsIo+YGkY3aAPZ4V9/Dgzr8DRMkA8etDSgbb4Cn
 1Scj581+w48YcO9SEOb5EtrkMC/jIX4ZhUIiM8YcHX3tPp/AzP9bKwNUS4AS1HNiW+7N
 fUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9nmBkqPkU6uUEZa9weaGZgIaFsRemGA0uVi9n49iH4A=;
 b=f+g6HD8oCSxE+4SKs41Xj8aKmE7Yr/iSWCm03x2FILKR9TBAmZdSMS3Gq7LuRto+bU
 HUaZeqFA8Ki2+ztyC+kUXmi9GWBEgbceH8DCwKy9iasNoyLDmJxavJ7Qh3eQkxD0OgTN
 LX1KLlUtGvz66GtnTl+KExav0/tbJ5va9UjF3z9nmQIjg5cbgT1n1AepUTAPL/JRPBsy
 WJdXI1zg+Ua+QxSg4687BFp6krplGilcbnh0vn7z+GjZaqoeV+KmpOiTXX/117YLEj9m
 76XD3GKJ3x0NsFBIYMuvxYmK9HrRS/LRMM7pp4Y9utEX2nEL9PCoKf3cqB/jOTOshhLs
 i8lQ==
X-Gm-Message-State: APjAAAW6NPMfTCfpKRnzRTQG9AE8O2WHXafmH7iph8hWqL0iQxbUv409
 gPj3vw5MuK7zG6mDkZS/fd6Xh+d9
X-Google-Smtp-Source: APXvYqx5R3wog8vr5JsU/ENUXy5IRXtrMTCEoadPgg7JP4cb4Z13hZxDAOk7Lfzsb3K8XB82SFVpKw==
X-Received: by 2002:a63:5610:: with SMTP id k16mr9076885pgb.335.1562915893138; 
 Fri, 12 Jul 2019 00:18:13 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:12 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 4/8] staging: rtl8188eu: Remove function
 rtw_os_indicate_scan_done()
Date: Fri, 12 Jul 2019 12:47:41 +0530
Message-Id: <20190712071746.2474-4-nishkadg.linux@gmail.com>
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

In function rtw_indicate_scan_done, replace call to
rtw_os_indicate_scan_done with call to indicate_wx_scan_complete_event
as all that rtw_os_indicate_scan_done does is call
indicate_wx_scan_complete_event.
Remove now-unused function rtw_os_indicate_scan_done.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c      | 2 +-
 drivers/staging/rtl8188eu/include/mlme_osdep.h | 1 -
 drivers/staging/rtl8188eu/os_dep/mlme_linux.c  | 5 -----
 3 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index d2f7a88e992e..43c7531e777e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -827,7 +827,7 @@ void rtw_indicate_disconnect(struct adapter *padapter)
 
 inline void rtw_indicate_scan_done(struct adapter *padapter, bool aborted)
 {
-	rtw_os_indicate_scan_done(padapter, aborted);
+	indicate_wx_scan_complete_event(padapter);
 }
 
 static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, struct wlan_network *pnetwork)
diff --git a/drivers/staging/rtl8188eu/include/mlme_osdep.h b/drivers/staging/rtl8188eu/include/mlme_osdep.h
index eda16c06336a..8e919441c2aa 100644
--- a/drivers/staging/rtl8188eu/include/mlme_osdep.h
+++ b/drivers/staging/rtl8188eu/include/mlme_osdep.h
@@ -13,7 +13,6 @@
 void rtw_init_mlme_timer(struct adapter *padapter);
 void rtw_os_indicate_disconnect(struct adapter *adapter);
 void rtw_os_indicate_connect(struct adapter *adapter);
-void rtw_os_indicate_scan_done(struct adapter *padapter, bool aborted);
 void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie);
 
 void rtw_reset_securitypriv(struct adapter *adapter);
diff --git a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
index e660bd4d91ef..321b2c46479c 100644
--- a/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/mlme_linux.c
@@ -27,11 +27,6 @@ void rtw_os_indicate_connect(struct adapter *adapter)
 	netif_carrier_on(adapter->pnetdev);
 }
 
-void rtw_os_indicate_scan_done(struct adapter *padapter, bool aborted)
-{
-	indicate_wx_scan_complete_event(padapter);
-}
-
 static struct rt_pmkid_list backup_pmkid[NUM_PMKID_CACHE];
 
 void rtw_reset_securitypriv(struct adapter *adapter)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
