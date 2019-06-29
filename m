Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAA95AA11
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:19:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 39407204A9;
	Sat, 29 Jun 2019 10:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p4iVBqfLfacT; Sat, 29 Jun 2019 10:19:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFB9E20499;
	Sat, 29 Jun 2019 10:19:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45DA51BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FF7385DFD
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8QRByNH4OzcN for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:19:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 695D685DCF
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:19:14 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id 9so3872503ple.5
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=66nQjAJxmJvEqdK76xbS0v4Awl8Ld4jHNoG2MYlrSPc=;
 b=hSiTJ0VH2LR8cD4eJvD9GFiE8771rr/Wd0rwQVye9hTyXBYynhUsJK21v3cZ5R4HbD
 cQAgS3qiSbsEu5XjEtG47z6H0i2gfSO914VH4Us4NOFg8x9yQudP+BHtgVnNt7rBJXFU
 ZUZB+0hWO3/OwM6iOax3YNg6AZBp1su1VZ7AJsI8EMSUK61be8ney6l2xXtpKg86PnCR
 m+U0Xzexx3snRiAwQRrQX/JUqBQ8Eg8FBrj2IhZQu0gRO94f2yIkbehUlA0DShHmLWxz
 +pcUsvJw0GZIu+63MRRMc1twS/hJ6sOBL7ap2QLqQP2uxQ3egf0YfvmzdQBiVRjs8PDC
 sKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=66nQjAJxmJvEqdK76xbS0v4Awl8Ld4jHNoG2MYlrSPc=;
 b=fhHH24YkDUbuI/HOK9sks02/BRPhtHOhWcD2zsOG3yunh755wxFU+4JJVAwsUBvP6S
 D5grvNsrtyUvd6upo0iheMEx3Dyj7rbfImoyV1QC2HVNZcJYKZWY9XBaXxWLVAfN5VqS
 y1NgoKcpHtr44VH3mMYpnGD/hEVekWn0plEZXmHGlmCaBfCZAbyMDCl65Z/UG1yI8eRR
 mge0Y1I8mCAhkWTuQQghhh2q+Zn0Y8ps5eWFdQe/88xmdyvUqseLK4JT+iOPI3/Q9dFS
 +Q5UlZISgJZHDmZfc6Kzc6i+w5O5KSCB4z/uKTgWHSldrePsDGgUdRd9LW3H6HrEVEIw
 gGyg==
X-Gm-Message-State: APjAAAUFs5WGEQXGY0S/5CbwMjkPHg1hf3UUQjKh6j2M+MOxsUmYzu9L
 uZCMt7KQ3CtV/dqPmLooZzw=
X-Google-Smtp-Source: APXvYqwfqiCBofp4EV/LyHS60DAP50fcMYoXiAq34ZMr1M4xaFUUCRyg0J/wRkSIB7P3M0mv4xA4uw==
X-Received: by 2002:a17:902:290b:: with SMTP id
 g11mr16690707plb.26.1561803554032; 
 Sat, 29 Jun 2019 03:19:14 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id x26sm5907869pfq.69.2019.06.29.03.19.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:19:13 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:49:09 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 01/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629101909.GA14880@hari-Inspiron-1545>
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_intf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index 4a4d17b..b9d13e3 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -230,7 +230,7 @@ s32	rtw_hal_mgnt_xmit(struct adapter *padapter, struct xmit_frame *pmgntframe)
 	/* pwlanhdr = (struct rtw_ieee80211_hdr *)pframe; */
 	/* memcpy(pmgntframe->attrib.ra, pwlanhdr->addr1, ETH_ALEN); */
 
-	if (padapter->securitypriv.binstallBIPkey == true) {
+	if (padapter->securitypriv.binstallBIPkey) {
 		if (IS_MCAST(pmgntframe->attrib.ra)) {
 			pmgntframe->attrib.encrypt = _BIP_;
 			/* pmgntframe->attrib.bswenc = true; */
@@ -430,7 +430,7 @@ s32 rtw_hal_macid_sleep(struct adapter *padapter, u32 macid)
 
 	support = false;
 	rtw_hal_get_def_var(padapter, HAL_DEF_MACID_SLEEP, &support);
-	if (false == support)
+	if (!support)
 		return _FAIL;
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_MACID_SLEEP, (u8 *)&macid);
@@ -445,7 +445,7 @@ s32 rtw_hal_macid_wakeup(struct adapter *padapter, u32 macid)
 
 	support = false;
 	rtw_hal_get_def_var(padapter, HAL_DEF_MACID_SLEEP, &support);
-	if (false == support)
+	if (!support)
 		return _FAIL;
 
 	rtw_hal_set_hwreg(padapter, HW_VAR_MACID_WAKEUP, (u8 *)&macid);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
