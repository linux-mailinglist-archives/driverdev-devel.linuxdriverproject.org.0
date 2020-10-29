Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E0029E894
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 11:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09C2086B66;
	Thu, 29 Oct 2020 10:10:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPkOlFGYA56z; Thu, 29 Oct 2020 10:10:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9091786B47;
	Thu, 29 Oct 2020 10:10:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E412D1BF41A
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 10:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DFE498758F
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 10:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8kwI238O+7Gc for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 10:10:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C90AD8758E
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 10:10:38 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p17so1042914pli.13
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 03:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qGMOrUlHOVv3WQBDnsetUi78s6Nj3dKezBdxOEfVgM8=;
 b=mA9kePlJBabjPKZbIb/EDJcnKDwa/GKf2lKIY+ctV6dJzO2POuInVg+nEnghRSQJEw
 PA9u0oVoWKX3y813bAoiYzgQaNmIIP2zKPOLTIvO+52FjiptiLz+ZKZvxvD8HL6UUuvQ
 D2dMrHc/YUiszoGDwZCvRMLHGXevOApX6oUt7zVQdjUapTno9elFz9GxJ3wAFY5nDSTr
 xLQlaX7aLe0Y96znGsqIFBk/MaNZm6hf4lxyHE5smNY+5UIBIkKTQIEJ6hrK5KG51fc8
 159qYZYPK1IJiWRkg8ntCtd6GwM1qlR7yakseHT8jGudcN0CGopy35GiDKvdNmY+ndPE
 eoaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qGMOrUlHOVv3WQBDnsetUi78s6Nj3dKezBdxOEfVgM8=;
 b=QuC6yaS9CfqB1q7tvrX6XOSRzqcbN/1ZWmJiOGx3gdJ8bjuIM6MTh7r7bFxyFuIAgr
 O2x506ky0Y25GbpL6jUXk4tzvhaiCeo8htNaXHYFkzA3AfO1SYZVXmA2VS4RidjtBzcU
 AA0rRBj+gxqW30wsmCxsbcXVoZBpxFgtPs5P0xlzKONqPDO5SDXJx9FMI2Myn1EOSQ01
 kWfOG8sPMgGsy7BA3JAGTJNbAExrg8O3rfTO+H36+Aymn3mxDCkQ+CY7H3hxPII/0pgJ
 F2RVyJrCpRI4vdzpOq/HgC0rqP3Igijw7zoq0x5cLXqP3IPIEvUbyzVF4P8FKBost/C7
 yIdg==
X-Gm-Message-State: AOAM532DCYlMhKwzgFwqfoKj93imJ3teQmfE2nZxr15KeTq0ZWN4gSIj
 zxaeskkBskev9b7+VOM56aE=
X-Google-Smtp-Source: ABdhPJzt/r4B0ato3PHpYtx7uy5beaRoLXMyQZ9M8TL2Ce0RCul+HLT5I2qs5uJfSt8oe1v9ExENOA==
X-Received: by 2002:a17:902:fe0a:b029:d6:aa7:5220 with SMTP id
 g10-20020a170902fe0ab02900d60aa75220mr3235196plj.16.1603966238352; 
 Thu, 29 Oct 2020 03:10:38 -0700 (PDT)
Received: from localhost.localdomain (sau-465d4-or.servercontrol.com.au.
 [43.250.207.1])
 by smtp.gmail.com with ESMTPSA id n6sm2059684pjj.34.2020.10.29.03.10.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 03:10:37 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drivers: staging: Fix spelling in comments
Date: Thu, 29 Oct 2020 15:37:59 +0530
Message-Id: <20201029100759.21668-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed two spelling in two different comments.

s/defalut/default/p

This is in linux-next.

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 1af919ff6d93..391c59490718 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -52,7 +52,7 @@ static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 	 * The base index =
 	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
 	 */
-	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
+	dm_odm->BbSwingIdxOfdm = 12; /*  Set default value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;

@@ -109,7 +109,7 @@ static void Update_ODM_ComInfo_88E(struct adapter *Adapter)
 	 * The base index =
 	 * 12. +((12-n)/2)dB 13~?? = decrease tx pwr by -((n-12)/2)dB
 	 */
-	dm_odm->BbSwingIdxOfdm = 12; /*  Set defalut value as index 12. */
+	dm_odm->BbSwingIdxOfdm = 12; /*  Set default value as index 12. */
 	dm_odm->BbSwingIdxOfdmCurrent = 12;
 	dm_odm->BbSwingFlagOfdm = false;

--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
