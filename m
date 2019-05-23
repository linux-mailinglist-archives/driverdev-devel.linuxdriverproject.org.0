Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC6E27C98
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 14:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB822879F1;
	Thu, 23 May 2019 12:19:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mioqSx5x+ji6; Thu, 23 May 2019 12:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D060F879A3;
	Thu, 23 May 2019 12:19:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 010DF1BF3D7
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED07A227C4
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 12:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRH2NC9hDl3j for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 12:19:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 687842155E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 12:19:53 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o11so2866655pgm.13
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 05:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cb/Evthlm75QkClOwhS3DWYfXuweyGfVXTHPr+sRNR8=;
 b=gAft9RUQUH1U541JS+8Vlts7xBrE6Mxsw8lHvjaO0WozSFXP1jVZZgGZ4kM2+ff9cs
 b+rx0CG0KGqP7boLxGpppCVpT253cCIOsxfYc6VO/cQThkwK8ViaFRcM5pOPp525h7kB
 UMrqowGmWRBMc26a+90dRgLoAToHMalkiooZ704AzK8D9bnenBiafH0/TYoMYn8fpgMY
 otTG/+z+LvxlVqR89/L77eveP/8hia+bReTaUKn7Neju0T9HM0WkxmvlRsHfqhMFObzr
 Wp4l2/rvUDRfRRe7JwKhEeMzhqaJXcqroBuWScv2pKaEIoP8wYFrFhomilNWvrxWb62w
 0T9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cb/Evthlm75QkClOwhS3DWYfXuweyGfVXTHPr+sRNR8=;
 b=qDx/VLjJOi3OIS0ITCCSfzLknDZj2YavBd7i1dlVwC2wIrrpE+gbQHiwYO9BYo9Wco
 GRa8KfwN+33MVdNz75h0B6KbwEihKkXehInFCzSIYVvkfxvGuZJ1iAEKE5GezEgIcaYP
 MSVhYc1pxwoRSXaJ5RsbGjPR3Vf5Wvewidxr8eTN7/mvBL2VX8ScziSDWm+vBuEKHRwf
 NqNXVmwyAx1GtrFaWyQlcqiOtPXjbdbNKW3QRteg9OT6yUEupwRkSyd1y0KaWv29Y58o
 +LzLRWSJ3aQufawsYvkqcmpCJY+aeT9//3crb8a58oAysSQJCi2t4otVndKsN2T/92Vn
 hOMw==
X-Gm-Message-State: APjAAAV/nStpJZRzyWCfY63L36yPModhTm2E56QxqTfCTTDXz6t+/R3H
 PoxC8e7/f1yJ9gxuE4h8ljU=
X-Google-Smtp-Source: APXvYqy3XwtF8Pw2WhJvGmrAy7A1gCCNClAZk01i29xaDo+Efcqv/6npvbl8ZP3bm2Aq4/r3XGWTFQ==
X-Received: by 2002:aa7:82cd:: with SMTP id
 f13mr103258059pfn.203.1558613993167; 
 Thu, 23 May 2019 05:19:53 -0700 (PDT)
Received: from localhost.localdomain ([122.163.94.48])
 by smtp.gmail.com with ESMTPSA id c185sm32443314pfc.64.2019.05.23.05.19.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:19:52 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, straube.linux@gmail.com, realwakka@gmail.com,
 hle@owl.eu.com, rico.schrage@gmail.com, sophie.matter@web.de,
 jbi.octave@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: pi433: Remove unnecessary return variable
Date: Thu, 23 May 2019 17:49:27 +0530
Message-Id: <20190523121927.28806-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>

The variable retval is initialised to 0 and assigned a constant value
later. Both of these can be returned separately, hence retval can be
removed.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/pi433/pi433_if.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index c889f0bdf424..40c6f4e7632f 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -871,7 +871,6 @@ pi433_write(struct file *filp, const char __user *buf,
 static long
 pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 {
-	int			retval = 0;
 	struct pi433_instance	*instance;
 	struct pi433_device	*device;
 	struct pi433_tx_cfg	tx_cfg;
@@ -923,10 +922,10 @@ pi433_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		mutex_unlock(&device->rx_lock);
 		break;
 	default:
-		retval = -EINVAL;
+		return -EINVAL;
 	}
 
-	return retval;
+	return 0;
 }
 
 #ifdef CONFIG_COMPAT
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
