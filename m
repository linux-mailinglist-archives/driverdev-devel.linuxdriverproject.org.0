Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7EE19BA56
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 04:33:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31B6F85F3A;
	Thu,  2 Apr 2020 02:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OPx3ZnLY1_0X; Thu,  2 Apr 2020 02:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD08385E9F;
	Thu,  2 Apr 2020 02:33:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9D261BF3F4
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 02:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B500985E93
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 02:33:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBX6h2c42Ct2 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 02:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4685785E85
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 02:33:21 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c12so781155plz.2
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 19:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ATIn1oIMiOwI325i99rfncSx0LFzAXo2FxSFZi+2kaM=;
 b=n3LBbVdVMR9xztTWPZj9E4NAFROVpVuh4KUeELtpWMpWqKKx5lGsHyovhlSlocwRJf
 nN/pb2bi91NTXpSJ1uY00zkUiaPE1bGQ1OESWp5M3dZfU5PDgILsOCat+syRefKVKUQd
 NXAWZZRUUUWiZoDrpVBNkYiOUY3YwQbs4YN+1WLDGx4SIvMQHLOiGDrtnEZBewl7LeBk
 bV7tfeAbWFkoGaMruVpc4b5Cmt71VHuO8gVt3bKcqOtUZ3+4XYu4x4S6yOMwfntDxKEi
 Fn+YCM7DNZJ8NmjPzIxP8e2qLMH2U7SpRydjD4pitF5Y5D0juJOw5QqzRa2deSIgGTFi
 RmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ATIn1oIMiOwI325i99rfncSx0LFzAXo2FxSFZi+2kaM=;
 b=Opitj3nT1KeEhfqPOkSg4pslm8pkpMMa5jJtnbb3wp92KAzTgnjqUXRYTEnh9fnOdZ
 YcU6fIPNQOpPHS0L+jmLWwbFW9m2pTEFQkL1QgP96FVRAcQKfYdZ/sB5FzzU4fBW3o89
 GfYqH7GYbP2iaM18uqv49HXBKPeugG/2A6kRYHPASTENNrGgAABiWXiUZVLPvJkSimoB
 R2LosisOZtDtoLc1cUR96JOpr/rYjayMHvjd6vAfAg9/E5nIF/FKEWn9XujEQl/5cctu
 dWpKQADd+CRxcOP++fErWcYXFaIx98XCxjHl32SaZPw6jBC6Gubgo8Z370T/XJJznYHB
 fi4g==
X-Gm-Message-State: AGi0PuaaCsv+AXyS9UhGpeCYuWo2b2ogq+aIaJkvUAJwlxi+6vEXRQnr
 x7eidj8rF5LVquZVx8PNZYg=
X-Google-Smtp-Source: APiQypLRbDTF91VykRK3Z/pEgpBEwK+uBtcjCC4EZ+kNI3dgYXQkXJFmPIpDmGRKtu9XXqqhig71Fg==
X-Received: by 2002:a17:90a:24c5:: with SMTP id
 i63mr1182990pje.177.1585794800765; 
 Wed, 01 Apr 2020 19:33:20 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id b2sm2609402pjc.6.2020.04.01.19.33.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 19:33:20 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: fsl-dpaa2: ethsw: Fix parenthesis alignment
Date: Wed,  1 Apr 2020 19:33:10 -0700
Message-Id: <20200402023310.816245-1-jbwyatt4@gmail.com>
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

Fix 2 parenthesis alignment issues.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 676d1ad1b50d..546ad376df99 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -1094,7 +1094,8 @@ static int swdev_port_obj_del(struct net_device *netdev,
 
 static int
 ethsw_switchdev_port_attr_set_event(struct net_device *netdev,
-		struct switchdev_notifier_port_attr_info *port_attr_info)
+				    struct switchdev_notifier_port_attr_info
+				    *port_attr_info)
 {
 	int err;
 
@@ -1277,7 +1278,8 @@ static int port_switchdev_event(struct notifier_block *unused,
 
 static int
 ethsw_switchdev_port_obj_event(unsigned long event, struct net_device *netdev,
-			struct switchdev_notifier_port_obj_info *port_obj_info)
+			       struct switchdev_notifier_port_obj_info
+			       *port_obj_info)
 {
 	int err = -EOPNOTSUPP;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
