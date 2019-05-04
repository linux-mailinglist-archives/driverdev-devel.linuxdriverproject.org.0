Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 473C213BDE
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 20:52:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BD0885A96;
	Sat,  4 May 2019 18:52:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTKoA-eYXo0K; Sat,  4 May 2019 18:52:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C415385A92;
	Sat,  4 May 2019 18:52:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7071BF873
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 493B585AE9
 for <devel@linuxdriverproject.org>; Sat,  4 May 2019 18:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x_brqIvPPRuQ for <devel@linuxdriverproject.org>;
 Sat,  4 May 2019 18:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 63F9185A92
 for <devel@driverdev.osuosl.org>; Sat,  4 May 2019 18:50:05 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id j26so4370627pgl.5
 for <devel@driverdev.osuosl.org>; Sat, 04 May 2019 11:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UtyZyNpmNUsx6lro+Mguug/5Q9XaYaR3OJHSgo60/nU=;
 b=BFe7Yr8SsWaQOCJF56+IawK0VcD6UcmptJE1pwTjeBdbDjCwF+55m5mMeIGNINk/w0
 q+cVk/+q0/AE2111yJOHAOMDgbvRaXeMNJejtYx/pzj9mPI+Vs4dKXEJ2uPnvGZI5zFz
 xJFb9EtAs4zydNI8eWARIrwod5oe7IiH3q3LX78pNzgnhQ6yZmWNtMuMAFVOlhWpv6h5
 UIplr1ZAh4g+e1phE9JeLN69aFN4Wz/ZCVGRiyOUqoVlxgnwgdmMVtZnp51+9MUi6Yur
 GApzG/R2K9RlnCRSSiBc1cvPHpjUzhrUxGEfZgcI4odEV86PmZfKJ+uv/xThJgo8ceIJ
 8SSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UtyZyNpmNUsx6lro+Mguug/5Q9XaYaR3OJHSgo60/nU=;
 b=aqFNq4hhV9F5XjJg4/Af3xzLt8MirmVGueQxUqAPsKStTzWwZpVQ9LLRNTzk9KOS9k
 TbzjZBPNwe8n9MZrenZmX1tg9tDeoqLeQpHN3Dx45Kd7FBd2lcGKXQn7npiUfOud1azb
 cr28qfiJKR/xP9ktAPfFZrpVGz6QxiR9SNCeWdc0IJEdIWaBFI9XYxL0M8ZZ5at7Bq95
 Z9iXunhY/4bCIClzH9KxuA1kDnpbEZqoXA0fJK3zeRcNFTpwmo/FXmz+MOyriOPaoIDG
 ZlXE1ltcv9xFYE2AAGjGb/SArrQvCKN8GalRsXQELiRudOSmo5VWlmFvT7gyxxrMq83T
 TizQ==
X-Gm-Message-State: APjAAAXhyQRRAIlJrYVpHujfoxWLJCosSufZoWY2684GpuFFPE8o6+fp
 Ufm209GoyWUpdzqO6iKGDnk=
X-Google-Smtp-Source: APXvYqyoVIXz0jB/uKy3yeZIWqvNO105GMUUujL0+IejxfZG1bVQ0txhJaPI35RBT8PjVeKZtjpFuA==
X-Received: by 2002:aa7:8190:: with SMTP id g16mr21492329pfi.92.1556995804996; 
 Sat, 04 May 2019 11:50:04 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.241])
 by smtp.gmail.com with ESMTPSA id b9sm315666pgj.94.2019.05.04.11.50.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 11:50:04 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 7/7] staging: rtl8723bs: core: Moved logical operator to
 previous line.
Date: Sun,  5 May 2019 00:19:47 +0530
Message-Id: <20190504184947.26173-1-vatsalanarang@gmail.com>
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

Moved logical operator to previous line to get rid of checkpatch
warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 2a8ae5fd1bc5..be48a3c043e3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -5650,9 +5650,9 @@ static u8 chk_ap_is_alive(struct adapter *padapter, struct sta_info *psta)
 	);
 	#endif
 
-	if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta))
-		&& sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta)
-		&& sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta)
+	if ((sta_rx_data_pkts(psta) == sta_last_rx_data_pkts(psta)) &&
+	    sta_rx_beacon_pkts(psta) == sta_last_rx_beacon_pkts(psta) &&
+	     sta_rx_probersp_pkts(psta) == sta_last_rx_probersp_pkts(psta)
 	) {
 		ret = false;
 	} else {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
