Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAF14AFC4
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 03:57:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A037A8598A;
	Wed, 19 Jun 2019 01:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fFAvxkwKu2T; Wed, 19 Jun 2019 01:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CAC785AA1;
	Wed, 19 Jun 2019 01:57:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 416771BF276
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 01:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 397D387A5E
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 01:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6IxxpNrTtVp5 for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 01:57:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9866B87A34
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 01:57:49 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k8so5510313plt.3
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DtzpsEMmA6y/VxThJKdgqPMw4atSdDvUpiSanqf0lPA=;
 b=BaZDV+wO6ImusZDj4cQOtLE/OFaK6teBN6YPViixSjyaqIfOfVDmWt4qSgmzzhO+4l
 rNjno/gyW56AzTXhsLEU2m80JQu5u3gt0iyt5S4gcCBEeJOPd73ZmQU9quFH24SI34JH
 7WoKEt/tJYcpT7wPqtAlho2FcVvDYTAWp35Ceug20SqujuXlyrPHvtcfWKKrvQmJ0tFM
 BzRDlhCHPWigZsI6exq4gGrgvxlaK5Oww/q5T9nIReszwzKWtRLtkhR3jyPmLz7FDJHN
 sQQn9lqef32jdMlxDCVKz/4FoBQfawT+KNALwX4w7UqNsCT2KwdIQli5YuPEMO424jF2
 3AVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DtzpsEMmA6y/VxThJKdgqPMw4atSdDvUpiSanqf0lPA=;
 b=lPgz5piVE0IHy7pCxt3F6A/zLb571XZrA2MD2BQtZbVHpwhbCRk2npftXXLG9T5OT+
 d19W1I915QzeOO5Jums+4X3bqQy7IT+J1gMbXUeAStyo8p71tm40Fj6fOAoLmn/O1Whh
 HrdU/77Pvj2+1tTizfDaZ+Y0KlREPC72P7HTt9i8qkQERTY0sZ2KhdPM+yfQYEx63qnt
 mynM2GGjHPNY8pYNL4aZ9vnKRA2/Jhpd0T03bOpIsqUdcXY8WNfjYU3IMdfeLaotEyLr
 lqGjksQP6XRXO/9Bln7YTXqn+DXvsnhe71aMZzqE24IwxWsW0gKV0vOhD+trAeqOS254
 gPnw==
X-Gm-Message-State: APjAAAXv0jHE9GHFdllONy5R9ZODxAxg5ylmleDezqLjxW1N5kLVcSWl
 rNMtJjb/JSNezgw9pZ94BxA8jaYA
X-Google-Smtp-Source: APXvYqzTSbLGX2f1sPruiEJLHqdG195QU1uWlsCYUFCHOYHVqgjZtiO1bcEion3Xsh87njq+2dMDlQ==
X-Received: by 2002:a17:902:a5c5:: with SMTP id
 t5mr118819238plq.288.1560909469154; 
 Tue, 18 Jun 2019 18:57:49 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id x26sm14327540pfq.69.2019.06.18.18.57.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 18:57:48 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:27:43 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Straube <straube.linux@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v3] staging: rtl8723bs: os_dep: ioctl_linux: make use of
 kzalloc
Message-ID: <20190619015742.GA19278@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

This patch is a cleanup which replaces rtw_malloc(wep_total_len) with
kzalloc() and removes the memset().

The rtw_malloc() does GFP_ATOMIC allocations when in_atomic() is true.
But as the comments for in_atomic() describe, the in_atomic() check
should not be used in driver code.  The in_atomic() check is not
accurate when preempt is disabled.

In this code we are not in IRQ context and we are not holding any
spin_locks so GFP_KERNEL is safe.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
----
changes in v2: Replace rtw_zmalloc with kzalloc
changes in v3: Add proper changelog
---
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index ea50ec424..e050f20 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -477,14 +477,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = kzalloc(wep_total_len, GFP_KERNEL);
 			if (pwep == NULL) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
@@ -2142,12 +2140,10 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 	int ret = 0;
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
-	param = rtw_malloc(param_len);
+	param = kzalloc(param_len, GFP_KERNEL);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
@@ -3513,14 +3509,12 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 		if (wep_key_len > 0) {
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
-			pwep = rtw_malloc(wep_total_len);
+			pwep = kzalloc(wep_total_len, GFP_KERNEL);
 			if (pwep == NULL) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
 
-			memset(pwep, 0, wep_total_len);
-
 			pwep->KeyLength = wep_key_len;
 			pwep->Length = wep_total_len;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
