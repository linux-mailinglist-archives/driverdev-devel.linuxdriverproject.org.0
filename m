Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C4220C0A0
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 12:15:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2EB1C2153E;
	Sat, 27 Jun 2020 10:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lp4o1EoMtZ8z; Sat, 27 Jun 2020 10:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72BA1204F9;
	Sat, 27 Jun 2020 10:15:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 589B11BF405
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 439E2204F9
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8MqvvtG92eo for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 10:15:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 069D0204C6
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 10:15:09 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id t11so901724pfq.11
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 03:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0qR0RG0BShcuybjPoqzOObs/AZ3mMbOHHFDCi+AG9hU=;
 b=Ev+JM43d0G4kdO8kGj3ENv21tA2iXVDg860b1ybAD1cCfqHXZqXFOpJ4D22SJYVruq
 g/fhyavk5K7Av/94jSXC334Uhjn2gmHNFPZqcwSJYzDFBKcB0HGojpVbRRZTpiF+Ptl2
 nrJjNmOFhA2eKyymiBqvcB8nA62eSplMMjZPyNaZDwgiMjw9mgvmoO1q2vsW3DiFNzKb
 oOvuqnSkZ3zus+PMTLICx9Mk03j0j7nLGNyVAqINy5SAzJZrld/qw+oAdK/5oU3sEcMn
 Z/wv/RUnLl+Yj+ES96LBIQSeSTub+oF5JtSpCx9y6Ln7ZCA1EeRMQQbk5WIXyD2yuYFx
 hV5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0qR0RG0BShcuybjPoqzOObs/AZ3mMbOHHFDCi+AG9hU=;
 b=lH91aKf/TluN0+7n5PUnJTMU3tRXSH8WI2cFjcA7XdTqPjJPsZhkdCCO1CHCbXXX7p
 8PFNzJLCO6nV6s274C23t3G/4ZL/pSRgNg7Rbn8kVHnne7ZXm3iWtV0m2ckMx1Dx5IQg
 l8ykQSh1Z7mKa5d9cavGnCEskLri/afFdsWXZMQ5LAbwwKCopZJLqigJnsghkwc1jGo0
 ZaiN7JtZE0NN5omwXsjKm38/fR9sgc9LnbQBTCkoNR4/mrT8jygPcGsI/p8boIh7g84y
 Yl/akEOdjgjEER836Gk3Cr+ow+o0CxsBancHjBxZmzI1BpcTNt7woos7UTtILO0bFJT8
 FAgw==
X-Gm-Message-State: AOAM53078GSXiUFxIxyZL0jtFg6N3eIau8Bh0ddkzYOlOrayVy1e0mHb
 OXwvU1sel+gHmhaC/Kg796taQkZ7I80ArA==
X-Google-Smtp-Source: ABdhPJwxd/MX993W08orF88EtVjv0w325D4ncrT/QVnFsjOuAaruieh18whLktBHBU/EGxmNuiLmUA==
X-Received: by 2002:a62:445:: with SMTP id 66mr6270438pfe.186.1593252909237;
 Sat, 27 Jun 2020 03:15:09 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id j16sm18782577pgb.33.2020.06.27.03.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 03:15:08 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 3/4] fix ql_sem_unlock
Date: Sat, 27 Jun 2020 18:14:46 +0800
Message-Id: <20200627101447.167370-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200627101447.167370-1-coiby.xu@gmail.com>
References: <20200627101447.167370-1-coiby.xu@gmail.com>
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
Cc: "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some functions return without releasing the lock. Replace return with
break.

Suggested-by Dan Carpenter <dan.carpenter@oracle.com>.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 87433510a224..63e965966ced 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1390,7 +1390,7 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
 		if (ql_get_mac_addr_reg(qdev, MAC_ADDR_TYPE_CAM_MAC, i, value)) {
 			pr_err("%s: Failed read of mac index register\n",
 			       __func__);
-			return;
+			break;
 		}
 		if (value[0])
 			pr_err("%s: CAM index %d CAM Lookup Lower = 0x%.08x:%.08x, Output = 0x%.08x\n",
@@ -1402,7 +1402,7 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
 		    (qdev, MAC_ADDR_TYPE_MULTI_MAC, i, value)) {
 			pr_err("%s: Failed read of mac index register\n",
 			       __func__);
-			return;
+			break;
 		}
 		if (value[0])
 			pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
@@ -1424,7 +1424,7 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
 		if (ql_get_routing_reg(qdev, i, &value)) {
 			pr_err("%s: Failed read of routing index register\n",
 			       __func__);
-			return;
+			break;
 		}
 		if (value)
 			pr_err("%s: Routing Mask %d = 0x%.08x\n",
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
