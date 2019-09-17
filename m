Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CC3B5064
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 16:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2AC1B1FE2F;
	Tue, 17 Sep 2019 14:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOYE6w0y3Md3; Tue, 17 Sep 2019 14:32:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAB9920781;
	Tue, 17 Sep 2019 14:32:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 226191BF3F3
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 14:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DDAF85C9F
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 14:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WMk-AO6xWyrG for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 14:32:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A31DE85008
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 14:32:07 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y22so2291470pfr.3
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 07:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8SUrqUEd8vhNQrC/UhQr9xGaonvbAM/B+mpfw/Rhjzs=;
 b=dtq2O9sKrO75cEIEu+YdsYP4ioxcIInMpQkLYsEJsng6xTiFCZiuhrn5QCnNfmL6jU
 72e543i04pnFy/CNhLfmBlC7d4PRYfGormxemji2+w+RD8Veu0OAJoGOhGvb7d3GistU
 x0x9BSuV3KJXcvoPfUQB3WFEWJVbHwsMrnreRA1c9+0hpWbmIuZQkECTnFLzA5t19JS4
 Y0TlxBptNV5EUygEMX+3ljLUZHETzqhTRj/dtMyfMMG3fbiKRNbJugwI2SLh8EhOMD39
 v71rqeoi8MLOS45GOJ4zxESGxSWLqaGabBxa3103IiSc46BYArkVMFbbL46blrJvy8xx
 UYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8SUrqUEd8vhNQrC/UhQr9xGaonvbAM/B+mpfw/Rhjzs=;
 b=WuC5hxTllIA4S1FuPfowbgz20f152mEx9dg2nxlElEaNP+qJGIfYWi32/G4WXGqfwG
 cy+pYKa7nvDlwdtSU5wuVXPCT7n8JSr06pxpmxeXD1sM4xzze7MV9SdocyEO+6tK55aD
 lNTPxK9zLp4XgfOq5388Gj7diT3XP2jtcppFnG727dbXoeOEy8ISDaEAkR2xlEhVqmsZ
 zpo9HoOUlM62Oaatm6ab3fLWWxrigNSbXiWVQLLzpUTL3LOwvvZID1N9DP8FJ9Z/+1XL
 e4ckNQaBMEEt8w8A9WKXBCKnMT+I94wvnP1lz5+vT60PdnsWmHdiyoT0X4vGb/yOW8LP
 RtPA==
X-Gm-Message-State: APjAAAUD3KpbH7uSUxf1oVIjdYL5ptrHineVtopD8v9c+ehhItGZYsQr
 XQfvmnNIEyrHKsXLYj2r+x1fSs4FmbY=
X-Google-Smtp-Source: APXvYqy472moAZ9uDaULskoS3Ol1soIvaM24WFqIFB3L85JOB7yXFaGSnQBICSQYnApViT6D3mKIRQ==
X-Received: by 2002:a62:61c5:: with SMTP id v188mr4671549pfb.194.1568730726902; 
 Tue, 17 Sep 2019 07:32:06 -0700 (PDT)
Received: from localhost.localdomain
 ([2401:4900:1951:77d6:cd84:5e38:4d0a:8c08])
 by smtp.gmail.com with ESMTPSA id s7sm2520335pjr.23.2019.09.17.07.32.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 17 Sep 2019 07:32:06 -0700 (PDT)
From: Aliasgar Surti <aliasgar.surti500@gmail.com>
X-Google-Original-From: Aliasgar Surti
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drivers:staging:rtl8723bs: Removed unneeded variables
Date: Tue, 17 Sep 2019 20:01:31 +0530
Message-Id: <1568730691-954-1-git-send-email-aliasgar.surti500@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Aliasgar Surti <aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Aliasgar Surti <aliasgar.surti500@gmail.com>

coccicheck reported warning for unneeded variable used.

This patch removes the unneeded variables.

Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index d1b199e..fa3ffc3 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2428,8 +2428,7 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
 static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
 						union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-	return ret;
+	return 0;
 }
 
 static int rtw_get_ap_info(struct net_device *dev,
@@ -4462,24 +4461,21 @@ static int rtw_mp_efuse_get(struct net_device *dev,
 			struct iw_request_info *info,
 			union iwreq_data *wdata, char *extra)
 {
-	int err = 0;
-	return err;
+	return 0;
 }
 
 static int rtw_mp_efuse_set(struct net_device *dev,
 			struct iw_request_info *info,
 			union iwreq_data *wdata, char *extra)
 {
-	int err = 0;
-	return err;
+	return 0;
 }
 
 static int rtw_tdls(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-	return ret;
+	return 0;
 }
 
 
@@ -4487,8 +4483,7 @@ static int rtw_tdls_get(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-	return ret;
+	return 0;
 }
 
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
