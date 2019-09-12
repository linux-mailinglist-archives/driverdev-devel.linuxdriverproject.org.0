Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FE6B1185
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Sep 2019 16:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D58888733E;
	Thu, 12 Sep 2019 14:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRKjgFEW4TLL; Thu, 12 Sep 2019 14:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF75B85BDF;
	Thu, 12 Sep 2019 14:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0C8C1BF389
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 14:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD8102051A
 for <devel@linuxdriverproject.org>; Thu, 12 Sep 2019 14:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OCWz1ZYNursg for <devel@linuxdriverproject.org>;
 Thu, 12 Sep 2019 14:53:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 91B3C2047A
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 14:53:59 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y22so16195536pfr.3
 for <devel@driverdev.osuosl.org>; Thu, 12 Sep 2019 07:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=IoVQbDWNnJatefEpHqNwx0WsYWf336HdB6z2aMcmRsw=;
 b=nw349E/CNvfCA91fOtroRLu+ZJo+CKztPvu3Kd+BEV3y/QPUx0cqnfwUrpGXx9uoD/
 qYiY151cKeJ0lhdAL5e7KOAs0ZXVT/aiFrDqZ0wiFE8k43zZtb4Zdczi4e0pPGGId63c
 aXJTcJPQEeGUS7+/cEHLhUGUCQD93FstTWCFv8RCuR7WqavU9q6uwNZ+qBQVtpoFGXJR
 AH/2Lg/fellVghCHMFAz9y3vwKSzXhnhi8ldUgXrkVYLgrVQVe8lrtM9nz3VbN70E6D2
 8ANSwz3VHRbXdizNqgRwUqHapo7PLk+rUKBQxIaQimpvO9bikMLi89M50aKKNMLdUZRV
 3EfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=IoVQbDWNnJatefEpHqNwx0WsYWf336HdB6z2aMcmRsw=;
 b=RY6MhK03jc0b+CfgSOZECfDgy6r5TPMaRmLmbfh1sulmo2a1++M6c8eK2rPkf0xmuE
 UBWpfBD3LJayHKbXHmrseA75YbFYcRjWl79dVUPxOcSAsKGcJYuttFQAMankbtgriNuR
 7TP6Rkn13mOA5XMnSGi3AGl98o8Q6zfjAzJ6bqlQhab6hVDU9ToLrALWWH1ee97CsPjN
 RbHElziXIduIlzMyPnK4YYZPKjpuaGYhIe99Dja4a2maFHlVq01XpIgT8LnpxeIH5QKw
 YqZkdVVEwbEKcDmro8xC58xHTbuCBjcabbp9DCj+DoT6VfsvsquTFMWGotI0wnxBh6KC
 K1Ig==
X-Gm-Message-State: APjAAAU2dPwxbERLRd3OdeqHkuKa5MuVtMrYPf+/DfRsBi7jTTR6L66J
 aKmxo6tdLA5JU1G+hTsJGqM=
X-Google-Smtp-Source: APXvYqw1F2M79KnIG0E626caFbEoEpZa3O4KYrHAsA4ii2llTtOrrjSee5SYWTpqc46st16qwPZJLQ==
X-Received: by 2002:a62:d4:: with SMTP id 203mr49117982pfa.210.1568300039107; 
 Thu, 12 Sep 2019 07:53:59 -0700 (PDT)
Received: from SD.eic.com ([106.222.12.153])
 by smtp.gmail.com with ESMTPSA id x20sm12871036pfa.153.2019.09.12.07.53.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 07:53:58 -0700 (PDT)
Date: Thu, 12 Sep 2019 20:23:46 +0530
From: Saiyam Doshi <saiyamdoshi.in@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove unneeded conversion to bool
Message-ID: <20190912145346.GA9013@SD.eic.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Relational and logical operators evaluate to bool,
explicit conversion is overly verbose and unneeded.

This issue found using - Coccinelle (http://coccinelle.lip6.fr)

Signed-off-by: Saiyam Doshi <saiyamdoshi.in@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 2128886c9924..3bca37e70f5f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2922,7 +2922,8 @@ int issue_probereq_ex(struct adapter *padapter, struct ndis_802_11_ssid *pssid,
 	int i = 0;
 
 	do {
-		ret = _issue_probereq(padapter, pssid, da, ch, append_wps, wait_ms > 0?true:false);
+		ret = _issue_probereq(padapter, pssid, da, ch, append_wps,
+				      wait_ms > 0);
 
 		i++;
 
@@ -3513,7 +3514,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 	}
 
 	do {
-		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0?true:false);
+		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
 
 		i++;
 
@@ -3661,7 +3662,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 		da = get_my_bssid(&(pmlmeinfo->network));
 
 	do {
-		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0?true:false);
+		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
 
 		i++;
 
@@ -3769,7 +3770,7 @@ int issue_deauth_ex(struct adapter *padapter, u8 *da, unsigned short reason, int
 	int i = 0;
 
 	do {
-		ret = _issue_deauth(padapter, da, reason, wait_ms > 0?true:false);
+		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
 
 		i++;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
