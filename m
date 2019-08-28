Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E9DA0226
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 14:48:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EAA486DB4;
	Wed, 28 Aug 2019 12:48:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w2WJkTFl4hb0; Wed, 28 Aug 2019 12:48:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBF2886CE5;
	Wed, 28 Aug 2019 12:48:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2A191BF37B
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 12:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF6C1203AE
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 12:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GOCWy0L0RSl2 for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 12:48:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B704203AA
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 12:48:33 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id j11so1563000wrp.11
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 05:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ia9iMFD1fTVwn2oj5I4kJieRatgJPanbvk8YGMBpinc=;
 b=G5KpfA5x9uGU3APuwdF1Cf4VLlEZwXd5htrl+vi70a5nA7Zyx0gaCs6u21zvYnk9MR
 Y45jcKT0q4dVhzrNb1g903lusnOw47ETIG2ORu6lFqkdDvsxeqglppHuTaseC69yzaSp
 n195uBHLBZbZDN/6wYbnt+KJK0tQ2mFUCJ6ObBLO6QECeG6dErDYh93qTsnL6KkXeRby
 Y7l65hvAPW1qoeaf1ZR49xTM9sVJP0PlMY5N2wFiNCXjF5ElgHAqZ1zv00XEgkqnGxvR
 HNCM7BoOqfUOw6SDfHt0oTG8/v7K76ViRh5NroB7jPUfGA4YCE3EEgjXCKSKI9Nmhcjc
 QBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ia9iMFD1fTVwn2oj5I4kJieRatgJPanbvk8YGMBpinc=;
 b=P5JA05LmA2WooBpta0FOHPhNiYBTXKKgH5RDCY9xyr04Nn2Kvrk0Bv08RY7hElp7Fq
 z65fP2PykZO/5UL3h1cve1AWAIq5sTiiT+zuGoxS/VB8J+uF/hAs1X//ZCVGjS5gPg7G
 Q8Utnpk9c04zVus81/jLPw8rLjEo7gFt2fmuLUjZY4yTazxhYEF6yL3FMDpHQ0e9k+XT
 eeWhZ8JvRzAlHrg9TWl+Kx+Xq3O+Dt2iDu3EB4VZ8bAX9//T8YC6nJu/AsIpyId/q2WA
 hbHtzmRLp/9zZeJJM8F3DBI/arSq8KYP8kfzkhShvxiRhdOTQVZAHhYeoSU9RjwTQ+uL
 Weew==
X-Gm-Message-State: APjAAAWv2MHGjbL3sk7yPX13enFOJ0jy6x4TNlaK/qKKakoOySLT2ZEh
 VfHqypVdbj4uyIFUvQBQ4Icbpw==
X-Google-Smtp-Source: APXvYqzIR/lq+0DMAO/MG3yy+ybae6xSzeQ1IkcRI+aJa4qWtO/P6R8Wnyy/p7kjt4FbGbABclhJoQ==
X-Received: by 2002:adf:f3d1:: with SMTP id g17mr4503314wrp.38.1566996511497; 
 Wed, 28 Aug 2019 05:48:31 -0700 (PDT)
Received: from arch-late.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id g65sm2420551wma.21.2019.08.28.05.48.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 05:48:30 -0700 (PDT)
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: greybus: fix more header declarations
Date: Wed, 28 Aug 2019 13:48:25 +0100
Message-Id: <20190828124825.20800-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.22.1
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Rui Miguel Silva <rui.silva@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

More headers needed to be fixed when moving greybus out of staging and
enabling the COMPILE_TEST option.

Add forward declarations for the needed structures.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
v1->v2:
Johan Hovold:
  - use forward declarations instead including all headers

 include/linux/greybus/operation.h | 2 +-
 include/linux/greybus/svc.h       | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/linux/greybus/operation.h b/include/linux/greybus/operation.h
index 8ca864bba23e..cb8e4ef45222 100644
--- a/include/linux/greybus/operation.h
+++ b/include/linux/greybus/operation.h
@@ -15,7 +15,7 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 
-
+struct gb_host_device;
 struct gb_operation;
 
 /* The default amount of time a request is given to complete */
diff --git a/include/linux/greybus/svc.h b/include/linux/greybus/svc.h
index 507f8bd4e4c8..5afaf5f06856 100644
--- a/include/linux/greybus/svc.h
+++ b/include/linux/greybus/svc.h
@@ -12,6 +12,8 @@
 #include <linux/types.h>
 #include <linux/device.h>
 
+struct gb_svc_l2_timer_cfg;
+
 #define GB_SVC_CPORT_FLAG_E2EFC		BIT(0)
 #define GB_SVC_CPORT_FLAG_CSD_N		BIT(1)
 #define GB_SVC_CPORT_FLAG_CSV_N		BIT(2)
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
