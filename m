Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9721619BA39
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 04:17:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 862CB87B8E;
	Thu,  2 Apr 2020 02:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vz2yz-dwbDbc; Thu,  2 Apr 2020 02:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00E0A87B48;
	Thu,  2 Apr 2020 02:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39B411BF3F4
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 02:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F561878AF
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 02:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wW8mZiXk5h+Z for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 02:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA492877B3
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 02:17:11 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id g20so1109204pgk.10
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 19:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EJrKI3sOaXRTv8Ad0U4S14lgWrsWnjsKnTjS+Kfpaeg=;
 b=S7DVZrtOCYLWFxSlZDxASKnuu6BLf21ZDe1ULQhiC5q0zG4NKGkp5yQDFHTBoKasDY
 8uJMxCSW/0QQAtzb2SPx6AL6kXD6tkLqnhuyx2XAeqMLd4LaYSNE386Y6tnYpD754WbU
 RNoRloJ3fdaIfilUPxvatcVvLAK4zMV+GMvu63+OLEjYlZtx1JQhbfz8AL+T5rnNoXgN
 W7t0BAqzKKJv8uPLbcoCvw1GMVGtvupji5eXEMvJnN/QL4ypFJRHvPe4b7ZquT5ICZgQ
 50TRT05Z96IrORh8EzyKlgB8is83nqJY66ACg/C3b/WQugXvVSBWBDAAQycSEIVfVFXk
 tYFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EJrKI3sOaXRTv8Ad0U4S14lgWrsWnjsKnTjS+Kfpaeg=;
 b=tUI1WZygsph1d+gy1fgXzk/NAZ4qCCFT8jgRYm6owPVVypmRXrAAwiZkB7L+1hN4f1
 n9AzKFDDMV3dBrnTMs+Jh32LCeKxqK/6K0kUyRv/TocCXlflKPXTArhxsPHqkfeACJOB
 Jd+ZFgFni8ojUS6u1c+9c5oX5Dz+QHCyn9ctn9wrBnlKsORe9vACD6S/NArMBh75HziB
 QczCaQkfHpR7CNBZSHqtGyjgr2lu98Yn9SyhZy3fo+sVJqYyEBoXlTRviaqkf/3w7vQU
 IBOq3O29oovd9IOYduSpZDhteQhhefPySp7eUQ5L9GKrP0WAuhwvK8d11BJFOEUwBtkT
 AeMQ==
X-Gm-Message-State: AGi0PuZNnLIkwpjpsrLcgw2inwBybEuaQk3zDDbIltAehYJ7YT/u/hRj
 fDewrvZDGsfC5iv4Kh3yH2U=
X-Google-Smtp-Source: APiQypJtzG1x7/tlvsBjnXDIXaqdyRaDJ+l/Lb06RbRnLFxkBZmjQuOMnPH6KfKA/dY3vGnuvu2YSA==
X-Received: by 2002:a63:e558:: with SMTP id z24mr1154919pgj.368.1585793831273; 
 Wed, 01 Apr 2020 19:17:11 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id c1sm2595336pje.24.2020.04.01.19.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 19:17:10 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: emxx_udc: Remove unused code
Date: Wed,  1 Apr 2020 19:17:06 -0700
Message-Id: <20200402021706.788533-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused code surrounded by an #if 0 block.

Code has not been altered since 2014 as reported by git blame.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 9c2671cb32f7..bbfebe331033 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -9,12 +9,6 @@
 #define _LINUX_EMXX_H
 
 /*---------------------------------------------------------------------------*/
-/*----------------- Default undef */
-#if 0
-#define DEBUG
-#define UDC_DEBUG_DUMP
-#endif
-
 /*----------------- Default define */
 #define	USE_DMA	1
 #define USE_SUSPEND_WAIT	1
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
