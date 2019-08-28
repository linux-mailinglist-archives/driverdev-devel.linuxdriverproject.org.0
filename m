Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5229FFDB
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 12:29:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F013588A93;
	Wed, 28 Aug 2019 10:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gjzGoBrb1Kw; Wed, 28 Aug 2019 10:29:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D1A488A4E;
	Wed, 28 Aug 2019 10:29:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFB4C1BF3D2
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 10:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CCE60228BA
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 10:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNxVe5ArmDMB for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 10:29:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id CA08B20521
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 10:29:12 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id p13so2046772wmh.1
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 03:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=npkI1OD2Sve7UGLUZ8V5TZogm8n/oSbOkDkQq+5XyUs=;
 b=EnlfZvL49jX+dAfBBEIqUxpeE9TAumZyn9dngFKTTYdCWkmoCurCfCeIbatWrAo/tr
 /1zzj6Qx10+2Vyt4hgKkU4b+u9AXOsowRR4Q/MPX43kiYI2MRUPvygQwZC/UpOZP36J+
 buHFlx9VvvidsThAlgulfcF3aGKMr0XR5arnqkQ2cFnzH7ZI4YhNuEAJJL811CrziVds
 XccySESmzugIQapsScXinUhUkfQUXYP7UHmRV5P2AkzSKB+iph7166fmosd5y3/UWbNf
 BLFqGzVGD9bjYZUSlHL+qtMQDtgdQnibsEtaenBPsvFZKvUDf7rK6l7eVpM221f90YqB
 q5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=npkI1OD2Sve7UGLUZ8V5TZogm8n/oSbOkDkQq+5XyUs=;
 b=RUTBUPB9Zq1kl5P2vZWlKOYRBkz0r6+zPwqO6Gmlq3z9lGnhlLFci1wQEFzG/Lx7Sz
 iJ0Cg8kQAFXTbu94/GIU3bwv7+rhYduoFVFhBh7b7MFHOZ89KyaqXzWrJS6/l6ELVh9x
 SiE5Vg4AKHqqd5GUnotE38Nnv1YqDBb3Vfv2uEaic5UoQNm0/5lOjcwdJLeEJyZiORQs
 IKWo35gMXGNbahgfj0AS5/wtX38XEaPUPMFa/JSD7MjG1j0OCmLDlNKWWsShUB09Yeyo
 fDzMCSffLKx/ZsidR0sgnyfiCH74OHFp355fzklFiUE/EjKjrKoLQ2lZdRNbdB45a2Hx
 RXAQ==
X-Gm-Message-State: APjAAAWpmtN90qTA6awfva6bdZgnroowU6zBbxPNzDfFpp4iEDfRZlY5
 cUGpEsm/iSPbfk7paRddWTfg5A==
X-Google-Smtp-Source: APXvYqwCC6KHYz8mPlSFrOrE7HOaT5hgKDwpXhhDrUvtAcgidpstTTnKWzkAKMUyfdjvhxIgkvWSzA==
X-Received: by 2002:a1c:356:: with SMTP id 83mr4128366wmd.40.1566988151072;
 Wed, 28 Aug 2019 03:29:11 -0700 (PDT)
Received: from arch-late.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o14sm2982629wrg.64.2019.08.28.03.29.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 03:29:10 -0700 (PDT)
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: fix more header includes
Date: Wed, 28 Aug 2019 11:28:59 +0100
Message-Id: <20190828102859.13180-1-rui.silva@linaro.org>
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

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 include/linux/greybus/operation.h | 1 +
 include/linux/greybus/svc.h       | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/include/linux/greybus/operation.h b/include/linux/greybus/operation.h
index 8ca864bba23e..bfbc56d8d863 100644
--- a/include/linux/greybus/operation.h
+++ b/include/linux/greybus/operation.h
@@ -15,6 +15,7 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 
+#include "hd.h"
 
 struct gb_operation;
 
diff --git a/include/linux/greybus/svc.h b/include/linux/greybus/svc.h
index 507f8bd4e4c8..11a86504c429 100644
--- a/include/linux/greybus/svc.h
+++ b/include/linux/greybus/svc.h
@@ -12,6 +12,8 @@
 #include <linux/types.h>
 #include <linux/device.h>
 
+#include "greybus_protocols.h"
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
