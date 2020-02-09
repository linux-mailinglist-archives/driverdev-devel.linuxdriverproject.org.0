Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8ACE156982
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Feb 2020 08:30:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6DF9C20498;
	Sun,  9 Feb 2020 07:30:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uAY5WlHLzjHd; Sun,  9 Feb 2020 07:30:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 455F820425;
	Sun,  9 Feb 2020 07:30:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2ED831BF47E
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 07:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2BC4B85D87
 for <devel@linuxdriverproject.org>; Sun,  9 Feb 2020 07:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yjwYp3e5Ah4w for <devel@linuxdriverproject.org>;
 Sun,  9 Feb 2020 07:30:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8251484C19
 for <devel@driverdev.osuosl.org>; Sun,  9 Feb 2020 07:30:35 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p14so2047050pfn.4
 for <devel@driverdev.osuosl.org>; Sat, 08 Feb 2020 23:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=i6c4ajB0byWPJ06ve4SP5K+1K+7fCBEo+yp1/6dDLBQ=;
 b=kWnaSTXHrC3pxjSMs5P5FihjPUClz44l1qiKEVsAL3vkH1YkTE8RxrP3lXgrUWhEv/
 UV/HxP1cEGKEkoGfFiuDRrujvyHYmxImWvVa7gwz4Nc0s+cWOmxnQYHwAMWNUO7KEIf2
 sdQ39D8jHP7AXqUKt6HiTC32zkALVSFU0RxqziFMc5W7H+kZJuXbhZwihoVW4rZrhMlI
 +xUh8oLYkgGl6CgQ6VDLa6qbccp4e+c7K6y+d+N/zkJSPQbQzq4Mp0gnii9nNA1Lgeoj
 iDKqB8+tblqet2X4PTDfwXbmMZfa1a7IW71RH27IGqOOXJOaB0UGjGDj5Cq7YZvwulgE
 SL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=i6c4ajB0byWPJ06ve4SP5K+1K+7fCBEo+yp1/6dDLBQ=;
 b=m0UwGdN8LVQEB5HXPjagtlMcw49H7Q8lZkY2ODUk4TFGeqYMX3uG+fl+AyLCdRoess
 WLb1dLUMS7JNtXyGpHFDDJpt1q5LbdmxvvUxGE+3NFJYLXF3zUArYAv0XC7+6oGIN+Dd
 m6tZ/lgoAOP5XLGYF8OinTO672d7+hrwuY2podKzXuG+YyDa5zhzzb1LaTseNnwZJHS5
 JCVvkpVVi77QuB+o7hqV9UBh/YKEKzg/hUH8pFC0sHfSmerWIRG7WRRowZ/m7bZvwihu
 eaBzFeyC7Azd2h5+2uiFbeWFszNX8QLJNHJpJ3mfWI1vAYptNDdojmYZtVPkE/Ae6PVX
 9t9g==
X-Gm-Message-State: APjAAAX7cLoJ15zsvmqLf0m25StUbasEddd5YrFfGm41R5EQhQYVnyi8
 tyOzdtPafecj0YmdeG7FlL4=
X-Google-Smtp-Source: APXvYqwcLYYetk7CRcfgk9lDxq9i/7UDndI37XN+YcDkRoRkLXdKOkrNqkK/lQ8c50FU6dr66/7hDQ==
X-Received: by 2002:aa7:85d3:: with SMTP id z19mr7453734pfn.62.1581233435088; 
 Sat, 08 Feb 2020 23:30:35 -0800 (PST)
Received: from Kaladin.localdomain ([106.51.85.240])
 by smtp.gmail.com with ESMTPSA id g21sm8960330pfb.126.2020.02.08.23.30.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 23:30:34 -0800 (PST)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: Add space to fix style issue
Date: Sun,  9 Feb 2020 13:00:20 +0530
Message-Id: <20200209073020.13423-1-sylphrenadin@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the file r8190_rtl8256.c to avoid the following
checkpatch.pl warnings:
	CHECK: spaces preferred around that '>>' (ctx:VxV)

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r819xU_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 555e52522be6..37b99cf4b35f 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1531,7 +1531,7 @@ void rtl8192_SetBWModeWorkItem(struct net_device *dev)
 		rtl8192_setBBreg(dev, rFPGA0_RFMOD, bRFMOD, 0x1);
 		rtl8192_setBBreg(dev, rFPGA1_RFMOD, bRFMOD, 0x1);
 		rtl8192_setBBreg(dev, rCCK0_System, bCCKSideBand,
-				 priv->nCur40MhzPrimeSC>>1);
+				 priv->nCur40MhzPrimeSC >> 1);
 		rtl8192_setBBreg(dev, rFPGA0_AnalogParameter1, 0x00100000, 0);
 		rtl8192_setBBreg(dev, rOFDM1_LSTF, 0xC00,
 				 priv->nCur40MhzPrimeSC);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
