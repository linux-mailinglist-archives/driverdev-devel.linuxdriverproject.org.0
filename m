Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 049822873B0
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 13:58:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8B6786CAC;
	Thu,  8 Oct 2020 11:58:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IXRONQ9cNywF; Thu,  8 Oct 2020 11:58:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0812C86C61;
	Thu,  8 Oct 2020 11:58:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E53301BF9B5
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE728871CC
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id naMX5xyO+RWZ for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 11:58:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7754587123
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 11:58:33 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id b26so3808758pff.3
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 04:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KQzCKemZS/RK2g3GQ9qxoMzKSIZg3RP0p33btHevshs=;
 b=ceqBsCnf9PxKBZZRJV18dvuuUVKgkIHBsg+3ZK5fULT6K0gDyopsAgvBDPcusREsHA
 KJMT5k2DLduQ9uWfxdP+VWcGvZcsSjK3vy//E9bmx0Uuno0DA6CIyJgJz5VD+rYolf12
 KV5cwWFPYhDZ/6/TgrrXlqQWKZDImd//ox8+TAA3RsdIXpkGQKNo/jtTDb1XxvYu9qGh
 mmZjwxhGfNu+bLR7G5j0wleTkpneESiabQdBbYthFQ1kQOGPuWxU/2/5PPmPr/i4X3cz
 OOiuSHT4f7yyejbl+mQ5fqDl+NIeH19c6sQNBfU7+28/O6Zktr8Z2Ls0Y46/JUQj1+Gf
 QLZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KQzCKemZS/RK2g3GQ9qxoMzKSIZg3RP0p33btHevshs=;
 b=NjI1PV2K9lbeWIYKmTA043JrrMm5XZDxSso8c7nlfU9ZwxR5a65KCORXpac2cKbwAA
 88bSHXJ1h8r0Vgz4o7nrjW7PewWmNkWF93sR9M1G73aDubB5+GwoeoQLhjthr5ZTwWUY
 us7QjPAJ/0W9QzUBl6d0a0vDCpg37xFkf/qyq4Roo4bCVqaqNAqrDQpUoOD/Zzzlv9Ju
 Nyt19LYYEoLOsp1lH6VV4XJPpjTX2k4+qqU7/tuRkLjbsKVSCy0juGja0Ebr6ohdmWsl
 ramBJncBtqEO8vq0R4eA6UZLgVCrPjxI8POviuFWTbPqQHzncuabVxd5Orc+cN41W210
 K43A==
X-Gm-Message-State: AOAM5301gXDakFVP/5rhZAnMhX6tly1Qy10i84/NlMo5AF15mBovM9xD
 uMVNJh/ojD3BRG2v27HSTwjZPH68SS7qGA==
X-Google-Smtp-Source: ABdhPJxAkUUxk6Bx5wTttze7DKUa4yHhg0poALtcyr+CH1TpoqzNICh0YqiD39MBSldIMWMhyOedXA==
X-Received: by 2002:a62:7a53:0:b029:152:5482:8935 with SMTP id
 v80-20020a627a530000b029015254828935mr7409775pfc.31.1602158312899; 
 Thu, 08 Oct 2020 04:58:32 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a1sm6676712pjh.2.2020.10.08.04.58.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 04:58:32 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v1 3/6] staging: qlge: support force_coredump option for
 devlink health dump
Date: Thu,  8 Oct 2020 19:58:05 +0800
Message-Id: <20201008115808.91850-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201008115808.91850-1-coiby.xu@gmail.com>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
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
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With force_coredump module paramter set, devlink health dump will reset
the MPI RISC first which takes 5 secs to be finished.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_devlink.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
index 91b6600b94a9..54257468bc7f 100644
--- a/drivers/staging/qlge/qlge_devlink.c
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -56,10 +56,17 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
 	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);
 	struct ql_adapter *qdev = dev->qdev;
 	struct ql_mpi_coredump *dump;
+	wait_queue_head_t wait;
 
 	if (!netif_running(qdev->ndev))
 		return 0;
 
+	if (test_bit(QL_FRC_COREDUMP, &qdev->flags)) {
+		ql_queue_fw_error(qdev);
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
