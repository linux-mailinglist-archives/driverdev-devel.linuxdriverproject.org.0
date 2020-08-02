Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D62F2357D0
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 16:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1978220346;
	Sun,  2 Aug 2020 14:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d4dDenBc22xC; Sun,  2 Aug 2020 14:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 50772203BA;
	Sun,  2 Aug 2020 14:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B42FF1BF255
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 14:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A5EC2035B
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 14:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5ZeFuVICOsX for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 14:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 0840E20346
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 14:59:05 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id a21so36047888ejj.10
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 07:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yyL8IQ3p0GjDt22ZLGpFc90FrUfjHizo61odNCdZDrY=;
 b=fu09evgatNAsy2nfTcEuGvs7voJG4NaA9XiThklVNg/cS6NMqFCAqnDO7DBWNwriuy
 7ORnLTD+lBZimH5ZeKf+EBPTupqxyUo3fCShctlmDn4odx3eMHHCuq3FAhJSLvZ3HxH3
 MXP1t1/NjLC1EPbdhrMqSm2rh1pD8gO3eahdSZ3up1akhjz/BZrIY/wwM6YdaEUKXOts
 9CidCBuNTzx/Ie4LY1hQH8sHXcMC8DZhxOqedqQ1pDCWjpClYF8J5mZvjRSXvJsib3XM
 xytcbqBW9R/pChCY7THaybMbJiDDoGko8C5wWMyc+Ij1454DpwwBopFgyG/+rr1uqGsh
 171w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yyL8IQ3p0GjDt22ZLGpFc90FrUfjHizo61odNCdZDrY=;
 b=uShkP/6MkSTtLeAhM790A4kd7Yt2LBaB71YKBWwR5qTDDDZx44XLomWNdgkqXT5c8v
 Lks0rEisRgF8NkhrCsUnKAhxSb2lfTzi+GvskoOnrEdJoa/NmmjvfuiQ7kRxp2cmZPIr
 s5abdYbix8fzdVZeeLSWfLgo0ubdlyaLH/y05RhWJmYsMwmYO12h95Mgd4tSS4UY4XyI
 TcF7kEjeW+Hjv4Acw7MObJZ+udvbOaVpIwOv96QlqRgxvUFKFxwJE5wESUQJcgNOii/V
 Qqy2Xsk/0lvdLFsdFGMq/MdC25oXPrAl4UYNXBqFsLNAHDeyA6JT+npEor1CHVVo2Wvf
 P7Kg==
X-Gm-Message-State: AOAM5311FYpYMqFlX53WqfBCJlQ0kbMH+blEDSj9/TojPl9nUs+kkkt6
 qxQw3O1jSqnqIej8xTTWMEU=
X-Google-Smtp-Source: ABdhPJzRpAja7Xak7zQvGrymyc5+JcmUJ893bw4Qsq5P6SCV/KWHpaHkmO4P26EJYDBK3WYnBkQRTg==
X-Received: by 2002:a17:906:43c9:: with SMTP id
 j9mr12422509ejn.542.1596380343249; 
 Sun, 02 Aug 2020 07:59:03 -0700 (PDT)
Received: from localhost.localdomain ([2001:8f8:1821:5abb:6d82:a3:751a:a9fb])
 by smtp.gmail.com with ESMTPSA id
 p21sm7843855edr.59.2020.08.02.07.59.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 07:59:02 -0700 (PDT)
From: Mohammed Rushad <mohammedrushad@gmail.com>
To: gregkh@linuxfoundation.org, gustavoars@kernel.org, yuehaibing@huawei.com,
 dan.carpenter@oracle.com, colin.king@canonical.com, usuraj35@gmail.com,
 darshandv10@gmail.com, john.oldman@polehill.co.uk
Subject: [PATCH] Staging: rtl8192e: fix indent coding style issue in
 rtllib_tx.c
Date: Sun,  2 Aug 2020 20:28:59 +0530
Message-Id: <20200802145859.14143-1-mohammedrushad@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a patch to the rtllib_tx.c file that fixes fixes an improper
indent found by the checkpatch.pl tool

Signed-off-by: Mohammed Rushad <mohammedrushad@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 79d7ad7c0a4a..e0d79daca24a 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -859,7 +859,7 @@ static int rtllib_xmit_inter(struct sk_buff *skb, struct net_device *dev)
 			if (ieee->seq_ctrl[0] == 0xFFF)
 				ieee->seq_ctrl[0] = 0;
 			else
-					ieee->seq_ctrl[0]++;
+				ieee->seq_ctrl[0]++;
 		}
 	} else {
 		if (unlikely(skb->len < sizeof(struct rtllib_hdr_3addr))) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
