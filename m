Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B6D269A53
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 02:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A5DCB20474;
	Tue, 15 Sep 2020 00:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XGRAt63QS3f; Tue, 15 Sep 2020 00:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C034A20466;
	Tue, 15 Sep 2020 00:18:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 589DC1BF968
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:18:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 557B885D21
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:18:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rZ7T9wzlymlc for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 00:18:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B670A85C56
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 00:18:42 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id y74so2093114iof.12
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 17:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MVXFq86Wzjq/2JiJKgUy5nszyPP/+FNZubjrZtz+U0E=;
 b=CiM5tvdCNkr0lm6UjCHD4rwh1bsdj1Z2cmrZ42EMj7BgLAg4dJTnRvapCjD+QP4nbo
 u0f277kQ1FudohbdLVuySFkP+AuXgs4G5PDVXkV6MVdadFlK3cQMg2cjVRsI+4ylMkDG
 ITYdnUrpjxmrADi5urho9PCP2Yh17TZXSN+dpy88jzkAA4Q86Z9FY46NZP+ACdh1VYQz
 +NoPYf5mDUcP5NqbO/Df3xzqtXxDXA0MTWVOGqFP01CvPRZvYNmk7mtTKnnHpm2Z0zZF
 jlQdjYwdmiWKgyMoT8wZSRDCaYIQAEJzSufWoqCA1Sg/xqTFTNNr+hulYLsLB/xfONxD
 +SkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MVXFq86Wzjq/2JiJKgUy5nszyPP/+FNZubjrZtz+U0E=;
 b=DR7AED7MXNwAxbdMfbDwMrPkJrDHxmG8yQVVs5ZwPl31E/tNW+P7DMLKv2aGbFJj7V
 MIplFDzgCSwuG+xRQGD8Tb4OowJk5yvhmD4y5ODimqsM38lYuRvX+r5AmGNhxGDHiqVc
 2ZfArr0pP2LEVsjXDIcWpAfIZPgnpLMt5a8dPRiUEfDRAjE+HtG/OITsEzA+lFS+UkD4
 48XCXDkLWvUske8DWH3KoetetRpkOw8s+xiEBLq37eBW4ANiSVKNeaQ32p6h/ZBB9TPO
 KIxWfsPz/hIpkTD8HLcgAk3RWOmfe0Qz9QPjTi4plb7EVlLTNSoHKcbsuUpD8/42Q4M1
 Djlw==
X-Gm-Message-State: AOAM5331SxY2Llvr2ksaaigAVbZ9PDj5ondno/I1tXfI8bs/pufSfwhY
 7zls+Saxlcq9Dnrh0rL3O9w=
X-Google-Smtp-Source: ABdhPJxuXc88y9/0sq8TNKqREs2kXFcAs2Xcnn82Xd+G37iawrl8PvEdH7vF+UakPDUyyT6ItiXXJA==
X-Received: by 2002:a5e:9809:: with SMTP id s9mr13458565ioj.171.1600129122054; 
 Mon, 14 Sep 2020 17:18:42 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id l131sm6728975ioa.31.2020.09.14.17.18.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 17:18:41 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging: rtl8723bs: os_dep: fixed bracing issue
Date: Mon, 14 Sep 2020 19:17:30 -0500
Message-Id: <20200915001731.28986-2-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200915001731.28986-1-ross.schm.dev@gmail.com>
References: <20200915001731.28986-1-ross.schm.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue by removing unnecessary braces in
sdio_ops_linux.c to fix checkpatch warnings.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
index bc8cef5589b8..87fc87662075 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
@@ -275,9 +275,8 @@ u32 sd_read32(struct intf_hdl *pintfhdl, u32 addr, s32 *err)
 				break;
 			} else {
 				DBG_871X(KERN_ERR "%s: (%d) addr = 0x%05x, val = 0x%x, try_cnt =%d\n", __func__, *err, addr, v, i);
-				if ((-ESHUTDOWN == *err) || (-ENODEV == *err)) {
+				if ((-ESHUTDOWN == *err) || (-ENODEV == *err))
 					padapter->bSurpriseRemoved = true;
-				}
 
 				if (rtw_inc_and_chk_continual_io_error(psdiodev) == true) {
 					padapter->bSurpriseRemoved = true;
@@ -367,9 +366,8 @@ void sd_write32(struct intf_hdl *pintfhdl, u32 addr, u32 v, s32 *err)
 				break;
 			} else {
 				DBG_871X(KERN_ERR "%s: (%d) addr = 0x%05x, val = 0x%x, try_cnt =%d\n", __func__, *err, addr, v, i);
-				if ((-ESHUTDOWN == *err) || (-ENODEV == *err)) {
+				if ((-ESHUTDOWN == *err) || (-ENODEV == *err))
 					padapter->bSurpriseRemoved = true;
-				}
 
 				if (rtw_inc_and_chk_continual_io_error(psdiodev) == true) {
 					padapter->bSurpriseRemoved = true;
@@ -436,9 +434,9 @@ s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 	}
 
 	err = sdio_memcpy_fromio(func, pdata, addr, cnt);
-	if (err) {
+	if (err)
 		DBG_871X(KERN_ERR "%s: FAIL(%d)! ADDR =%#x Size =%d\n", __func__, err, addr, cnt);
-	}
+
 	return err;
 }
 
@@ -538,9 +536,9 @@ s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 
 	size = cnt;
 	err = sdio_memcpy_toio(func, addr, pdata, size);
-	if (err) {
+	if (err)
 		DBG_871X(KERN_ERR "%s: FAIL(%d)! ADDR =%#x Size =%d(%d)\n", __func__, err, addr, cnt, size);
-	}
+
 	return err;
 }
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
