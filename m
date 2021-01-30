Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0A73091E7
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 05:49:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1EB11860AE;
	Sat, 30 Jan 2021 04:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SyxnMtcDjThf; Sat, 30 Jan 2021 04:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 089DE85BC4;
	Sat, 30 Jan 2021 04:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFF4C1BF23B
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 04:49:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A60CF203D9
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 04:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4AfRfJV2leXe for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 04:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id F3C611FD7D
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 04:49:42 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id d13so6563022plg.0
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 20:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W4ElXu2pfKkjYu5Tw1aWk15MrTDF5YFDL7qh1XByBdU=;
 b=ulPePdt06VqbRP2Ujk8YwZYWD5dPcMsw0esI2Kr6hHl3kPuXd0V04B5AbW06/iUh2y
 3X14k0FOC0gg9t8YTtoKOSq2e6ThnCsNEJ70mbaVC4gCQiUVYwsN7L+r29r0PVtPylXX
 o5JmE2gfJEG/K7qIyZesI2m/3vTR2RfJgCEkwyrCPgL2Yqi7W89kuV/BYkTWMQqESrRp
 MwADubfTtYYyqt0V7GOQLATuKMkGmP2nWnCHnKfqFaMH3WHwj8GhPuoIx0V54p1tIZcj
 5VGSqtyEqOd1GtazFyUH/Q9B7UVd7sWkoSfMrMHqxW8KG3XazWx/2vabz7LtN4o144mc
 bhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W4ElXu2pfKkjYu5Tw1aWk15MrTDF5YFDL7qh1XByBdU=;
 b=QXB0Ubmvb9cHK+2g6QKAIAwIV/MpDMtNGWpZEFYsvd4DKwwx0kjCbj0GRdihFEGBf1
 rGaSC0iNm6pOJ331h/VP0TpBULoDm2WElc8Ptvi6wdYQhcEXP01h0IIGA3HTtWGAE9Mc
 boQ2MtxaAUixvYimrRB3Qu7q4W+xn5+nSMiTk6/sRqDdM+J8F6AOlb84Wg6W3uBGzYbX
 6HacU5hr/DJxzQpcYqL57DCWWn8NV+R0HkOzYwBiJkmRnXnxGKig7/gqsDqsPaolDMh/
 k96AZKGooRjbEdpGp2L3KUI+jBYwBSM2BMih2Wx43bRn7owyV6f5v0oFidW9b8mjo7Pr
 4ouw==
X-Gm-Message-State: AOAM533aOZgll5AxkQfhEVqYpsth06t/xbs2G3u/ooI9KJ2l5507Httz
 mXAQwYJ296fWcIt4fugj7Bw=
X-Google-Smtp-Source: ABdhPJz9rqRji737ivUghrqzFXycVYcDmyKV5BXhRQHvkmQmsOZi5IkJYmQS7gIvAzb9hG43ivNAbw==
X-Received: by 2002:a17:902:854b:b029:e1:1d90:f299 with SMTP id
 d11-20020a170902854bb02900e11d90f299mr7130144plo.15.1611982182581; 
 Fri, 29 Jan 2021 20:49:42 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:a43c:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id z201sm5385249pfc.157.2021.01.29.20.49.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 20:49:41 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: 
Subject: [PATCH v2] staging: qlge/qlge_ethtool.c: Switch from strlcpy to
 strscpy
Date: Sat, 30 Jan 2021 10:18:28 +0530
Message-Id: <20210130044828.121248-1-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 memxor@gmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

strlcpy is marked as deprecated in Documentation/process/deprecated.rst,
and there is no functional difference when the caller expects truncation
(when not checking the return value). strscpy is relatively better as it
also avoids scanning the whole source string.

This silences the related checkpatch warnings from:
5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index a28f0254c..635d3338f 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -417,15 +417,15 @@ static void ql_get_drvinfo(struct net_device *ndev,
 {
 	struct ql_adapter *qdev = netdev_priv(ndev);
 
-	strlcpy(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->version, qlge_driver_version,
+	strscpy(drvinfo->driver, qlge_driver_name, sizeof(drvinfo->driver));
+	strscpy(drvinfo->version, qlge_driver_version,
 		sizeof(drvinfo->version));
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "v%d.%d.%d",
 		 (qdev->fw_rev_id & 0x00ff0000) >> 16,
 		 (qdev->fw_rev_id & 0x0000ff00) >> 8,
 		 (qdev->fw_rev_id & 0x000000ff));
-	strlcpy(drvinfo->bus_info, pci_name(qdev->pdev),
+	strscpy(drvinfo->bus_info, pci_name(qdev->pdev),
 		sizeof(drvinfo->bus_info));
 }
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
