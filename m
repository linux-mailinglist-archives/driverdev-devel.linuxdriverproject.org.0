Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C1B28DF44
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 12:44:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C60B2E430;
	Wed, 14 Oct 2020 10:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQv6HIhYKth2; Wed, 14 Oct 2020 10:44:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AE8482E282;
	Wed, 14 Oct 2020 10:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 933FD1BF575
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8968F2E490
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 10:43:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k+pQlqwgeGQK for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 10:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F0D92E274
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 10:43:37 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d6so1521939plo.13
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 03:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k9YX9rQZlgFAfivrs5grc+B9grYX9g3LqejLDIU/3NE=;
 b=nNzeEZfx4U63s4a3aMcwaBwgz9rq54PcoKizd7b+yAmy9zzPHqnMHBUXQCw7Fpzi5s
 u1+ULJIkTk1G2qciIbujRxiUL5aVmO+twyJ06OlN1HyGaYeTwdKrTFCOXk8evf2t/fV4
 ITMEAeG6Pf7atn9rLmNCgTYyATkQxTrN5y7NEBvgIjQPvpVLmRNztZncbjnYioczz/Ly
 e/XowHPwd7sCccGYGMuhmQepTjVZnDJPckpyLZOHx0N99J7TWScikJPoUNYliLRLZzhk
 AsL1+jD7Echb6Q4/V8IeAjOrP4q7o4xGMpb1u7xk4QF7Z+TAg++3DqriXrwa9c+rAKGg
 hmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k9YX9rQZlgFAfivrs5grc+B9grYX9g3LqejLDIU/3NE=;
 b=Ntn/Opz/j3ozTnXfKd+ZSEjIZloHlS5FJm1k03vC1Uy4ZRnnfYL720s2bmhQXmqpql
 pyxMDfTuTe4SoLoZjbD6D/smAt5irS65TM1jRVAhFs9G5keLENVnvCfuIMjvwBxPpGX5
 l8MB8HJzKsIqJRpH3yvhxaZ0sMoGeIWOmAvqTUIaTyx9JiRb//qCPt0edlowexJ4TaSW
 DqfvhLktDKqcOHmuU4hk9pEvdlHBe+2Xt/hD8LY7P+qmjkziEnUVE2daSW6scvOTBjlM
 a4mC5EK0LO+nW43RQ/ZlPdQRfAh8ttBFpwPjY9gnwmt5yEv6rNHI/LbpII5cPNTikAeu
 2y6w==
X-Gm-Message-State: AOAM5338S/t8xYS72U4LQymAh4CRY3/HH0LvCfOS8U0v0xTIZYqnPey4
 bVY7ZwEYS4MNixbcXjDLeCI6aVayXPLaUzYe
X-Google-Smtp-Source: ABdhPJzRhCPIvE3jJwwWVGdoAh5p7xUXUFQJKRU8+V2GHrmjmGUGK8ebA9Wbm+XZ7n5yj/7dlTumTg==
X-Received: by 2002:a17:902:a5c6:b029:d3:8dc1:5240 with SMTP id
 t6-20020a170902a5c6b02900d38dc15240mr3761125plq.16.1602672216661; 
 Wed, 14 Oct 2020 03:43:36 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id bj17sm2545488pjb.15.2020.10.14.03.43.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 03:43:36 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 4/7] staging: qlge: support force_coredump option for
 devlink health dump
Date: Wed, 14 Oct 2020 18:43:03 +0800
Message-Id: <20201014104306.63756-5-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014104306.63756-1-coiby.xu@gmail.com>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
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
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
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

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_devlink.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
index b75ec5bff26a..92db531ad5e0 100644
--- a/drivers/staging/qlge/qlge_devlink.c
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -56,10 +56,17 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
 
 	struct qlge_adapter *qdev = devlink_health_reporter_priv(reporter);
 	struct qlge_mpi_coredump *dump;
+	wait_queue_head_t wait;
 
 	if (!netif_running(qdev->ndev))
 		return 0;
 
+	if (test_bit(QL_FRC_COREDUMP, &qdev->flags)) {
+		qlge_queue_fw_error(qdev);
+		init_waitqueue_head(&wait);
+		wait_event_timeout(wait, 0, 5 * HZ);
+	}
+
 	dump = kvmalloc(sizeof(*dump), GFP_KERNEL);
 	if (!dump)
 		return -ENOMEM;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
