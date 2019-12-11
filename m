Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E748011BB5F
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 78DC723420;
	Wed, 11 Dec 2019 18:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O5wdB4pRXZka; Wed, 11 Dec 2019 18:16:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F75320480;
	Wed, 11 Dec 2019 18:16:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 221AE1BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF67287F30
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5dx69a1narlC for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com
 [209.85.219.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C12C87F35
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:34 +0000 (UTC)
Received: by mail-yb1-f195.google.com with SMTP id k17so9405335ybp.1
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QVBn4iyxCFtZQ6l2ifso8EO7BmmbJ8gqwzlkKDMZ+b0=;
 b=pQOBOLyJAOXdkAByxSpa45JZ8gIhUVoN88CzHwopEOntTivioJ271CvnarkR4INXqv
 ZDsSAVKlcB4fJIeJ5m1XLFDjI928mGOk9GCUEEI6FFNf+lOfu6fBfKb+Q9RvyjKlpUEI
 4ILsI66IDvBv8a8lcEjde5LzqkczsoI7AVDbCzaljPAUuWaDjAnVDmP5iEnmWrAH4EeI
 8t/Zi52AvcxBdLRuCsAeP/B5mLfjJv4Y4BWa2Asn2M1qx7dLalVQYpFaF5pJdgOM7Pn2
 0S2d6/1sYWYyNDxUZn4WG9+riUJ7tgpsNzOVFgnkJIC5nbnHhaRs9iFkdS/DZ+G/4+XC
 ez8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QVBn4iyxCFtZQ6l2ifso8EO7BmmbJ8gqwzlkKDMZ+b0=;
 b=Hlsvf3lTr2BuEnWZjWVZk+Ppj9b5p/ngpRLBArhuL2GDHzl8/Cv9bZvqiz7cDH+pZV
 xTKTWX84pQYgz8nSOlVgsDEfacud82B5FBsD8eGyIek4WayEsBVOQ3ijv7ziPnTwFkMx
 +wPGoNFdhrJUUYto8cl43yQYWKmR0tm2D0kp9Z7cLvbGjH31A/udyaBpTP5nSP/AQVYh
 TEBckUkN0QfPjlADcYAsuLdmGE3/adi3tHKQsnlTYcez/QLDi76a0fSJ6yjCfSeH8+rd
 ATAaBjap/rMXQ5djpr3nRanlafm6y3gxc2exidhkLvh9OM3fn90dJIF8Wa7sNnJL5iNg
 vRHA==
X-Gm-Message-State: APjAAAUmxtUUFdUHWRil2iR+MlKrAhjywbll5hPm3HkWVwQRpkhc4f1E
 rP8BrLAejIo0729Dg2VXREY=
X-Google-Smtp-Source: APXvYqzkgGwAWatyCrigitcbfKFcDI/TWYvwjodqhO70wwtdpa4DhxupOzAq7gSDAsprih7nCdhQAA==
X-Received: by 2002:a25:dd5:: with SMTP id 204mr999122ybn.452.1576088133641;
 Wed, 11 Dec 2019 10:15:33 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id d13sm1278930ywj.91.2019.12.11.10.15.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:33 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 19/23] staging: qlge: Fix WARNING: msleep < 20ms can sleep
 for up to 20ms
Date: Wed, 11 Dec 2019 12:12:48 -0600
Message-Id: <d71c273e9966f3afb5b24ef9787b44e402241dcb.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: msleep < 20ms can sleep for up to 20ms by changing msleep
to usleep_range() in qlge_dbg.c, qlge_ethtool.c, and  qlge_main.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c     | 2 +-
 drivers/staging/qlge/qlge_ethtool.c | 2 +-
 drivers/staging/qlge/qlge_main.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 0f1e1b62662d..ba801de02109 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -1340,7 +1340,7 @@ void ql_mpi_core_to_log(struct work_struct *work)
 		       tmp[i + 5],
 		       tmp[i + 6],
 		       tmp[i + 7]);
-		msleep(5);
+		usleep_range(5000, 6000);
 	}
 }
 
diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index b9e1e154d646..abed932c3694 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -555,7 +555,7 @@ static int ql_run_loopback_test(struct ql_adapter *qdev)
 		atomic_inc(&qdev->lb_count);
 	}
 	/* Give queue time to settle before testing results. */
-	msleep(2);
+	usleep_range(2000, 3000);
 	ql_clean_lb_rx_ring(&qdev->rx_ring[0], 128);
 	return atomic_read(&qdev->lb_count) ? -EIO : 0;
 }
diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index c6e26a757268..e18aa335c899 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3924,7 +3924,7 @@ static int qlge_close(struct net_device *ndev)
 	 * (Rarely happens, but possible.)
 	 */
 	while (!test_bit(QL_ADAPTER_UP, &qdev->flags))
-		msleep(1);
+		usleep_range(1000, 2000);
 
 	/* Make sure refill_work doesn't re-enable napi */
 	for (i = 0; i < qdev->rss_ring_count; i++)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
