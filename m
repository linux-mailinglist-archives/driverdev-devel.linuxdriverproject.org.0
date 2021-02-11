Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F1F31876C
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 10:54:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1CEFE8740D;
	Thu, 11 Feb 2021 09:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GasJyeMNMuRQ; Thu, 11 Feb 2021 09:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57338871B4;
	Thu, 11 Feb 2021 09:54:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E505E1BF681
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 09:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF9776F49E
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 09:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdpQQ1M2P6dd for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 09:54:52 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 264436F52D; Thu, 11 Feb 2021 09:54:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F16196F49E
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 09:54:50 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id lw17so4407025pjb.0
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 01:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wcz3AQJyepgs6E3Mhy+qpeJeGUBWMUKWfxuRMoRrU+I=;
 b=W40w3jlQ178sIb6XnOXVB0x9dFaVjJYV0dcsC45zN/UsV9asePx7aMgfCt1F/zD3PK
 B/cuDHa1KHlCpt7gT3FoeJgvvF9mCydP7kBcp5p2BBjuewhpPkjp/5C2W3URNmn0Ou9g
 bgTb3bHPlj2q8Hhpb0biWq+/tZjCnOfw/Q3B1qE+q4WovUho+yVx8E34VvlqeaRytiyl
 jzGMGzhRNSNmQ5tFt4dhpYCYVJPM6EAwKUU64Q8Ddc1VEaY6qbrKpy0vAZJmb/k7xcwL
 xsNKy1MueZrBbTm+Wuwo8sHc/fCM2fB4tnRwLd7nSEyi7iRaSIJtzNSgGJhOOyUdlqRJ
 xaZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wcz3AQJyepgs6E3Mhy+qpeJeGUBWMUKWfxuRMoRrU+I=;
 b=eyHobTkwAA6OPD5OTqYvmT/aTMiwXCMKcVeZQMO3VywdBfiuu9/ids6EmGbN95Ydiq
 9nShnM+QGNagwwI8JKCCne+nEOjExD+aoD+yj09RpDlRMia4JJOJWWcKBKyShjs3DHYr
 3FUaPgaJuyTp/4a/facocSTUUBA8FPLx6UHo3OXmemjaQ9MfevkeNMKZY2aKReMwR+Bn
 MkTdYifNNQpYLFqj84riKCte/ARF3KDt6+sZvhXPrDOzLxLsUxeIgbwjQ2gPyTRqdxqU
 lfRD/2Vcg5i5AFA3m4ENCxsX/4jeTRWHYzD3nD34UZf0RLC4yrEsgH4Bfb4hyg+u1l+W
 ZyCA==
X-Gm-Message-State: AOAM533X/EV+ov7mp6OOp7anUDQ5lcwGA+gqQLjB4aJfF49QBndpM319
 HZzPjTZCjo7Z7OrTbiLR7BI=
X-Google-Smtp-Source: ABdhPJwV1rcv6wGkjVZ8flLv4pmrLtBs1E2FL3ApE5mLK8efWmbyclpYoAXRUjxrJdjzDcqHGzwx8A==
X-Received: by 2002:a17:902:8c8f:b029:e0:1663:fd34 with SMTP id
 t15-20020a1709028c8fb02900e01663fd34mr6901568plo.84.1613037290390; 
 Thu, 11 Feb 2021 01:54:50 -0800 (PST)
Received: from localhost.localdomain ([27.5.41.215])
 by smtp.gmail.com with ESMTPSA id y24sm4959382pfr.152.2021.02.11.01.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 01:54:50 -0800 (PST)
From: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
To: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 1/1] staging: greybus: Added do - while in multi statement
 macro
Date: Thu, 11 Feb 2021 15:24:44 +0530
Message-Id: <20210211095444.54447-1-hemanshagnihotri27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch add fixes an checkpatch error for "Macros with multiple statements
should be enclosed in a do - while loop"

Signed-off-by: Hemansh Agnihotri <hemanshagnihotri27@gmail.com>
---
 drivers/staging/greybus/loopback.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
index 2471448ba42a..6dd95d648999 100644
--- a/drivers/staging/greybus/loopback.c
+++ b/drivers/staging/greybus/loopback.c
@@ -162,10 +162,11 @@ static ssize_t name##_avg_show(struct device *dev,		\
 }									\
 static DEVICE_ATTR_RO(name##_avg)
 
-#define gb_loopback_stats_attrs(field)				\
+#define gb_loopback_stats_attrs(field) do { \
 	gb_loopback_ro_stats_attr(field, min, u);		\
 	gb_loopback_ro_stats_attr(field, max, u);		\
-	gb_loopback_ro_avg_attr(field)
+	gb_loopback_ro_avg_attr(field);				\
+	} while (0)
 
 #define gb_loopback_attr(field, type)					\
 static ssize_t field##_show(struct device *dev,				\
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
