Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5B522DFAB
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 16:21:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5346884F2;
	Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FMBxIgqezFKL; Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1913B8844C;
	Sun, 26 Jul 2020 14:21:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1367B1BF46D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 102F08847C
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 14:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fVYRQc0Kq2qm for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 14:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69E5488456
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 14:21:09 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id j20so7711226pfe.5
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 07:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZhCt15B3uLAeao+GHzN5068S79fDWl+V7bhkaWPaFeo=;
 b=gnTU5fYprVCLITb+lHayB1yzTAm0ei1nEDo+Rx4j51jwURNYjO1UeLJ+DpytkrFS9O
 MxystjCTHnv2fCBjqM0XJ9Gg30uHtie8B3dPNgGBHAVzJ6mu3K53s8xX3BSJJkaGeEQ9
 u4hJK+R9E2sfHJR6xtgWrTivNLYsy8C2GL7bBlj/+ndN8H/cTRf/SbuRoSjYiB7FGTOW
 xRzIzM6uB7PHUhpHRYNMg4y3vxpiqFEAaCHVduQNoGEyaIBPVFB3ow6WZgJiGHhumkoc
 HD7KkoLiWq51fPXWaNW8pQXIrYC9rKFTEjBPlKu0PF56QDGXDkzsDpOwUhDTfkJu0aXH
 DGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZhCt15B3uLAeao+GHzN5068S79fDWl+V7bhkaWPaFeo=;
 b=N9L9VXKfBqKndf7ni3oue27TGs/+u9W+68c25E9XrciofGCiUSF6tync+8giMJNLrA
 hXy/8SGmPuxnpHObyWbaS332jPPf6RuLe1ABP4BudlEJ15350cHs08dH7fY33R3RKFMV
 9OpGWlVqaz9uOMvsYhOeF7F8G+hjFKEzgSyNA1m4y3QnDpCfin7UiZf0txRpYtkOc5zg
 IErA5Pna6Fl81ib13F6bTkOy0Ef4lWDkfISEdzAxgDQw2HZCY2ZiE8sZ2O7qOLHd4UHT
 Df0oJFzc1k544fp846BT2tDHthR3P7S6/mMd2uojjcni9WBtXswyZeL5WbzkH+frPkmk
 o5Fw==
X-Gm-Message-State: AOAM532Ol4Rl6r1qyVrrb/q6hJiH/X1baKO4USb/HQmOmtbsGMzqj/4E
 wNXouZHOIMWfW6yFyQ7psXI=
X-Google-Smtp-Source: ABdhPJyTqnPijCFPE8t2sHXXpZGwdP1euWC4TAGoK7SpRByi2EISpR3FnzovjtQD2XjjbUNCuErWqA==
X-Received: by 2002:a62:2ad6:: with SMTP id
 q205mr16563573pfq.316.1595773268960; 
 Sun, 26 Jul 2020 07:21:08 -0700 (PDT)
Received: from localhost.localdomain ([122.167.86.75])
 by smtp.googlemail.com with ESMTPSA id
 a13sm12493235pfn.171.2020.07.26.07.21.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 07:21:08 -0700 (PDT)
From: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 2/4] staging: rtl8723bs: include: Clean up function
 declations
Date: Sun, 26 Jul 2020 19:50:11 +0530
Message-Id: <20200726142013.2891-2-aditya.jainadityajain.jain@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
References: <20200726141831.2662-1-aditya.jainadityajain.jain@gmail.com>
 <20200726142013.2891-1-aditya.jainadityajain.jain@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 Aditya Jain <aditya.jainadityajain.jain@gmail.com>,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up multiline function declartions in hal_phy_cfg.h
to improve code readablility

Signed-off-by: Aditya Jain <aditya.jainadityajain.jain@gmail.com>
---
 .../staging/rtl8723bs/include/hal_phy_cfg.h   | 44 ++++---------------
 1 file changed, 9 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
index 7e48abc4c760..3cec06e9f359 100644
--- a/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
+++ b/drivers/staging/rtl8723bs/include/hal_phy_cfg.h
@@ -25,37 +25,16 @@
 /*------------------------------Define structure End----------------------------*/
 
 /*--------------------------Exported Function prototype---------------------*/
-u32
-PHY_QueryBBReg_8723B(
-struct adapter *Adapter,
-u32 	RegAddr,
-u32 	BitMask
-	);
+u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask);
 
-void
-PHY_SetBBReg_8723B(
-struct adapter *Adapter,
-u32 	RegAddr,
-u32 	BitMask,
-u32 	Data
-	);
+void PHY_SetBBReg_8723B(struct adapter *Adapter, u32 RegAddr,
+			u32 BitMask, u32 Data);
 
-u32
-PHY_QueryRFReg_8723B(
-struct adapter *Adapter,
-u8 		eRFPath,
-u32 			RegAddr,
-u32 			BitMask
-	);
+u32 PHY_QueryRFReg_8723B(struct adapter *Adapter, u8 eRFPath,
+			 u32 RegAddr, u32 BitMask);
 
-void
-PHY_SetRFReg_8723B(
-struct adapter *Adapter,
-u8 		eRFPath,
-u32 			RegAddr,
-u32 			BitMask,
-u32 			Data
-	);
+void PHY_SetRFReg_8723B(struct adapter *Adapter, u8 eRFPath,
+			u32 RegAddr, u32 BitMask, u32 Data);
 
 /* MAC/BB/RF HAL config */
 int PHY_BBConfig8723B(struct adapter *Adapter);
@@ -64,13 +43,8 @@ int PHY_RFConfig8723B(struct adapter *Adapter);
 
 s32 PHY_MACConfig8723B(struct adapter *padapter);
 
-void
-PHY_SetTxPowerIndex(
-struct adapter *Adapter,
-u32 				PowerIndex,
-u8 			RFPath,
-u8 			Rate
-	);
+void PHY_SetTxPowerIndex(struct adapter *Adapter, u32 PowerIndex,
+			 u8 RFPath, u8 Rate);
 
 u8
 PHY_GetTxPowerIndex(
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
