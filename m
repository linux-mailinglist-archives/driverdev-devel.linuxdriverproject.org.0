Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718F63085FD
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 07:46:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A3668746B;
	Fri, 29 Jan 2021 06:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ok8A+KU7cctp; Fri, 29 Jan 2021 06:46:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9683187380;
	Fri, 29 Jan 2021 06:46:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC1111BF5B5
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 06:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A882486A86
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 06:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d+nGxRt-zLLa for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 06:46:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2278E86A6A
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 06:46:21 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id e9so5837429pjj.0
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 22:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j2nNsb+PpPp3IoJggkXhbnPAMjLO/Rz5D5nMjxNgA/4=;
 b=qxYacbX1M27vFIXSoWpMQjS+qOQm9ggyg0HAjoaz+oMYbCLS6crhJPL1Cs3wvW8Gl/
 wU+zwTjF9DVAj5m7nlj3TFtj8bqFZZz9jAtBlnUCUeKTehbNcuWNc269ykphmuco2z/H
 HSkbbwtkSd11rtL33Y7tuxxHzB9+Qfrs3jbf2di/RCbKMrrkTAE8uBcsvJxiTvyAGcjy
 Dkho3B+TkdV2ehDv8trR3fO+XXLCQbhl9h10LRNmkuY8NRdowqD+6uKDQy+BUFILlH7P
 DQw+MbwF9T2Sw+mKu3fw1NQA1CdV2HgeQrvM9URqh/Brzy5Ozxuu7Y23vfDSoGesJ3JZ
 d+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j2nNsb+PpPp3IoJggkXhbnPAMjLO/Rz5D5nMjxNgA/4=;
 b=m9gTbvlOXwOQ46V8cv9w2FHUUQEdoBfPQ+9HAvIbF+Qpse4JG2g33T91gIOYHit8x/
 Og9eZ6y4ziNj9tbrOg5vIK0wp3OiwLcDNfCTpHu+9zzwQEEPvJgmH0ENZBkV2ZIGMaAs
 oBWX3l0QmNSEJJf2S61o0VVVU9UlxyFlGg4FCZ+kXtF2UHMFphzZs+xWilgrh/CdH4I+
 f0iuv56D31u8mzHddM+dsbjvF+Q5xiG11Krj+Bsq6X/llnlY/PzwlLmLsrnmJC4d6Ctu
 ZcwsG7noHgdN+T6hXVNNGjo4uWRXM/ml2unhXy2eqabKD5V3r89Ex0J2nQVQ68AJuCzu
 rH1Q==
X-Gm-Message-State: AOAM531nqBI3SuWYuGpw+FWe5USFMWv65Tnm/FXUC6CDSfQzisdBIXLz
 E3QIMYTkgme+HenMNO7B+DI=
X-Google-Smtp-Source: ABdhPJxIZIiaTCvt7GbLlBexTSqnh+YWJoI1mr6tPMpc0UXtcJ9Rb8Lzy3tF6/RObPe+QanwFW/9bw==
X-Received: by 2002:a17:902:a383:b029:e0:10e6:6ed7 with SMTP id
 x3-20020a170902a383b02900e010e66ed7mr2871426pla.5.1611902780644; 
 Thu, 28 Jan 2021 22:46:20 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:bf74:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id z22sm7146921pfg.116.2021.01.28.22.46.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 22:46:20 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: 
Subject: [PATCH] staging: qlge/qlge_ethtool.c: strlcpy -> strscpy
Date: Fri, 29 Jan 2021 12:15:23 +0530
Message-Id: <20210129064522.97548-1-memxor@gmail.com>
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

Fixes checkpatch warnings for usage of strlcpy.

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
