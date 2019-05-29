Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6142DE10
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B1D986274;
	Wed, 29 May 2019 13:25:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ixXBFekIiop; Wed, 29 May 2019 13:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51B9E84647;
	Wed, 29 May 2019 13:25:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 353071BF238
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 31AB484647
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BeVbEAjaIbsN for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:25:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB3AC8453F
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:25:10 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c6so1622165pfa.10
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fc0bMmRDevQdvcZymPuPXJYIf7p7D4ZnMyLrt05NU1Q=;
 b=EhllIkwG6rXdSQe7QvJaCmmP69I4HJ5aCk+e6JLCT/uIwhqVWUQkV9ZlxJm+73DdqE
 FnZTc4ERk39gUsFBOAeUbbVuhUgDPOv2U4LtAlAxrhQx0u5Le0eRXyzZplN2HbAnbb7r
 KKyLv3svObFPiC+GWfqHDzmUSkBdY7FKjzABle/GARb4dLmRutCU/8nJD7y/QYtjNyor
 hw4YcIc1LBVBmZlXP2L2JxXsWc5cWp6CJBskKUjIoUOUvRWCNDwUx9NyY1C931W9LEel
 BcyZ0KwoQVlI6A7+goNb7viWimvwQNFLAKSe0aCuJ10YJvBf3Hz8yQi3wDXhPD/480Ch
 C89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fc0bMmRDevQdvcZymPuPXJYIf7p7D4ZnMyLrt05NU1Q=;
 b=BD6FnP02kxCq5SNnpuWlaqLmT6mLR+nib86EzbRt5GCCbTiTwj4WDVIPk+2/k9klja
 cnV2DvW1R/PlJ7/oYA19OgMfjwnWfsVgblo2VSbinsb5SMcvpnqPjfEDM+DDXM3g0ASR
 KN6Y9ST1KOmENstT5AimsMZVdCc0yCqESr7Wv5cufWXOO8NcYOkj9nXrAww8tebP026U
 slvf63qNmY//VwG7Ii2uGy1AIknoHooCdkh3bbJ+zvJ345I3r8VdVPafQdqmVcdrhaAz
 GYXLBi81vj3m6hrWGsOoCxO5cff4vWZmmglYAvJYVxVQ8Mn6A9ucOzkNecABCNVcvvGH
 Q35Q==
X-Gm-Message-State: APjAAAUVpYiBGFE15SrXheaz3KQQeJl0Wa/mQeGZqzxiN2POcj5BPJAp
 5hZYf40ENAUtTGL3S/hAwDQ=
X-Google-Smtp-Source: APXvYqz0h58Zk+4/mpryWNDyPJFYqURdAmcglB7phMR6hBDG9LWeOuIsrajsDXn56dZUX8G8uLPPDA==
X-Received: by 2002:a65:530d:: with SMTP id m13mr44176772pgq.68.1559136310405; 
 Wed, 29 May 2019 06:25:10 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id k14sm33057573pga.5.2019.05.29.06.25.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:25:09 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, himadri.18.07@gmail.com,
 valdis.kletnieks@vt.edu, colin.king@canonical.com, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Remove return variable of different type
Date: Wed, 29 May 2019 18:54:57 +0530
Message-Id: <20190529132457.6607-1-nishkadg.linux@gmail.com>
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

The local return variable ret may be replaced directly by its value,
especially since its type (uint) is not the same as the function's
return type (int).
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index a7230c0c7b23..b424b8436fcf 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1577,7 +1577,7 @@ static int r8711_wx_get_enc(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *keybuf)
 {
-	uint key, ret = 0;
+	uint key;
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_point *erq = &(wrqu->encoding);
 	struct	mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
@@ -1633,7 +1633,7 @@ static int r8711_wx_get_enc(struct net_device *dev,
 		erq->flags |= IW_ENCODE_DISABLED;
 		break;
 	}
-	return ret;
+	return 0;
 }
 
 static int r8711_wx_get_power(struct net_device *dev,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
