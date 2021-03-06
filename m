Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC93732FA6E
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 13:11:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC5588455F;
	Sat,  6 Mar 2021 12:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bddesofTnSVd; Sat,  6 Mar 2021 12:11:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B94D84433;
	Sat,  6 Mar 2021 12:11:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54EDE1BF589
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 12:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43FE643022
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 12:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grFweZ9DJ1_n for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 12:11:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com
 [IPv6:2607:f8b0:4864:20::441])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A83D5414F6
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 12:11:11 +0000 (UTC)
Received: by mail-pf1-x441.google.com with SMTP id a188so4060982pfb.4
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 04:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BVyrDkDYNfdYuIzuJBagkTAPrMEkMX8z2zUgIheSJaU=;
 b=ASAXRCI+vRWIwdq9xkZXcMsd99MrrgfVm4z+J5v8l6sF87zpwZB019+nwVXr53ewgt
 eX2fm/lft4j7MxtjfjEZOTmdJDfLPOgphMZu/bDs0NLEYgaZnxqO98QA1sizq3ucwUEi
 bNXwuZf0DgkxXN0Gb6XpQq6LWikcJvT7MwsT9tdAddNITrPEFb6UWz3Y4fjCSkBbVMYT
 yh31V7MMgBzz9jYnDkjhwNWsgarWra3ehNufqdDVFZztKExeWQPBdPSyclhyow+qLmpr
 Jum8yEmL8TYfG/xcUfdqjNTcM5s+/I62LMbqjkOE/9LD7T64/0+xmBMAMPFDAenK/22y
 hyhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BVyrDkDYNfdYuIzuJBagkTAPrMEkMX8z2zUgIheSJaU=;
 b=MOge+aHWQjadp6JYaR+wh1kck1DEBifHWv5+gdg5ZAq6UCPKPNR0vM+G5Amj9HjctI
 vCS7MDLruGzhRusgEcD/O0U5lEnubOICdyX6RlK7GTJdG+Y2idswP56Qi1iMaQIAUvq6
 K9JZm9bj9canLWp4uUpWtkcqU5zBq/nE8vaQ2W7bkusw1x7n+3wcyV5A5HX07h0cq1vA
 8PLjBwQfVSpggHnIlwmwcyMUoQocgOQByts1uh3VJVwiTF9icKMq2jCb4eueJevju8Tt
 aezAvY0JExhUs/CdBa0Pe6oZ+1ZUuarvc9BcvfVKXSYk8djw+xtR9HlenYQHxKA2eZtE
 SUMQ==
X-Gm-Message-State: AOAM533snfWeJljRn8pqN8F7hYyj2mYqoiSKueF9OK20kg6otdRXkKCT
 ajWC6VP3WruFF3y9Tgt/MRM=
X-Google-Smtp-Source: ABdhPJyAt3pUMHH9D43EtcoFrV+BCXDQyqG82hlYEpMq4QSieYKHqZ+tNyuLiHwIjNTS5dnnE4XM8A==
X-Received: by 2002:a63:c702:: with SMTP id n2mr12426084pgg.382.1615032671174; 
 Sat, 06 Mar 2021 04:11:11 -0800 (PST)
Received: from localhost.localdomain ([178.236.46.205])
 by smtp.gmail.com with ESMTPSA id b14sm5209799pji.14.2021.03.06.04.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Mar 2021 04:11:10 -0800 (PST)
From: menglong8.dong@gmail.com
X-Google-Original-From: zhang.yunkai@zte.com.cn
To: mchehab@kernel.org
Subject: [PATCH] media:atomisp: remove duplicate include in sh_css
Date: Sat,  6 Mar 2021 04:11:04 -0800
Message-Id: <20210306121104.218696-1-zhang.yunkai@zte.com.cn>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Zhang Yunkai <zhang.yunkai@zte.com.cn>,
 sakari.ailus@linux.intel.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Zhang Yunkai <zhang.yunkai@zte.com.cn>

'ia_css_isys.h' included in 'sh_css.c' is duplicated.
It is also included in the 30th line.

Signed-off-by: Zhang Yunkai <zhang.yunkai@zte.com.cn>
---
 drivers/staging/media/atomisp/pci/sh_css.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index ddee04c8248d..afddc54094e9 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -49,9 +49,6 @@
 #include "ia_css_pipe_util.h"
 #include "ia_css_pipe_binarydesc.h"
 #include "ia_css_pipe_stagedesc.h"
-#ifndef ISP2401
-#include "ia_css_isys.h"
-#endif
 
 #include "tag.h"
 #include "assert_support.h"
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
