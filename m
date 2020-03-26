Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0384F193FBA
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 14:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A2C28737E;
	Thu, 26 Mar 2020 13:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bkTefihCzy5r; Thu, 26 Mar 2020 13:28:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E5BE87361;
	Thu, 26 Mar 2020 13:28:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B54C91BF316
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 13:28:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AED282157D
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 13:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wujnRnjMV56L for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 13:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id A7FD62037E
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 13:28:29 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id s23so2107845plq.13
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 06:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9VMBXAMCwL7qm/FeM98BMJBlfVZIr+3WQNOcgxok4qo=;
 b=OmakIFQfxCrQNfd8PVzCQSci2n6MNA7igCtPFOFRNTpd5G1xLmXqSri+roMLEcbbpm
 wcGG2/KlQKEL4Y4uNNLJ9eWMmVGrt2TL7ymP7PvOnI60QX9GEFMRaPOVOFWhQDi13/Ek
 fdk9qkgfiZMG5u8RdMKGWbP0emmHEwEWFlZbIVOFdt1Cmc8jQGZXdzgaC03xkNRcDRcU
 JzKun+rZD4iThoE1OhE406GpUQbLhZopSRbtmeZyZoXXT8YVa9207fBrayLquQHQ8KnD
 9X6na/wlphZyexHgf4kx9Lebgy9a6Z7jhWhXcbF6zFFh6y71Wllrq1tJcNbwSrYrFWSs
 l54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9VMBXAMCwL7qm/FeM98BMJBlfVZIr+3WQNOcgxok4qo=;
 b=Pg36y9NqmWT88xEschF0HvXJZC4T8ViJOWz9e8Tz0LUDRUnf2UiQmi0eP0eYEhhvsG
 wODBgLKDcsL5BdG1XeQi1BGM0GQAvcJG6Eep4LtVbUEa9CfUAmfqAoG6oWkEQVXkvtQa
 Jx4X8Vobl8zZYENqv27bDMdRkl5Iy0lH6a0d8KPdSCM4+xpC8y/YR0iPHot1Gzt7Rlyb
 jJgTNQszMMnSOyUqdX6+ArjSYKJ4V6Vcgn42BORyd8xveTXOa8Cglm96EzZ/Vm9y/3rk
 uxHaTGbv9D9U4XMyMkLD5bcXXtNrXrABqDknADT4N+186xwtlZqs7/iJ4pvcUxIY4GBP
 l2ZQ==
X-Gm-Message-State: ANhLgQ1uRRkjD4d622YReYITq0I5WNooZE4tNN7GcJykiYyCNJ5Mn/Gs
 ZPvrfqupyP4Qk3ilpsjn9yo=
X-Google-Smtp-Source: ADFU+vtdj9jQbRa6FPxuUgqBp9Kg1xU6xet7VwDUriXEGjEXcCqo1jZ5IHInQG8rzICrdN7XUcTqUg==
X-Received: by 2002:a17:902:aa4c:: with SMTP id
 c12mr8508293plr.168.1585229309170; 
 Thu, 26 Mar 2020 06:28:29 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2405:205:1208:56c8:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 q19sm1672840pgn.93.2020.03.26.06.28.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:28:28 -0700 (PDT)
Date: Thu, 26 Mar 2020 18:58:23 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: hal: Remove NULL check before kfree
Message-ID: <20200326132823.GA18625@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

NULL check before kfree is unnecessary so remove it.

The following Coccinelle script was used to detect this:
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 1e8b61443408..cf68193a167f 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -480,10 +480,8 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 		precvpriv->precv_buf = NULL;
 	}
 
-	if (precvpriv->pallocated_recv_buf) {
-		kfree(precvpriv->pallocated_recv_buf);
-		precvpriv->pallocated_recv_buf = NULL;
-	}
+	kfree(precvpriv->pallocated_recv_buf);
+	precvpriv->pallocated_recv_buf = NULL;
 
 exit:
 	return res;
@@ -518,8 +516,6 @@ void rtl8723bs_free_recv_priv(struct adapter *padapter)
 		precvpriv->precv_buf = NULL;
 	}
 
-	if (precvpriv->pallocated_recv_buf) {
-		kfree(precvpriv->pallocated_recv_buf);
-		precvpriv->pallocated_recv_buf = NULL;
-	}
+	kfree(precvpriv->pallocated_recv_buf);
+	precvpriv->pallocated_recv_buf = NULL;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
