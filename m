Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 172EF13BDA
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:49:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5E9686816;
	Sat,  4 May 2019 18:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qRY1KInE644C; Sat,  4 May 2019 18:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A279B86866;
	Sat,  4 May 2019 18:49:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 087761BF5E9
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05543226E5
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b27naiTk3n53 for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 8E08C215DF
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:49:15 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id k19so4374637pgh.0
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=oUqAe72QoFoLb3ZFBY2MB1LTNHUJ0UJVx/ZXpwCh0Kc=;
 b=S/1rebLcVLsm6jgThI/3SA2aT8b8uRmEXUP74DdtJhF5ke4XFsDwjmoiMZpM+3Ap+K
 ak5l0Eq/yvPwraY+DWmS4wicDgGNAOBGcFxmYjhyakH0edcjvs9esUnYPoUvxdO+ix4h
 8I3S0QPlFoHrq7ajLgpm+5jJyQatHc3qoMiC6JNq9FWOVEzW7WRKkeDJ+aBNBI7mi0B1
 0iNZmAHOZJf9kHRWK2ZeDpMFYfN1MaRZRjlGV89C9MhvwQvLL/FEFMYY1zeHUFxmTkpd
 ZXSrpfYVNvbszkx/NCqHWtQ6lI4QwVODRULAIi6qW2eaJdbm6NxBPvn3WZ3YPiqxHR9i
 spRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oUqAe72QoFoLb3ZFBY2MB1LTNHUJ0UJVx/ZXpwCh0Kc=;
 b=ZOt4+cUUL4y5JDby05nyUylMiihzaMxmEdbWli/RrZB/XibvyYYC1LKHeOR8nVK5vB
 cK3G7gaZ93GvMEN8HE2u5Z9/017bf9h11YqN6PVJTP+DYY0kqT8QC4AGYrPRzDl0P6bX
 EYP5vyNjlcAiPiv6uknSRi45tnRHWJxUVnM/zks47k5wsOp4Z7+nAUMSBtGSh7QR8FQk
 ABCe1xzhiw2WXyUWI6s9HugbzJMxhjxLY+mc9tHzdcKfW0Kpg9VSsK5UTXgb6yP0k7nl
 ENC19AMqHc7MC9/lD2NRMr3gcGGqwNLQuAXo9Uk5AqlGThkUgbYi036exp/7jAvlKh/P
 hahg==
X-Gm-Message-State: APjAAAWAjXjwdN58CBPqFowQc00Rp13HHgJqPi1J4XuCvj9jkVdHsqkA
 W9FyNb0lcpUxdcbu0qIC/Zk=
X-Google-Smtp-Source: APXvYqyzNhXPSjIJ0SoSgg0XlC2p+BRnUwNDZK+aol5MOFifF93UVqzpp8D4mSmKyb+K7n7sCM4d+Q==
X-Received: by 2002:a65:5bc3:: with SMTP id o3mr21003477pgr.40.1556995755185; 
 Sat, 04 May 2019 11:49:15 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id a17sm6900716pff.82.2019.05.04.11.49.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:49:14 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/7] staging: rtl8723bs: core: Fix variable constant
 comparisons.
Date: Sun,  5 May 2019 00:18:56 +0530
Message-Id: <20190504184856.26116-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Swap the terms of comparisons whenever the constant comes first to get
rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 6f0205c9504b..2a8ae5fd1bc5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1276,7 +1276,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 			status = _STATS_FAILURE_;
 	}
 
-	if (_STATS_SUCCESSFUL_ != status)
+	if (status != _STATS_SUCCESSFUL_)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
@@ -1372,7 +1372,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		wpa_ie_len = 0;
 	}
 
-	if (_STATS_SUCCESSFUL_ != status)
+	if (status != _STATS_SUCCESSFUL_)
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
