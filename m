Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D547B3014A8
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Jan 2021 11:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F034D2E130;
	Sat, 23 Jan 2021 10:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iz4AsMzIG8Sa; Sat, 23 Jan 2021 10:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7602E2E14A;
	Sat, 23 Jan 2021 10:47:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0C891BF3BE
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB9B7872ED
 for <devel@linuxdriverproject.org>; Sat, 23 Jan 2021 10:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqHqfgfXvSF5 for <devel@linuxdriverproject.org>;
 Sat, 23 Jan 2021 10:47:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2DEF5872E1
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 10:47:02 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id m5so5461607pjv.5
 for <devel@driverdev.osuosl.org>; Sat, 23 Jan 2021 02:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GfTNa5bwFQCNMV4FpKX6IjAm7o6KaTkwbSExiVZKe64=;
 b=hOEc0L13E1k80oI2SDLn4Dmi+U9Cg58TC4Sb7mhhiNjpVAnUNMj1a9VpxpfMiOLGR/
 QN1AAxyaDN3B/bB1B567wEttjIF+oo7+j81C0EjEySr9H5/Ph6EPopeK1ug3ldLs6iDa
 NQ3kTgwNupC2clrWkEXBH2/MI+IqEcHpdBcQlztBllrR26Pzd0lYjZVXCDrsc2qUrR3I
 hGRatA3Ru0ae7Q+d8G5xRdi+jEce+05MGXZkmPAh6z1M1b3MB2Lb0mbP9cv/AcykbagX
 zFYMkf+a8eqIH57pBeqwZYZyr9NNzapW+5GOA5efSz5sRn+yJxhxJkRadCyK6RM2tMYA
 y5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GfTNa5bwFQCNMV4FpKX6IjAm7o6KaTkwbSExiVZKe64=;
 b=D3E/s9Qd4GHVmM+cQGfWP2uyMlE3cRI1e3kY0DK4A2+vnT+KDPFAxwq5tgisNtbe3y
 zjWH4B8K6cfaSuqoyK4vUZT85pstXWtiQ3TM1uIHhdNd3HsMz10blC/AucJWNf+eWPyW
 CtDNe+iA3LxbOKuNOyILRkZPs5LZQ1x+YRkWJHgguUjErz0Zv38n4yg5tCPXpZMbAc/k
 7nnHtiM3CtGjZZKz2C6ob1eG+suYtCUtnA3xv1YiKTD/dQaOcRh3g7iXLQHDfgHzF11n
 fRP1vKrXWL9UY3rxnp1U7I6dckxMvSFJ7WHwICnU1G7EMhK3GAroEVgsIHgZA3QvSUCt
 Ebnw==
X-Gm-Message-State: AOAM531XlVcTP3M6iPuhDG+44uxc9zpFClRjdOMhhF9c9qOFMy31UudI
 dQJHX0bSoTivw5CjcfjMmywEl9jG1ZieD0xw
X-Google-Smtp-Source: ABdhPJxqxkcJh2DkL0rpJVZIrP6cBGPsc0DW1bEgJ9Qyr9pOZghnV/h2M0YjxSZ7tXJs4H5ZosegNA==
X-Received: by 2002:a17:90a:4a0e:: with SMTP id
 e14mr4620600pjh.200.1611398821647; 
 Sat, 23 Jan 2021 02:47:01 -0800 (PST)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id i9sm1360134pfo.146.2021.01.23.02.47.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Jan 2021 02:47:01 -0800 (PST)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v4 5/8] staging: qlge: support force_coredump option for
 devlink health dump
Date: Sat, 23 Jan 2021 18:46:10 +0800
Message-Id: <20210123104613.38359-6-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210123104613.38359-1-coiby.xu@gmail.com>
References: <20210123104613.38359-1-coiby.xu@gmail.com>
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With force_coredump module parameter set, devlink health dump will
reset the MPI RISC first which takes 5 secs to be finished.

Note that only NIC function that owns the firmware can do the
force_dumping. Otherwise devlink will receive an EPERM error.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_devlink.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
index bf7d75ed5eae..c6ef5163e241 100644
--- a/drivers/staging/qlge/qlge_devlink.c
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -56,10 +56,23 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
 
 	struct qlge_adapter *qdev = devlink_health_reporter_priv(reporter);
 	struct qlge_mpi_coredump *dump;
+	wait_queue_head_t wait;
 
 	if (!netif_running(qdev->ndev))
 		return 0;
 
+	if (test_bit(QL_FRC_COREDUMP, &qdev->flags)) {
+		if (qlge_own_firmware(qdev)) {
+			qlge_queue_fw_error(qdev);
+			init_waitqueue_head(&wait);
+			wait_event_timeout(wait, 0, 5 * HZ);
+		} else {
+			netif_err(qdev, ifup, qdev->ndev,
+				  "Force Coredump failed because this NIC function doesn't own the firmware\n");
+			return -EPERM;
+		}
+	}
+
 	dump = kvmalloc(sizeof(*dump), GFP_KERNEL);
 	if (!dump)
 		return -ENOMEM;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
