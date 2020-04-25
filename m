Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290571B8542
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 11:30:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01BFD881E2;
	Sat, 25 Apr 2020 09:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0se3U-SrUKky; Sat, 25 Apr 2020 09:30:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6630088166;
	Sat, 25 Apr 2020 09:30:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A08971BF5F6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 09:30:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9CF8886CE7
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 09:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgJFQBUqo9kC for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 09:30:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A984786B68
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 09:30:35 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k13so14395323wrw.7
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 02:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HqIOpvjAX4aB+i0alurBPqHQCQRYmgJifFMe4+PDeSc=;
 b=DUxj4mDQiE/jn60mXBqDyIIczs085H9kop9QRKaMAq8ft5OCBdGAJbSmf8Zb1OVuxk
 eUzXFjyXVfccJWsBENIond1vHrjdeHxhlRpgjh509u3BzGpCWaafxxdXqWL9arnVeQ17
 J4wngiImwieQ6kJ0K5mEkkd9IImZdSs60wnVfQNtyEuYhZYPKEC+QiEyvytoH6T+Xv/s
 kwEcXleVw4pRzInOu9tp1O0mEomdsZgE02BsYRamRCFk/Lv3+VyjRPIYIVEekMLDTuaO
 S7+u3dAowYaiuNkxbp0nTN9D7Y+o9CKvxMcjoSAQIa5RmgnfsmN5UjpfndvhYFElDFUW
 NVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HqIOpvjAX4aB+i0alurBPqHQCQRYmgJifFMe4+PDeSc=;
 b=IZKGUCxyLaYw0ehdDdHYcp9EnUe5YSgf4cuIWN/AaTu/7dHY1j1vAIs6/CXFnRpwio
 PrF3P8BAEBaNmo2kRiaptuE+2tbR0QLSOFwhD/qWc34GBsoeCpFqXusVaEeuL57wE/au
 77ng1qbvmStd69Vg6psNob79zc4u28uBWj/AsFBUN5BJYQ6MH/6moqErcWpJ9r8GCGUx
 Z49DI81vERKnIcZrN1/JL2iOWDAyBHdQxR1ouRb+QHMVZ83g7M3spH/F6J0gTEuP0dfA
 o+II7Y/sNtvn7/HGZP/MQaHHeQE17kAUUzZekKJWhDdgfqvsIBqImlWD4ezrhJ9lwUaT
 xd5g==
X-Gm-Message-State: AGi0Puaqp2D0EpuvM38dySrrs4EbjuSgmd5hGrc1/b1ttknsaABGYi56
 7TmS1HbQxfjIhahxQlkkAfo=
X-Google-Smtp-Source: APiQypI+RYtCtuxA4FvRIxtod8076du/gFx3J/mEpn4RTDVu1Wq/eruzAVbLdgUgiXC+CA+dOqTHfA==
X-Received: by 2002:a5d:610e:: with SMTP id v14mr15831207wrt.159.1587807033996; 
 Sat, 25 Apr 2020 02:30:33 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-221.178.006.pools.vodafone-ip.de. [178.6.252.221])
 by smtp.gmail.com with ESMTPSA id w6sm12318805wrm.86.2020.04.25.02.30.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Apr 2020 02:30:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove some superfluous comments
Date: Sat, 25 Apr 2020 11:28:22 +0200
Message-Id: <20200425092822.19925-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove some obviously superflous comments.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/odm.c          | 2 --
 drivers/staging/rtl8188eu/hal/odm_hwconfig.c | 2 --
 drivers/staging/rtl8188eu/hal/rtl8188e_dm.c  | 3 ---
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/odm.c b/drivers/staging/rtl8188eu/hal/odm.c
index b3cc40527730..28974808839d 100644
--- a/drivers/staging/rtl8188eu/hal/odm.c
+++ b/drivers/staging/rtl8188eu/hal/odm.c
@@ -5,8 +5,6 @@
  *
  ******************************************************************************/
 
-/*  include files */
-
 #include "odm_precomp.h"
 #include "phy.h"
 
diff --git a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
index a6f2731b076d..65a346ae3cb0 100644
--- a/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_hwconfig.c
@@ -5,8 +5,6 @@
  *
  ******************************************************************************/
 
-/*  include files */
-
 #include "odm_precomp.h"
 
 #define READ_AND_CONFIG     READ_AND_CONFIG_MP
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
index 241f55b92808..1af919ff6d93 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
@@ -29,9 +29,6 @@ static void dm_InitGPIOSetting(struct adapter *Adapter)
 	usb_write8(Adapter, REG_GPIO_MUXCFG, tmp1byte);
 }
 
-/*  */
-/*  functions */
-/*  */
 static void Init_ODM_ComInfo_88E(struct adapter *Adapter)
 {
 	struct hal_data_8188e *hal_data = Adapter->HalData;
-- 
2.26.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
