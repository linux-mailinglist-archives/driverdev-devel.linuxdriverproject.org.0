Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D040666FC
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89956882F3;
	Fri, 12 Jul 2019 06:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id udUBUCy2-LwN; Fri, 12 Jul 2019 06:28:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B642288221;
	Fri, 12 Jul 2019 06:28:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 439D71BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EC3A85EA5
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQatm5qo-Tvm for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9587F87100
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:31 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c73so3840426pfb.13
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LXxG3wSD5x6wDeftKnmtgBnixZeSyzR/EFTzN7SyUm4=;
 b=flxCXqststXQhKEJMAybMB9bk7uu2E5hnAmt3ZclRGTc4hmeeruaKQdkwE2HoCvQdg
 yr4kKucV9NC1/qWiLBLeZPE6e1MilzSAmK+125uPhI5vreuYPad5wCcvECMkRhYfrVOp
 nbbFlBQupeCb3KBCHFp8lr/jpQYebduNThtwtMCDMWPSTlq23QXMmZf0uT3hzAj1Bo5Z
 UEcLB1RQ8HMPEGuwH1dSQtgGjJZhTb4O8ehJ7ByJCTt+OEZpBamKYTA4yTGabDTAAQ7k
 1zsGhB+KLbRPWj3w32jXdUgPxclRhWE60av6JvOOUHzHbQaBIfqxK0i+VTecgH2n8bLO
 0XNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LXxG3wSD5x6wDeftKnmtgBnixZeSyzR/EFTzN7SyUm4=;
 b=g0vo50ndtUX7SFEwp0mQbcP5HUSXvyGD/rgPGu2BGpcRYMq2tPz4phaVF5TdqHfQJI
 4q+A9zT5jZZuAHhwGVFJ3cunxkSDCLk8NA8F6KHGyEDOPVd8RxFNvzy7veJwxnEO8xW/
 2jNlYCpqEvH5xKAcHA+GldWb9LuIrByYj7LAf4DenqoMdpWX7xfmbQoPaHdL6b6Qm7SU
 Nwx1gRAHL2T2s6byxbQU/1OKkqrqb7/NV57EPJ0++EQ3KGNXasThhPyU71Os4ao6qHir
 jf8tVt39VqvAXsHoVb7OgonfsE1vwv7EGKgWkiNEID0XtKlnu4xrxmA/BmkNmzUqdjSO
 VllA==
X-Gm-Message-State: APjAAAWUr6/ULu668uVBdwwt1JfDXWmtJ2BIxi10RLHR1CcencK1PSTM
 KnWK5o2/A4HVGXvK03tgfpk=
X-Google-Smtp-Source: APXvYqyKyLeokfWaooLLpMIskljZe17T5BadVdXXptohwSTyoV8aYiu+c0NyTyGmP7P0JKsf5SnCZg==
X-Received: by 2002:a17:90a:4803:: with SMTP id
 a3mr9879132pjh.58.1562912911244; 
 Thu, 11 Jul 2019 23:28:31 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:30 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: wlan-ng: Remove unused function
 hfa384x_dormem_async()
Date: Fri, 12 Jul 2019 11:58:02 +0530
Message-Id: <20190712062807.9361-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712062807.9361-1-nishkadg.linux@gmail.com>
References: <20190712062807.9361-1-nishkadg.linux@gmail.com>
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

Remove unused function hfa384x_dormem_async.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index c1a315bf5a81..95dae0b271fc 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -842,17 +842,6 @@ hfa384x_dormem_wait(struct hfa384x *hw,
 			      page, offset, data, len, NULL, NULL, NULL);
 }
 
-static inline int
-hfa384x_dormem_async(struct hfa384x *hw,
-		     u16 page, u16 offset, void *data, unsigned int len,
-		     ctlx_cmdcb_t cmdcb,
-		     ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_dormem(hw, DOASYNC,
-			      page, offset, data, len,
-			      cmdcb, usercb, usercb_data);
-}
-
 static inline int
 hfa384x_dowmem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
