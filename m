Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A419C481C
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 09:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 56959220C1;
	Wed,  2 Oct 2019 07:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MN8HwW1pvgJE; Wed,  2 Oct 2019 07:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D499420525;
	Wed,  2 Oct 2019 07:10:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F093F1BF3C3
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 07:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EDF9881FCC
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 07:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 39JxkC_TE-42 for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 07:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 77F5380CE4
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 07:10:07 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t10so6710203plr.8
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 00:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=hiz03ihvDIP3JbHy9cKTXuWzCocElPXcaLcSc0thgOE=;
 b=kQ97X6p2w75AKc0MeUTmFI0xsvRNiqXE5DeL8AqstJ0gE70oLauQ/6g2/gRqndhP3K
 9gHhkbkIbtC66otREOiiTjrvzUcwGGCnutTcjed7oSElUfFGv+AUoZr0NjokbnlhURbx
 vlRyu6N6OLToQgNz+TtwFjiQxad8nfjgnJrdb3RSKuv0RbZ9TeNFARIiAojvZwPtcO29
 DMqUxvAZXzLwhLuXC/gnLoxwnETEdonZm+0zVM+mXr7vm2WffK4I5pwaTi6cTtZ+9SeC
 L1r6okkyNQ8SXxImPLG5CGhAplY8MDvWmFl7JpXv7vDxU5EzheOmeOwAKnulq3TmqeS4
 g9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hiz03ihvDIP3JbHy9cKTXuWzCocElPXcaLcSc0thgOE=;
 b=Mb38yv94R8PepaIfQhrHq1APzgakknbt/D3YA/p3vrMhjhbW09jIlElGmJPE/Wk7Zi
 kK8R8jE/rH/zA9FSEQbw4P/T3uDa1PdqLCrjnCc68EHe11RhWtz6r40ADTpaUROrJac/
 bmQYaBJ45UrKuqq1TmDREamsBTwvEBQUyEIiTpxPia6m+Lyn6clTgO+RB40YzZm3XT6K
 GlL8r/HEivtE46XK7KBOt/jcEekMCESepZSPT/z6cc6Qnmghxt0e5IcwtUBX/xHVhdmJ
 +H6qj6iXitqDEOkJxgWIah0bc3ciK2Sa7uFI7ukWa+U4BeAW+8+F/YsgKfEnI3yG4hAO
 a2Qw==
X-Gm-Message-State: APjAAAVCkjCP66Wtc0+sWsPUaP26b1Z06BjXv7Em7ytX8DG+XtCVYmmZ
 UE/1+BwXmQwCgFTjMvB3vbA=
X-Google-Smtp-Source: APXvYqyUEsPA8ZtUsEG6bO6jNwqVsDBj7fH45z5lP3RWexEUvlp8JUmOsMGGYhSfncqugs9Tp368+A==
X-Received: by 2002:a17:902:a40a:: with SMTP id
 p10mr2110788plq.149.1570000206746; 
 Wed, 02 Oct 2019 00:10:06 -0700 (PDT)
Received: from saurav ([203.109.108.114])
 by smtp.gmail.com with ESMTPSA id 62sm18124375pfg.164.2019.10.02.00.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 00:10:06 -0700 (PDT)
Date: Wed, 2 Oct 2019 12:39:59 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 mamtashukla555@gmail.com;, shobhitkukreti@gmail.com;,
 saurav.girepunje@gmail.com;, puranjay12@gmail.com;,
 benniciemanuel78@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Remove return variables
Message-ID: <20191002070954.GA14155@saurav>
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

Remove return variables, return the values
directly, as the functions all return 0 in all cases.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 36ea7256329a..5ec48ec926eb 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2431,8 +2431,7 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
 static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
 						union iwreq_data *wrqu, char *extra)
 {
-	int ret = 0;
-	return ret;
+	return 0;
 }
 
 static int rtw_get_ap_info(struct net_device *dev,
@@ -4465,24 +4464,21 @@ static int rtw_mp_efuse_get(struct net_device *dev,
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
 
 
@@ -4490,8 +4486,7 @@ static int rtw_tdls_get(struct net_device *dev,
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
