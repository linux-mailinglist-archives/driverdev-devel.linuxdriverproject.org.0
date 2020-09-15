Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EEE269A54
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 02:18:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDE3E2043E;
	Tue, 15 Sep 2020 00:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSN7Oinf4wBp; Tue, 15 Sep 2020 00:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EB0B420420;
	Tue, 15 Sep 2020 00:18:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 626431BF968
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F88986FEB
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 00:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J6-L2Oca8JCM for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 00:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9DDE86FE6
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 00:18:45 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id y9so1370552ilq.2
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 17:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MmoIpKO9u8/MGDcv7dF5sCcIl2ECWGlhyePRw59SR0Q=;
 b=J7DLiPFL3r6NJdNp3jhIVDQM55D8MabLMgsUsrlLgYfVTGM4MhuoTpOT4K4UsJHsMI
 qqk+kPwMuegh2q6clarPqE/A47FtzuSm7IjHxeHN0qrEVFr9Cw5wUlB2Kl4yxscp+chk
 O4gvbwyNhKiyuwV5GQP/uhUB38/YXaL5IAOMt0qmXOEdEpE+9p5pU/RztTdP5lMTc5YB
 uJc9uKq9ZJoh17mmY4MSjZTEg8p6p0kpW3/llUESADRAibPVl9r0nak2ZEQJoIJO3swb
 cU0vo812xo1WGm6UxZP6C63U1ddxEJtYuonVj6eEuNQHPH6EoDWVGkQgR50SrUk+nvTh
 yJ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MmoIpKO9u8/MGDcv7dF5sCcIl2ECWGlhyePRw59SR0Q=;
 b=nWbrK128chFe1ZtmPNsUTHOZpghq2VVV+PFgxx9hc0KfWNQZGUFZObC/j94JzrdxGR
 cOkKQyf2WgQybRzqlbP7eQdFDYANS27S1/37u9CDZvI2H3O/VCoCJWt6Qz8W8yMBAgYV
 2YpJNeucjSlGcC3WI+wGdj5oJrS83pphVk0koFeuBcEdCF9UEjfKdKlJzbnSLlWql7kd
 uUfZmjELxvcRBsBbMIQi+GIuVj9aK0OBQGUQCMc6yguCGP/RzLmMClA5hD+5gRpIiBmT
 QKYHhJPhl2Bi3GpSuyHFgGan4iyzkhbQIwWfzNL7+NelMNVsO8GJ/rWzkgJhP7V5Qiic
 vPog==
X-Gm-Message-State: AOAM5302QM6jH7gZ7ccbMIUsejnKPhnd7d0yzzT4cqIcNN8jrex2DRXR
 CxA1REU7nAfarAwTTal3m9w=
X-Google-Smtp-Source: ABdhPJy/kANWeCVpULaUnfWIQE5veCGUnONI8giikde+74OVSeOm1ekE6xKEi4Ao4jAtFw/NUfAD5Q==
X-Received: by 2002:a92:db42:: with SMTP id w2mr2167037ilq.247.1600129125034; 
 Mon, 14 Sep 2020 17:18:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id l131sm6728975ioa.31.2020.09.14.17.18.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 17:18:44 -0700 (PDT)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8723bs: os_dep: fixed spacing around
 operators issue
Date: Mon, 14 Sep 2020 19:17:31 -0500
Message-Id: <20200915001731.28986-3-ross.schm.dev@gmail.com>
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

Fixed a coding style issue by adding spaces around operators in
sdio_ops_linux.c to fix checkpatch checks.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 .../staging/rtl8723bs/os_dep/sdio_ops_linux.c    | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
index 87fc87662075..079da433d811 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_ops_linux.c
@@ -84,9 +84,9 @@ s32 _sd_cmd52_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 	func = psdio->func;
 
 	for (i = 0; i < cnt; i++) {
-		pdata[i] = sdio_readb(func, addr+i, &err);
+		pdata[i] = sdio_readb(func, addr + i, &err);
 		if (err) {
-			DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x\n", __func__, err, addr+i);
+			DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x\n", __func__, err, addr + i);
 			break;
 		}
 	}
@@ -154,9 +154,10 @@ s32 _sd_cmd52_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pdata)
 	func = psdio->func;
 
 	for (i = 0; i < cnt; i++) {
-		sdio_writeb(func, pdata[i], addr+i, &err);
+		sdio_writeb(func, pdata[i], addr + i, &err);
 		if (err) {
-			DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x val = 0x%02x\n", __func__, err, addr+i, pdata[i]);
+			DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x val = 0x%02x\n", __func__,
+				 err, addr + i, pdata[i]);
 			break;
 		}
 	}
@@ -423,7 +424,7 @@ s32 _sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 		u8 *pbuf = pdata;
 
 		for (i = 0; i < cnt; i++) {
-			*(pbuf+i) = sdio_readb(func, addr+i, &err);
+			*(pbuf + i) = sdio_readb(func, addr + i, &err);
 
 			if (err) {
 				DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x\n", __func__, err, addr);
@@ -524,9 +525,10 @@ s32 _sd_write(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
 		u8 *pbuf = pdata;
 
 		for (i = 0; i < cnt; i++) {
-			sdio_writeb(func, *(pbuf+i), addr+i, &err);
+			sdio_writeb(func, *(pbuf + i), addr + i, &err);
 			if (err) {
-				DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x val = 0x%02x\n", __func__, err, addr, *(pbuf+i));
+				DBG_871X(KERN_ERR "%s: FAIL!(%d) addr = 0x%05x val = 0x%02x\n",
+					 __func__, err, addr, *(pbuf + i));
 				break;
 			}
 		}
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
