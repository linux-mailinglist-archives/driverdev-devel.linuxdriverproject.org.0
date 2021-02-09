Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BE23152E8
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 16:37:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A9D785585;
	Tue,  9 Feb 2021 15:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DIxChVDO4DX; Tue,  9 Feb 2021 15:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC33D85087;
	Tue,  9 Feb 2021 15:37:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3C411BF836
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 15:37:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D062585585
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 15:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K7Ks3J0COQhk for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 15:37:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7812F85087
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 15:37:22 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id my11so1647538pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 07:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QKpVLQm7ZgzFHub3c/NcdvxoQclO6JlmQvaCgvZwUso=;
 b=i2a1iFtyMtyF821MfTRZUkwrMjKRzRHxgbbddSQbrmgdl0umOE4/AZwIPLHQvVhIAP
 XZhwtbpaFbwChOo+FtSRRVDFQAMWn13PuGTpHiIjtSE9L9nH6pG8eJVDaBCkcybMcLlY
 4lao8MGkuJltTGb2BDzcKoVEf7OjOE3jEUOcACDQ5G6C2P6EP9VNCrK3zPboJ7oEyAmu
 Ih8dn/+Htd6g6WOwB/QJh3Tt0b6RydywOB4J1KD9UHyldXTsR12upcwdznl5gglK5I2f
 eBAYMT+7PT6VVAMxjaSy165fGAJZqRzd2YyMSZNCnho6mwuvZ36SMHn3bcOodJwJEpJG
 9euA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QKpVLQm7ZgzFHub3c/NcdvxoQclO6JlmQvaCgvZwUso=;
 b=VxCyOGUjdWGpUBhVX9maWVAxfbA9PAmTdSFpAASd0Xutm2FJJvxifxtRv12VDmLuI+
 4OPioF6Zs8wYYtoU5WsH6c0DIVvAhkOkOuVQ9mV88jGOo9dQqjIaD8m7cP9g7l/cWZQA
 FAF+PnU+ivpU6D0Yp0G/G0/Nm7O7KQOp/hR6ersbUyj1++PYYkD4EoFhwe2V18Lnrgln
 Y4XFJxWK0UjV1MfBaqWWFDdmnH8BZudHvCw465tzUq4VoIV05VF6DC9GlX/BX3f7gdbH
 cOWE3nZ4BBL9jTyPLx3e6c1nkg8afocBxqwS17eWwE9+dZtYoscu8nqwdPtpiXObsuQg
 mDrg==
X-Gm-Message-State: AOAM5304YWDjjd1HcTuSNbBj6+cm7l1/OrLTD5glV7VXYzX8zoHZeuZb
 KrkFfbTHapCVeCshhIN2aU22hXpsvYoVflrd
X-Google-Smtp-Source: ABdhPJyWxZWW4E9OVCxZns9sUsIjtc7KinBlV1hYdh+UexUhafMldAYJM/gcSdiQffMjCMRhrBgkdg==
X-Received: by 2002:a17:902:b189:b029:dc:4102:4edf with SMTP id
 s9-20020a170902b189b02900dc41024edfmr21137768plr.80.1612885041976; 
 Tue, 09 Feb 2021 07:37:21 -0800 (PST)
Received: from xps.yggdrail ([49.205.78.218])
 by smtp.gmail.com with ESMTPSA id g9sm23369759pfr.94.2021.02.09.07.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 07:37:21 -0800 (PST)
From: Aakash Hemadri <aakashhemadri123@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: rtl8712: Remove multiple blank lines
Date: Tue,  9 Feb 2021 21:07:09 +0530
Message-Id: <20210209153709.128676-1-aakashhemadri123@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl CHECK:
CHECK: Please don't use multiple blank lines

Signed-off-by: Aakash Hemadri <aakashhemadri123@gmail.com>
---
This is my first patch.
Done as a part of the linux-kernel-mentees program and as the 10th task
on eudyptula to fix style checks.

 drivers/staging/rtl8712/rtl871x_debug.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_debug.h b/drivers/staging/rtl8712/rtl871x_debug.h
index a427547c02ba..57f2a38cb71c 100644
--- a/drivers/staging/rtl8712/rtl871x_debug.h
+++ b/drivers/staging/rtl8712/rtl871x_debug.h
@@ -17,7 +17,6 @@
 #include "osdep_service.h"
 #include "drv_types.h"

-
 #define _drv_emerg_			1
 #define _drv_alert_			2
 #define _drv_crit_			3
@@ -28,7 +27,6 @@
 #define _drv_dump_			8
 #define	_drv_debug_			9

-
 #define _module_rtl871x_xmit_c_		BIT(0)
 #define _module_xmit_osdep_c_		BIT(1)
 #define _module_rtl871x_recv_c_		BIT(2)
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
