Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B35C3345EC9
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:59:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BF8260835;
	Tue, 23 Mar 2021 12:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yYDomywLRKcW; Tue, 23 Mar 2021 12:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 678B360820;
	Tue, 23 Mar 2021 12:59:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D29161BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C1E19404BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tATAN3KYL0Ev for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 151C2404BD
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:31 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id w3so26933688ejc.4
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1EvpZd2FnLxsx+lWGO7RiIZtf6USM4O3+dzW0c58O1o=;
 b=M/+P+XShenwQFFcw1zlMmN01Dk3fvZvLzKqkK5ekLivuhPCGf7y7oMksvlpWfGQRGZ
 ya2i1l2N/sIteOQgwkDPN7GU0ShefFpIym4+DrNcgRmZCXFSLCFd8szBZzGn4jQb+DHb
 vx94kBfDR2DA4Zca+1Ym4vDD/jKShdXjEseuCrZMlO8HXEpcY2RwmFiVogkJS7YBtFwB
 QAzBWmPqnhQWOUT4USj3XLXtE1g/tQudaAX1ZQPEhAEHnqHbd/iqKw+hB/zl5b+eGAz5
 yEb+YFAW+RQfOOGtLKmRaXC5iNJbftci1NuQTVI3MkEzGC5W2H7FhEPMmZ3DD6NEnoG9
 wVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1EvpZd2FnLxsx+lWGO7RiIZtf6USM4O3+dzW0c58O1o=;
 b=KoUTpGUXYJXPXjkZPBo4Gp+M7btd+XQ3ugrgkAs34PshkFa5ajMT+2xFAjHYBhzhzY
 vk+a6gsMxGsDKHDvccoREZp/4Ov76kUeTg/MGVEs8Q3QkVQeoMbYWWuTmT4uRwmNx5Wr
 RzzWetIrhNhLB7MeKWk1VIotVu//ydMYXARUEZBEnlbJQHNt+jdQXw5G9FwGQ8ritxvp
 vCEQdqyhfXpP/Mib9oleJJVqV5Cxx3kAmWxFf2CXFpuj75PWvNQQKW3ERBPjLRCd2HFJ
 ST8IKKIINOq63O9MuXK3HPJinJoe/NZw0T9sLYt1gX5gGDWIOw2lsjVLWV0qO4egPjoZ
 lJag==
X-Gm-Message-State: AOAM530CSecCqW3+pwOWF5145nymt08+x56JtfhMLOyAmpE09x+McWJL
 fQiw5GDUjKNiMXHCJZMXqYU=
X-Google-Smtp-Source: ABdhPJxRS+OmG/cVq/1NjtqzXYc1B4kQbHm7cxAjvlMsgBbNUXSQW87vE+0zfDN/VdLBTQYAs1Ppgw==
X-Received: by 2002:a17:907:971a:: with SMTP id
 jg26mr4917755ejc.317.1616504309328; 
 Tue, 23 Mar 2021 05:58:29 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id a2sm11090334ejy.108.2021.03.23.05.58.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:29 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 8/9] staging: rtl8723bs: remove unnecessary extern in
 os_dep/sdio_intf.c
Date: Tue, 23 Mar 2021 13:56:35 +0100
Message-Id: <f3a7b2c00221aa09ed782fb30ce55936f443a12d.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove unnecessary extern.

The function is defined static in os_dep/os_intfs.c and used only once
in the same file

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 185919b6963f..156ad91d33ee 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -482,8 +482,6 @@ static void rtw_dev_remove(struct sdio_func *func)
 	RT_TRACE(_module_hci_intfs_c_, _drv_notice_, ("-rtw_dev_remove\n"));
 }
 
-extern int pm_netdev_open(struct net_device *pnetdev, u8 bnormal);
-
 static int rtw_sdio_suspend(struct device *dev)
 {
 	struct sdio_func *func = dev_to_sdio_func(dev);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
