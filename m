Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4197B344761
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC5844027A;
	Mon, 22 Mar 2021 14:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4sHKlmUD3nB; Mon, 22 Mar 2021 14:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E71C44026B;
	Mon, 22 Mar 2021 14:34:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2FBD1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4F6B40295
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjzuKiJzekQ3 for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 08D9D40262
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:36 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id l18so11420817edc.9
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mb74xJj4X7Fk0W46aIpOMrmEyQd8S7cZr54o50UVkWo=;
 b=Z+1WnJh66sCLEUlrt4qJ+SKai9/C5gU7Lmtf//6P7u3FfEb4NfY6kIMnTGa32mL3pm
 Rw4bV3e8Tskjiz+zirSPEC8RUfWlCi3eQHBFj9rZwQeVd7W0D8Niw9NpZM2WTozWRl6a
 2FB36c+dZB2mN1pR9zEIFE8yutm1RbWlu6ysVHtqH+fWjFExSOygP99/IKdqUZeibbX3
 QAfD2BTjfEWO1zsSOThMurWRF051UHYEgRzesnbDo54cwLU4UTOX6AibChRAQgtt4FqZ
 /PSexLGykVzJom7NZZbmugW+RcUoGRqORXTBP10Xbr7ufTQ/dR3SMnc0Qq90GW9qZY3s
 xECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mb74xJj4X7Fk0W46aIpOMrmEyQd8S7cZr54o50UVkWo=;
 b=t74LhTLkhoTF5I2qie0jmc4Z7fiWRCC//kKsQrWIWYQByEXDv8ps/CdznuAcO59CB2
 rhjXV4BDr2qDqKiAthLqkm6ag870uP0c0FwmMzOQCP+mfiIa/+VsdefXgV9bV+F4Y3qo
 AkJ/xRv2TC3xHaxzm3FdQazrHlomyzIdCdzP6lNrU6Dwpn3oHrjwDlU3q2qgqRyU+xt0
 0JAnvHKly9GnLpUeDowSiU8xlRA/XghWnWqK82Jcx0SOHH4MJpNdvLB8FiRe+hxmKx9Y
 FCGGX2NV3GH3DY0JU0Z32ntfw0B7BKDi+MRieVmHeP1XTw2tZ2DI839uX0KH29FDmMhh
 2RIA==
X-Gm-Message-State: AOAM532rUv+/oxKRgOuOpYJKWYTXobxWdacILWtJegmqDgyEtolhhDV4
 glszlPkNceCHE7IZzu+pWUw=
X-Google-Smtp-Source: ABdhPJweYywt3A20ph306ub1lAZxde8kZ9R33ICb3QzjKL11sGQ9dQDPLzMQnhjiTM/eD8RZa97wxQ==
X-Received: by 2002:aa7:d792:: with SMTP id s18mr25803643edq.176.1616423555328; 
 Mon, 22 Mar 2021 07:32:35 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id gz20sm9943432ejc.25.2021.03.22.07.32.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:35 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/11] staging: rtl8723bs: remove undefined function prototype
 in of os_dep/sdio_intf.c
Date: Mon, 22 Mar 2021 15:31:48 +0100
Message-Id: <6a8553f32eb109a2d24b3016367e805426ebcd29.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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

fix the following checkpatch issue:

WARNING: externs should be avoided in .c files
486: FILE: drivers/staging/rtl8723bs/os_dep/sdio_intf.c:486:
+extern int pm_netdev_close(struct net_device *pnetdev, u8 bnormal);

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 8f8549eee23e..185919b6963f 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -483,7 +483,6 @@ static void rtw_dev_remove(struct sdio_func *func)
 }
 
 extern int pm_netdev_open(struct net_device *pnetdev, u8 bnormal);
-extern int pm_netdev_close(struct net_device *pnetdev, u8 bnormal);
 
 static int rtw_sdio_suspend(struct device *dev)
 {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
