Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 115291933C4
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 23:29:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4383E87EF6;
	Wed, 25 Mar 2020 22:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9qepmT1W4a2m; Wed, 25 Mar 2020 22:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5949E876FF;
	Wed, 25 Mar 2020 22:29:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4973D1BF3F3
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 22:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3911B85BE4
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 22:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NEq9J0y5LdGv for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 22:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3FDCB85633
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 22:29:15 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id h72so1780345pfe.4
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 15:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=LyYXufOUFN5oWBOpcmZRLdaTepJDZ4LbjSQe+KjRvBE=;
 b=I0LQdQfYqfNHczc5FQJqWphRXlzTHmVhPGME+4aT+Ilzoe8LG3uOCvcu28FImaWJb/
 ioLl16u2QiATn4zBW7UhDlJLfax8+0z1CHkw+aKwhU2QKAxS+oYyY24YZhtOaIf1fz0x
 R7U2Zl12Yb9fA67w6yzcdbvksYK/jrEKu8+7L988J04CgE6QYM8XR2yBx1WeRsLJGrR6
 ST/YLPsroAsBaLG+BmmQWPMz/EHFQtX6sjxr9Urd7HC0WOh0y5Of/AO+FzSXMD2B/0hi
 ITbX7G4tNsJK5VoeM1kfVcjo9esgd92BTt+pR/oAGpl5gsVOqcFE8uUwmff/eDQHIMGi
 Stlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=LyYXufOUFN5oWBOpcmZRLdaTepJDZ4LbjSQe+KjRvBE=;
 b=NlncbC9Q3VmQ+/4J94FUk3YZOe9QYH3hkvkpJwW5ezKcGoXLY6wIwPeczM2rUIn7Ep
 ppxFnTV1TNy2FW8uGUQFDBF6UxYYmqfobV6tPeEf+h2Mi6AjCJhpFnJNn4VYKhrHrs3y
 SOdQYHot9zGJa9WeTdWpRU+8DpmKxrP+1scn8L3XzcPB3WBUefEx9WFmqCV63iPQmRMg
 8hJVYpCORuWh7oqifmHetbKkS51mt7ZGjC2tpQa/5LCMP1IQrwV5yptS98TtxG94R64U
 GklQruHapJMwJnkVUpAVEKwHwreqhnwDoUD0AQ0U5zVHhm0YZ7K4Bjw3wytibjh80PFy
 iuvw==
X-Gm-Message-State: ANhLgQ16KIv4pOpTXdDQVi1Vs7Sjil/NUj2gDIqh6xKh+U4ZCfoAFLtn
 /lUXWsy2vDwmlJrwJ0nhQXYXvmvS4BM=
X-Google-Smtp-Source: ADFU+vskN9dl4CYBR4iDfuGwX4JISYcceiwBsa4I0J+YF6SJDdgg9p3v8JvtXd0mzKn7fMZ2j1IUKg==
X-Received: by 2002:a63:ef41:: with SMTP id c1mr5068479pgk.195.1585175354567; 
 Wed, 25 Mar 2020 15:29:14 -0700 (PDT)
Received: from simran-Inspiron-5558 ([2409:4052:78f:bb47:8124:5e4b:ea06:7595])
 by smtp.gmail.com with ESMTPSA id
 k3sm129301pfp.142.2020.03.25.15.29.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 15:29:13 -0700 (PDT)
Date: Thu, 26 Mar 2020 03:59:08 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: rtl8723bs: Clean up tests if NULL returned on failure
Message-ID: <20200325222908.GA5370@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:
@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 29f36cca3972..5c27c11f006a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -474,7 +474,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = kzalloc(wep_total_len, GFP_KERNEL);
-			if (pwep == NULL) {
+			if (!pwep) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
@@ -2137,7 +2137,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
 	param = kzalloc(param_len, GFP_KERNEL);
-	if (param == NULL)
+	if (!param)
 		return -1;
 
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
@@ -3491,7 +3491,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = kzalloc(wep_total_len, GFP_KERNEL);
-			if (pwep == NULL) {
+			if (!pwep) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
