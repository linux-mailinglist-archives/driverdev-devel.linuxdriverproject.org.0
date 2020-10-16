Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2402904BD
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 14:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEA9988C81;
	Fri, 16 Oct 2020 12:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MmZ05wkFdqrz; Fri, 16 Oct 2020 12:07:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 855D088BBD;
	Fri, 16 Oct 2020 12:07:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F19441BF3A4
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 12:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ECE1E88BBD
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 12:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZfHkaDaCsbm1 for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 12:07:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C10C88473
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 12:07:40 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id w21so1384388pfc.7
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 05:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k9YX9rQZlgFAfivrs5grc+B9grYX9g3LqejLDIU/3NE=;
 b=UBZlJQcLl8KIAaleSLUZoq9dzHobnVdKwnlUnrvqBAXZFd6tgbqaaeYXV3OfuVp49y
 W4ivySVoE6TeNC0vKGUQXVG4HzLGUrlkCYtsm3ejmB//882+6+B4mNRr3zfwv+mvte+B
 H7agIxT6E3KY0l/KoReAkBoU/tScGCY71NN+zaqm2HZWvR0aA8ohVzFPfQBRQH3bZh4c
 hLSueNFeS0htFAMZkgkmSnMIpumV5SVrq+xkakEbPhcT94pv86BoAAuDi/5Rd27+HsqE
 wK6OOgLhc24+C3+dnwpKMUP3pkuZkpZOUsCGM6P4Eu8l/vZwy7UnuzBs5JGbJvqmZkUE
 sYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k9YX9rQZlgFAfivrs5grc+B9grYX9g3LqejLDIU/3NE=;
 b=ccdPCtCnWSbu+OOVNrMJaKtghnRpgCUHgDYvAshg8Qs4uJQGwtrGk8koc0y3FKOD/K
 aeK7U/zBNQYcMtkFj6lu8sPARXN245fvUpzZRdrUjsGTnP+GWTPx/iFQq/ZdySUTN6Iw
 CvvWYqV/XxG5zGSO5PTX8+WMx3RtXtZ7aX/Me1vNRmWGFx99V249KcAzzifl2aWGba1B
 KAZZ3RAoMPS2Xv0dFk3/+LZLk6Ew0zupHP5hzHKX8RtUqLq8Y9w5B4Dv5S98nwShVThC
 Whl+EWT4+eZRDSAK7SmPDyUfzo+S7y4X7X4PtwfL7e+vdJ8ElZJuF4cT+zJR0X0JUZ34
 w6cA==
X-Gm-Message-State: AOAM530kYY0SaFbHQm5d/joNOZWFh38BRKhX6xrPlixSzQSkObgKqs26
 JE6Q021IMx96sWJGZNQgos/uYKUE7wzcUirI
X-Google-Smtp-Source: ABdhPJyKcUGNc0tmqSEhPxCwTLLLobMo8LJCPW/z+CN9zqvSxG4H64w64PWRhtVQo+p1ewLPIFrkXQ==
X-Received: by 2002:a63:a505:: with SMTP id n5mr2744545pgf.71.1602850059671;
 Fri, 16 Oct 2020 05:07:39 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id z20sm2721045pfk.199.2020.10.16.05.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 05:07:39 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v3 5/8] staging: qlge: support force_coredump option for
 devlink health dump
Date: Fri, 16 Oct 2020 19:54:04 +0800
Message-Id: <20201016115407.170821-6-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016115407.170821-1-coiby.xu@gmail.com>
References: <20201016115407.170821-1-coiby.xu@gmail.com>
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
