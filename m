Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A4BA2BA
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Sep 2019 14:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7A3D87522;
	Sun, 22 Sep 2019 12:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F2U6LFJKkeCE; Sun, 22 Sep 2019 12:52:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25D5486E1D;
	Sun, 22 Sep 2019 12:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9DE61BF86B
 for <devel@linuxdriverproject.org>; Sun, 22 Sep 2019 12:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8C7120356
 for <devel@linuxdriverproject.org>; Sun, 22 Sep 2019 12:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOEDSSlBizPt for <devel@linuxdriverproject.org>;
 Sun, 22 Sep 2019 12:52:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 522C020017
 for <devel@driverdev.osuosl.org>; Sun, 22 Sep 2019 12:52:07 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 4so5210383pld.10
 for <devel@driverdev.osuosl.org>; Sun, 22 Sep 2019 05:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=sKLhScCWgOfsDXVlInbrZuKIpT4hRH+qtOuuqQUDEG4=;
 b=lyQj8ZJbgU9JzaUunvCjn5Y+xu8s74D5ExHqVym68YZt8gJWEf3GXWuQdzSrNbdvUm
 v7b90YeniA8RYbZPA57OnT0A/GgUtykLzEFXY3sFFbZ4HFVfZgGQs83aydDN7atNLsna
 t6Ff+OaAzm1+tbhL/PSM6/bod5qSUwRXwEdNaSr6NcyM4Ir4UFZq8rnFfWzeclAOfsHW
 1qEQyeFHW12L7leNo4E42ayYpEILF3fheyXaBr1Mecbl6bCYofJrGb/hdUwP6RBw6/jH
 L6OVh/D4/ONeboKADMDST6cWfaSC7hbnWdVPM2BsNw8JskfG4Yz4G/480KC5w3ZUnzsP
 63jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=sKLhScCWgOfsDXVlInbrZuKIpT4hRH+qtOuuqQUDEG4=;
 b=eSTuYvdiTY5UvwdYHuhKKNnJ+piDnKC7rPr7B4BjGuyLHvRGJJy1LFFZdwxbbE+Pje
 4vgwyb5DR90SyzqdOB9pnb03MIRMy7RHKwyAeI9BGqs5Q0cbNFyeIN26LZy3xuFi6USr
 QCk+Sen5BjBZSfZfTqepJe2EBrTOZ2PxBdAli5l9IuX4zJbWo2L1GWbIrCXF8YZoXIJg
 e6XQsQhdYG7MymSaNwGNt8hKtJq5C3mo3M2BqyV/du2siPbS1pyQ3QoLaego9HZfA6U6
 Phn/0qZ3gfb4x5Z4URgxnEfera1VARPZ7AIHc1GleEhWX1UeB3d1w6tD4ZFNRPXds8DB
 XXjQ==
X-Gm-Message-State: APjAAAVbpiB9PuelCLaaRstW5NBDSiQZZBXShUDVR1vKld7lLByt9MDj
 fvWq+aU4QgWofCi/gYBaDms=
X-Google-Smtp-Source: APXvYqzMwSECk5c8LD5zaFuzap+XiIEElaF8lk/6/i9scd9+C4tiGmxZbeWrY56oEfcXcbEOfOr/5Q==
X-Received: by 2002:a17:902:8f88:: with SMTP id
 z8mr13445780plo.232.1569156726765; 
 Sun, 22 Sep 2019 05:52:06 -0700 (PDT)
Received: from saurav ([219.91.183.19])
 by smtp.gmail.com with ESMTPSA id n8sm13548552pgt.40.2019.09.22.05.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2019 05:52:06 -0700 (PDT)
Date: Sun, 22 Sep 2019 18:22:00 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 mamtashukla555@gmail.com;, benniciemanuel78@gmail.com;,
 shobhitkukreti@gmail.com;, puranjay12@gmail.com;,
 devel@driverdev.osuosl.org;, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove unused variable
Message-ID: <20190922125156.GA31623@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused variable ret from functions rtw_mp_ioctl_hdl,
rtw_get_ap_info, rtw_mp_efuse_set, rtw_tdls, rtw_tdls_get .

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 90c2997256b7..a51009963295 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2433,8 +2433,7 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
 static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
 						union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-	return ret;
+	return 0;
 }
 
 static int rtw_get_ap_info(struct net_device *dev,
@@ -4467,24 +4466,21 @@ static int rtw_mp_efuse_get(struct net_device *dev,
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
 
 
@@ -4492,8 +4488,7 @@ static int rtw_tdls_get(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-	return ret;
+	return 0;
 }
 
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
