Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 417C826D1DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 05:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF2552E12D;
	Thu, 17 Sep 2020 03:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHo9-jTGYKgO; Thu, 17 Sep 2020 03:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E4E612E0FD;
	Thu, 17 Sep 2020 03:45:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7F2C1BF338
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 03:45:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E354E8758F
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 03:45:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJIpgTzGSVDB for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 03:45:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 405678758D
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 03:45:14 +0000 (UTC)
Received: by mail-pl1-f174.google.com with SMTP id c3so394644plz.5
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 20:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Mt7v/mKOwnDC4a9DbmIXnGMrq64vZ0ow2BI870oSvcc=;
 b=VMnw+nwkRS50Io9kAXzxH6MfUAtkpeBLXcpHx9of8xMTlsJj5Sd4eKcIoAbo9IIX6h
 Hh1+Sy5VEb0cLALoYnSsQTPOQFr3YmFJrolT9Ktv924qMKSigLIyATlxgohsifatau/g
 g/7zFXWkmUL+CbIOo7crGjRMWapFXQPxdO3imgnHtHJSVwHbJxxALyDaCLNwYmBv50fC
 1F+0HZ8iqBkSu3dpTk0f/HxQPQLU/lc4ScdzMGsX8ssaGdkIxsARRGJ/5le/SkiXhKWC
 HFPGtOEKpoCsO7sXJUFzOEwXllppkDzsfFLE38ZI71iltIZr9o2BdbkMKJ04SuzerOSC
 vTag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Mt7v/mKOwnDC4a9DbmIXnGMrq64vZ0ow2BI870oSvcc=;
 b=SjOBhhQTGx74rdS8lsTedNV3cYdpWlwdIhtKnPUMQ+rREToFMQnIqAmQXSN7eLJLEl
 G0q/2PguZaj8G2yxrK90F4iVWCAgDUKGDRwQ2juw9DrmLFUPwRfGLQ2/V4ykoZdamW3Y
 UPtU28lik7mv8vXGw7Amot9Nuvy17zREzYUFqynJWFwssoYNeZxmIVz4rXL3jjvkRaMf
 DixkTQkizGBjB+tiw/k/4BU4isQlUGsVlwNu8n6nL1/6XqgxltOE8ve0YOISzhzAr44l
 ZJYm1w02/F96ggW+1x51LOiawEZpmU9nwrsNvAYETypItbWwCrTw9yM55R8trr2AyxDb
 cJUg==
X-Gm-Message-State: AOAM532J0o0sI4khG3VPF6JTHFrJZDVuV3l/4wzLF6iVCwZA3tR+TPlv
 vZRR7+P4aForEYT88eDIykQ=
X-Google-Smtp-Source: ABdhPJwHADChbI607hnO01YTamNY0TBgJCkW5NZRTnx+5iKO89OWNLMCOd3fCnsPJOuvMBszWaeAAw==
X-Received: by 2002:a17:90a:a58d:: with SMTP id
 b13mr6735632pjq.49.1600314313817; 
 Wed, 16 Sep 2020 20:45:13 -0700 (PDT)
Received: from localhost.localdomain
 (ec2-13-52-163-24.us-west-1.compute.amazonaws.com. [13.52.163.24])
 by smtp.gmail.com with ESMTPSA id a4sm4093795pjh.17.2020.09.16.20.45.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Sep 2020 20:45:13 -0700 (PDT)
From: Xiaoliang Pang <dawning.pang@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v1] atomisp:pci/runtime/queue: modify the return error value
Date: Thu, 17 Sep 2020 11:44:51 +0800
Message-Id: <20200917034451.20897-1-dawning.pang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, tianjia.zhang@linux.alibaba.com,
 linux-kernel@vger.kernel.org, dawning.pang@gmail.com,
 alexander.deucher@amd.com, evan.quan@amd.com, christian.koenig@amd.com,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

modify the return error value is -EDOM

Fixes: 2cac05dee6e30("drm/amd/powerplay: add the hw manager for vega12 (v4)")
Cc: Evan Quan <evan.quan@amd.com>
Signed-off-by: Xiaoliang Pang <dawning.pang@gmail.com>
---
 .../staging/media/atomisp/pci/runtime/queue/src/queue_access.c  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
index fdca743c4ab7..424e7a15a389 100644
--- a/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
+++ b/drivers/staging/media/atomisp/pci/runtime/queue/src/queue_access.c
@@ -44,7 +44,7 @@ int ia_css_queue_load(
 				   the value as zero. This causes division by 0
 				   exception as the size is used in a modular
 				   division operation. */
-				return EDOM;
+				return -EDOM;
 			}
 		}
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
