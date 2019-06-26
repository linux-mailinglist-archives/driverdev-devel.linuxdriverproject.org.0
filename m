Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2E95629C
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A568921541;
	Wed, 26 Jun 2019 06:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JCP3DnGft1lm; Wed, 26 Jun 2019 06:51:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4AC3D20402;
	Wed, 26 Jun 2019 06:51:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31EA01BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C80520489
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b2PLyBuS4x+i for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:51:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1194F20402
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:51:10 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id i2so880266plt.1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pXvI1u3xdlDboq+axvmFtcJYUuQjCD9/XGOtA1Fh2PY=;
 b=QAiX46x1/WHBoIXesPhnKwIe8Upx4AuH4agQO9jkt6Z7OuBrtSm93WKqYoeVYTGlN0
 BZps9HnJ+Ww51vOIE2c8npgt5UIkcCgDaJvT/hy7JLZ+vAU81FLX5nW1twO0qLAX8Bd0
 PhPlaQ8f7XhtyJ0BNO0VkqG6cS6AxZf3VjTM+b0P4B/6fqlrOQpEiGmf6Jbr3S30wUcr
 NY1Wxgg9xquc/yyNMVdGX9a1b15YHDUd9l81/k4C3LNhfcPiOZvhpnH/R9Crx/+jFOng
 so7anQQspcDwVo8ng7p+NjPZwqeqPQdmn6lZJbZNGiIU/cj2Z8Oe6aRvRt/WP5baACQv
 FUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pXvI1u3xdlDboq+axvmFtcJYUuQjCD9/XGOtA1Fh2PY=;
 b=dpld98p99T6XLZi+KM4t/y8wVhug3oXVgqKJqJY45oPJylhl2enpj6B2X8hKNFSBE/
 D2Q90YJFu6yVxCZV6a/yf+zOPu30G8wn9rJm50riu497ljv/3fHahpekUamt0cAuOMVd
 1gJ80HNpqhSBut0d9vyKwsgdfPAWE004ZcnyHpRzilS3aHEXFrBCSeFUVPKPs4TWvx+f
 jtsLYnRpg3a4mDFQKbDenwDLgTXVMsqcoLoW45NmyPEEFRJWk8YZAtTdeehnC++ZgAaJ
 7rYCp+RVw3rchz3LjRpH6VaiIF5Uz8Mq78peZc9MuDDlIKp/OhdmRdbS/fsdFnu85Wxh
 3vmA==
X-Gm-Message-State: APjAAAWF7yXaWzMMXwqpM/qbh+f67mWXbpJ6nmIYKoSgEPphR3wtrhtn
 +zUNCri3NHzD46RGHn1fNrU7ZM3w
X-Google-Smtp-Source: APXvYqwjev9GcSkWUGziUe8O/hZkL/KSoMq3bnUNGSm0ucXmqLZEkq5mJ1oPIsY8G4LYkmyPlaijYg==
X-Received: by 2002:a17:902:6b44:: with SMTP id
 g4mr3521784plt.152.1561531869815; 
 Tue, 25 Jun 2019 23:51:09 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id y23sm21734625pfo.106.2019.06.25.23.51.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:51:09 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 larry.finger@lwfinger.net
Subject: [PATCH 1/4] staging: rtl8188eu: os_dep: Remove return variable
Date: Wed, 26 Jun 2019 12:20:54 +0530
Message-Id: <20190626065057.3252-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove return variable as its value is not altered between
initialisation and return.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index eaa4adb32a0d..f47e51a6a5ec 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -1686,7 +1686,7 @@ static int rtw_wx_get_enc(struct net_device *dev,
 			    struct iw_request_info *info,
 			    union iwreq_data *wrqu, char *keybuf)
 {
-	uint key, ret = 0;
+	uint key;
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	struct iw_point *erq = &(wrqu->encoding);
 	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
@@ -1744,7 +1744,7 @@ static int rtw_wx_get_enc(struct net_device *dev,
 		break;
 	}
 
-	return ret;
+	return 0;
 }
 
 static int rtw_wx_get_power(struct net_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
