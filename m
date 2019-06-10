Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D983AFE1
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D14C785329;
	Mon, 10 Jun 2019 07:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3VJKqSEhSwUx; Mon, 10 Jun 2019 07:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 809B98507B;
	Mon, 10 Jun 2019 07:47:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABC141BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A6D4586E48
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u+962ZjQ4IlP for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36A8C870F6
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id s24so3299870plr.8
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xnE1tlBu2kbYXLc95HkAjgT8yNbabZQrI1VSkDaFzEI=;
 b=pYbLX/yo36ag7vFIZqcLkJ6OPG89CSf9iwbVnKumGI8GSMXpjRM0H5n0SR/Lb9Zp0g
 h38lDl4uN46NOh9T4wUKVjXU52fJZvdujZo24nK4+cFBza5733whY4ZI06JQjecvcnUl
 39JcX0gKxuoeBM44S5YF6HxdMoGbnJqXb1rKYPVRf08iScPjZSMrdAw74qvqtUBrFTiZ
 fQy1/i5+P8+nVoBUsnQJP8GlcnWDY/scs+unHfpSom9NBmflw6PxvD62IGBzwwOQJx8H
 I2jUuL/AZz6MnJtPTdlOAaEx7ejv2i8tBEuy0Ed5YePuay7WO09ArZJFx85X1pSOQRP5
 gqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xnE1tlBu2kbYXLc95HkAjgT8yNbabZQrI1VSkDaFzEI=;
 b=TQYzVVc51OmaM0IZHCdpZWcjqVdlAUZIzqkdCTiGw0vNSH39JwL/iOKiCIX833lu8x
 LC6jClCN7ffkgMozSZ4lFYisAOQbIby41EjC/9DrzBOzlumkK9YwrG3K+pAPlvpgNXu7
 hsJFEGV3mD6/Y9rW5I5YNUko0AQoTkumghxgEcbqi/NU24VizMgXU4ZWPK55cRPwcZ2C
 wTU3KZrfYgyJWjPiFxARXZUYITP3Z7zypa2vCzjNF3OJZB9oPmvtZG6Lzzn016r8BntI
 VCXsB0q9Nv2s+zonL63N4YaOvVnHWS87VI/8Hut+7IDkgPtcS5CJ1J9SbdM6rr1hatgk
 m/Cg==
X-Gm-Message-State: APjAAAVP2bmoW2NlFvn8M7pGzcBSFLsCXXOuQJMJJkT0o0JLevNMKQwk
 SWqUKmX9vrsjwuZTceFlrVw=
X-Google-Smtp-Source: APXvYqzs24gKNf5rDhjt6JGh5RPrZbV9WiY+D5HoSwM1GT6Zrky4sX5cH5k7oB9tbQgMRv7Wl3QLnQ==
X-Received: by 2002:a17:902:542:: with SMTP id
 60mr47251658plf.68.1560152846902; 
 Mon, 10 Jun 2019 00:47:26 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 03/10] staging: rtl8723bs: os_dep: ioctl_linux.c: Remove
 return variables
Date: Mon, 10 Jun 2019 13:17:03 +0530
Message-Id: <20190610074710.15677-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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

Remove return variables and in multiple functions and return the values
directly, as the functions all return 0 in all cases.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of patch series.

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index fc3885d299d6..1d8f1907883f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2601,9 +2601,7 @@ static int rtw_p2p_set(struct net_device *dev,
                                union iwreq_data *wrqu, char *extra)
 {
 
-	int ret = 0;
-
-	return ret;
+	return 0;
 
 }
 
@@ -2612,9 +2610,7 @@ static int rtw_p2p_get(struct net_device *dev,
                                union iwreq_data *wrqu, char *extra)
 {
 
-	int ret = 0;
-
-	return ret;
+	return 0;
 
 }
 
@@ -2623,9 +2619,7 @@ static int rtw_p2p_get2(struct net_device *dev,
 						union iwreq_data *wrqu, char *extra)
 {
 
-	int ret = 0;
-
-	return ret;
+	return 0;
 
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
