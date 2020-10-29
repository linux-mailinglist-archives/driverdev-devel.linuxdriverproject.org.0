Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C5C29EB57
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 13:10:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C2C6875CF;
	Thu, 29 Oct 2020 12:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMbtrjOtQW0c; Thu, 29 Oct 2020 12:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2C9F8739C;
	Thu, 29 Oct 2020 12:10:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64CA51BF3E1
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5DC9986C2C
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 12:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWnRK0n1ovQW for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 12:10:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B4C7086B15
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 12:10:51 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id t14so2185554pgg.1
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 05:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g3zwufxytovsv4kTwRU+SnKdZVRbVzOWxEcKZCYZJzA=;
 b=qMPSaiNsNNw1cLS/+knNFxPSAew/E3ROh1Rj3BJT2ujT/W6pNbKKGjfL5qh75gWxLW
 dzFRoWfhf3GYOnbEomh0cdRia4e24Fsrie4SI+r2ydiJ3ndOMY4sZm0puPCaBh+Q+CLS
 jkpraxFWJGESt8U57TNgsvwZqjdgM6NpcHi7xC3sxIHyKA/2LLIccSD441m1yS1RgTZ1
 syi9r1TBjFqSnDHRfcQHRhj6dmgZwATX7x+npojGAh1rxS9XLtBpJXS6CgyuMLW6iEag
 w/CDn5gA05HJLjKG5JSH9O3yo4m7HiSHcQ84WXhiew6sRuHV3MjNGU4VB2kFWGifJNBt
 4P6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g3zwufxytovsv4kTwRU+SnKdZVRbVzOWxEcKZCYZJzA=;
 b=YWqPwOQuPBSueWDidir59UtZjlQHp2G0T8VKy8EyXZgOXu62PYO87qG+DAFp01FsN1
 npnSiNDT0BOCZmbludE8jvXbQ9jUdF+FHn0Yc5dklOr3Z2iScfNBuwwo4lipT+CuaulM
 WBIOTfPcwDBloYCqeih1Y94FPa7Pi3OYR7kJgtWKg7ftE75ODGItWdz5t3yDwfkkybrE
 xdKCBkemPv+907I0r0MPxk1y3rqA+mqGl3uZ2ACLYke/ANIMc5LbyFA7E7+jt0w7n4cR
 32y13mUEMgIOmUaiPo5KcCoqo0uzAwkbN3UhGjxKDYuXjVavhQJr2idTi26FrIq1pPkc
 QXtQ==
X-Gm-Message-State: AOAM533piCKzkE52qzRpjdtKzYyPWyV17aGEZhgX1S53YiNTcKpO1ZyG
 0iJ8Z7n0x0YXo0bxXjmZB7w=
X-Google-Smtp-Source: ABdhPJx/V53I2aR34hRM5gw1I0M+6niOr2UOg5NebdJphF9Ww4O/OwCYFcBKYY1A1+in6Sg0d/FIDg==
X-Received: by 2002:a17:90a:7e4:: with SMTP id
 m91mr4322725pjm.47.1603973451313; 
 Thu, 29 Oct 2020 05:10:51 -0700 (PDT)
Received: from localhost.localdomain (sau-465d4-or.servercontrol.com.au.
 [43.250.207.1])
 by smtp.gmail.com with ESMTPSA id d10sm2528713pgk.74.2020.10.29.05.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 05:10:50 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2] drivers: staging: rtl8188eu: Fix spelling in two comments
 i.e defalut to default
Date: Thu, 29 Oct 2020 17:37:25 +0530
Message-Id: <20201029120725.11666-1-unixbhaskar@gmail.com>
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
