Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA513C164
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 05:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D93F85C3A;
	Tue, 11 Jun 2019 03:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQpxWwfIY-1R; Tue, 11 Jun 2019 03:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63BDF8596F;
	Tue, 11 Jun 2019 03:00:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EDDCB1BF288
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 02:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA2B220479
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 02:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KD7a7MeQdYDD for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 02:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D2F62046F
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 02:59:59 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 81so6422468pfy.13
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 19:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3RvF588gW/eOiodTO3ulTpUto6/HGBoQ0uLzQhVKiAY=;
 b=UotuSMSg82fg5NGnIk39gGKWbzlAwata7Bb06GRioyYSpU+nYnazHpAMkxgj8rtdZ0
 Pq0UM+60by3JiKK2U7gNQm0lY1yiV0wJ2D9F1D4nHak8aas5AgRPPWkdTExlqpYdGPVI
 VmmGLMdeIuMNbQ7WeQiXPPhh7RdrjnpxXpNBunBf6yNCVZw01cZFTWcCBjeakyRjMSxn
 PKycyTachHikK1CAb28KLBjxQL89DbUpfZmlYnXvkFuyDulipJjrChEV/7hYn5UOYLk9
 pVU5bHcE3iT/82GcWhjaTxfFiYMPXEaQisMdf3o31XIXlyuYijhrxD6nhSA+nUZiUXXl
 UuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3RvF588gW/eOiodTO3ulTpUto6/HGBoQ0uLzQhVKiAY=;
 b=TMOKxyimE5CflWt2C4riyQHtcpSspWDbKNuSWcbzQuR3Qy4UHH2P7oQ9/ldSkjr+GG
 W5pFiET5DAgcq8RqBokOcuLavz8AP/nWQuA9GzI62msexWri2m+lGe7RR02vXcDGo+z2
 tXzdnfD5v5HLXl90963PNjKBUHNH5Mkg069LM0AlOV13AE20QrPEp6AEMOe9gQYUDl+M
 0yKlyWZv8dWIT5ZOUeXY0/yYsHcv6GosgjAYQl4ddX1nt68ZMEEynkFfk+l0esJ0Ee/n
 F4khTxbIi67NhHdjmuRk3qoqskRwcW/IofQI6iKSQIy/rX1EJ5I8fTnJjAtfFwXGMcl2
 HTog==
X-Gm-Message-State: APjAAAWzXDbYgdaXqZV19R4DdnflmWky2vMXt3Wg5LigzETSZAQHSi+s
 DZyayhN1110yF1gqI6+K0FDW1JiN
X-Google-Smtp-Source: APXvYqwAiYXXj0zgcOalF+oKh2682wSbp41Bmwzooikq9yRU4xC5SaJCr5gRZpvR/852/XAg8pbdEA==
X-Received: by 2002:a17:90a:32ed:: with SMTP id
 l100mr24199013pjb.11.1560221998813; 
 Mon, 10 Jun 2019 19:59:58 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id 133sm10861906pfa.92.2019.06.10.19.59.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 19:59:58 -0700 (PDT)
Date: Tue, 11 Jun 2019 08:29:53 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: fix issue Comparison to NULL
Message-ID: <20190611025953.GA26041@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

This patch fixes below issues reported by checkpatch

CHECK: Comparison to NULL could be written "rtw_proc"
CHECK: Comparison to NULL could be written "!rtw_proc"
CHECK: Comparison to NULL could be written "!rtw_proc"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/rtw_proc.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
index d8e7ad1..d6862e8 100644
--- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
+++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
@@ -122,14 +122,14 @@ int rtw_drv_proc_init(void)
 	ssize_t i;
 	struct proc_dir_entry *entry = NULL;
 
-	if (rtw_proc != NULL) {
+	if (rtw_proc) {
 		rtw_warn_on(1);
 		goto exit;
 	}
 
 	rtw_proc = rtw_proc_create_dir(RTW_PROC_NAME, get_proc_net, NULL);
 
-	if (rtw_proc == NULL) {
+	if (!rtw_proc) {
 		rtw_warn_on(1);
 		goto exit;
 	}
@@ -152,7 +152,7 @@ void rtw_drv_proc_deinit(void)
 {
 	int i;
 
-	if (rtw_proc == NULL)
+	if (!rtw_proc)
 		return;
 
 	for (i = 0; i < drv_proc_hdls_num; i++)
@@ -637,18 +637,18 @@ static struct proc_dir_entry *rtw_odm_proc_init(struct net_device *dev)
 	struct adapter	*adapter = rtw_netdev_priv(dev);
 	ssize_t i;
 
-	if (adapter->dir_dev == NULL) {
+	if (!adapter->dir_dev) {
 		rtw_warn_on(1);
 		goto exit;
 	}
 
-	if (adapter->dir_odm != NULL) {
+	if (adapter->dir_odm) {
 		rtw_warn_on(1);
 		goto exit;
 	}
 
 	dir_odm = rtw_proc_create_dir("odm", adapter->dir_dev, dev);
-	if (dir_odm == NULL) {
+	if (!dir_odm) {
 		rtw_warn_on(1);
 		goto exit;
 	}
@@ -674,7 +674,7 @@ static void rtw_odm_proc_deinit(struct adapter	*adapter)
 
 	dir_odm = adapter->dir_odm;
 
-	if (dir_odm == NULL) {
+	if (!dir_odm) {
 		rtw_warn_on(1);
 		return;
 	}
@@ -695,18 +695,18 @@ struct proc_dir_entry *rtw_adapter_proc_init(struct net_device *dev)
 	struct adapter *adapter = rtw_netdev_priv(dev);
 	ssize_t i;
 
-	if (drv_proc == NULL) {
+	if (!drv_proc) {
 		rtw_warn_on(1);
 		goto exit;
 	}
 
-	if (adapter->dir_dev != NULL) {
+	if (adapter->dir_dev) {
 		rtw_warn_on(1);
 		goto exit;
 	}
 
 	dir_dev = rtw_proc_create_dir(dev->name, drv_proc, dev);
-	if (dir_dev == NULL) {
+	if (!dir_dev) {
 		rtw_warn_on(1);
 		goto exit;
 	}
@@ -736,7 +736,7 @@ void rtw_adapter_proc_deinit(struct net_device *dev)
 
 	dir_dev = adapter->dir_dev;
 
-	if (dir_dev == NULL) {
+	if (!dir_dev) {
 		rtw_warn_on(1);
 		return;
 	}
@@ -760,7 +760,7 @@ void rtw_adapter_proc_replace(struct net_device *dev)
 
 	dir_dev = adapter->dir_dev;
 
-	if (dir_dev == NULL) {
+	if (!dir_dev) {
 		rtw_warn_on(1);
 		return;
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
