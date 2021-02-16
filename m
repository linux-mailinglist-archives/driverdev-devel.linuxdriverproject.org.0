Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3276331C973
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 12:14:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EB2A858F5;
	Tue, 16 Feb 2021 11:14:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNHXfuNsnA2Y; Tue, 16 Feb 2021 11:14:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9870C8577F;
	Tue, 16 Feb 2021 11:14:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64BB81BF589
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 11:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5DC2C8577F
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 11:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tk1rH3JgA0QF for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 11:13:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6ADF585742
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 11:13:59 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id kr16so828301pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 03:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QBTrP6p/CytRV2OHIF6K7ulSypTUL6Uyb+UsQPE+eIY=;
 b=eH3OiaYAFkvY1Uhm+a68LGmHxiYfpONz2ZIbB7oOeJ8rdH6yIR2L6ga/M/J8/Oyvi4
 bYvDXEBIHS8j/Sj8XrCV1TGRjExA1CpUHHDG8+X5NRAtZn4jX96NBhE53QxiJYpqt6PR
 Cq5KjlYTiD8lu59PIgInww5hvVaP+rf+RrJGqbHiXBaNY3ERdxISjounF1Iz1IZfihOQ
 vSnyqi2KS/wJx9k5jO/Sofz1qx1ToOV3LQdP03fB+Ly4wGsN1iz6XW0OXCElfxFfUOvd
 nj55w4FYva54pT+LM7zozXxrv7Bx9ckOfYWNpxabSs+aef9PIjY20h5Hkj7fq0JAcnxe
 0ycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QBTrP6p/CytRV2OHIF6K7ulSypTUL6Uyb+UsQPE+eIY=;
 b=k6D1PaBn/BrInI8SGNSLA9CoR40Ut3llmcZNpimHNSomLVX2XvVcUGqpDMda+eLOQP
 YqMCWJDdo55F/ANMd3p8R/6BIFo/asA75dXbYtkB20PRVj/baWX434FTvdZOa20qJfTQ
 Wa7J8J9xZvjOCsTUtBa39yPCN92TttZxq/5zesSOyYcfR5EoUP5nCUdHhDJDYFoXzYRb
 d/C6b8FJvKtj3aDCsOwCirUUwWbgixNYtN6vaGCeLUpDtgTnN5HZMKBO6jzsSdSySN0l
 RRM0ttpFpeQNvq90DqKPlAjBjU5VepnmoW5ZIcVtV23FfBn2cjl/eH1HawiIErVZy0RO
 2pqw==
X-Gm-Message-State: AOAM530wFCak8V4YvmvKvHBQdKxNULZQuAHiW7GNYVee/DeJTCf/hFyD
 Fy3QcQCiB+1XArITbQRilMA=
X-Google-Smtp-Source: ABdhPJzoPc0p41spb64GOmQfIiPy+zpXfcTi+xCyBbM3VU17d6y9B8zmKw1Y02w6hS12937j2qY5oQ==
X-Received: by 2002:a17:90a:19d0:: with SMTP id
 16mr3771394pjj.121.1613474038939; 
 Tue, 16 Feb 2021 03:13:58 -0800 (PST)
Received: from ThinkCentre-M83.c.infrastructure-904.internal
 ([202.133.196.154])
 by smtp.gmail.com with ESMTPSA id u26sm20836168pfm.61.2021.02.16.03.13.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 03:13:58 -0800 (PST)
From: Du Cheng <ducheng2@gmail.com>
To: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Subject: [PATCH v2] staging: greybus: fix coding style of greybus/loopback.c
Date: Tue, 16 Feb 2021 19:13:53 +0800
Message-Id: <20210216111353.190238-1-ducheng2@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Du Cheng <ducheng2@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix macro gb_loopback_stats_attrs by wrapping its multi-line definition
inside a do {} while(0) block, in compliance to scripts/checkpatch.pl.

Signed-off-by: Du Cheng <ducheng2@gmail.com>
---
changes v2:
* relign backslashes with tabstop=8
* improve description and subject

changes v1:
* fix coding style of the macro

 drivers/staging/greybus/loopback.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 2471448ba42a..24b769688817 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -163,9 +163,11 @@ static ssize_t name##_avg_show(struct device *dev,		\
 static DEVICE_ATTR_RO(name##_avg)
 
 #define gb_loopback_stats_attrs(field)				\
+do {								\
 	gb_loopback_ro_stats_attr(field, min, u);		\
 	gb_loopback_ro_stats_attr(field, max, u);		\
-	gb_loopback_ro_avg_attr(field)
+	gb_loopback_ro_avg_attr(field);				\
+} while (0)
 
 #define gb_loopback_attr(field, type)					\
 static ssize_t field##_show(struct device *dev,				\
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
