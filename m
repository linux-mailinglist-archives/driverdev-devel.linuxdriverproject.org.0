Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BF52DDBE
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 15:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 997CA30B22;
	Wed, 29 May 2019 13:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T+L3F7rB50ui; Wed, 29 May 2019 13:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 085DA22785;
	Wed, 29 May 2019 13:09:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6B951BF238
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B227622785
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 13:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6CQ7yW8byk3j for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 13:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 86DE8221F8
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 13:08:58 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 196so585322pgc.6
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 06:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MyF2JFEuH6LvGGWBbwEbtAeB7cBwyayBLAFyPW57EFQ=;
 b=QXiSmLZrPXsadPi9sgqFl2EmdrtmU6sgqdYwd4DG8RSTTpsHz9yc2PUU5Cxm5KrwPI
 vFNxS+RcwaI6Nrs70EDVi69oSk4kiTk4TS2Das9vJ6Ug6W36sHFT2dueg9e9g2et6B4U
 puFrXwJEQhlel7fKBcfhMEWHgQmXXRh2HWJfZuxYxXjRh25uMy/ZKHBIvyV0wJbQEEEN
 z1PbD82OqNEglKHyKUFk3eyJ8O9YRcyKIFarKHHOflR7R3hBgYl5pBs5olgLNqECDcZ/
 11P+LHLV6vXoTJM5jUHoObRdb0cx0I8V0gY8NIpMLe3LUMdXo2a1QxsP1dS4nMYFS15O
 87mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MyF2JFEuH6LvGGWBbwEbtAeB7cBwyayBLAFyPW57EFQ=;
 b=jk7ftjEohFOmAvED1BRu6N9EOSBNrfUxQgWanH8I6zyOPVVOy2aMpKzxi7I1iARJOL
 wRi1E89WGtLkeLlt135jv791VW41WUrF0aqFQB/0NCqXqGks9vEYX1CSY5nzEC1mfjdZ
 RNUlckXC91sbg3oMKuE6R4LzCAjbA8XInqxHxSnNzQB1hz5kvsdCLJp7xPM7I/mBnNKt
 qu1PC7sEM8yNF5uIQqLkXG96Mz07TfDx7gt+NYsVaYJWZnKPvG9ng5MwVZwBV4JGGbTf
 wdQ6bQvLVLQyHjdtgARDs+YH4RMH7nmU/KeBcGrqN5cnoH2ZLwW29RNU6z5e85I57MpJ
 AllA==
X-Gm-Message-State: APjAAAW3L5JyzxocldOXmadrU7mVta4TQrrOwxp34Y2KMYuou3hBDdx8
 I0Z1ouWHb7D1974gAc8XdV4=
X-Google-Smtp-Source: APXvYqxmbxpYuATei5MreKV/zNd37hHzuon8DZgToECLdH8liCI6dxsiFM7Ok6mSGSIGbAJSjXE+2w==
X-Received: by 2002:a17:90a:d3c6:: with SMTP id
 d6mr11914227pjw.25.1559135333324; 
 Wed, 29 May 2019 06:08:53 -0700 (PDT)
Received: from localhost.localdomain ([122.163.67.155])
 by smtp.gmail.com with ESMTPSA id 1sm18289030pfn.165.2019.05.29.06.08.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 06:08:52 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, tsotsos@gmail.com, igor.stoppa@gmail.com,
 aaro.koskinen@iki.fi, himadri18.07@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon-usb: Remove return variable
Date: Wed, 29 May 2019 18:38:35 +0530
Message-Id: <20190529130835.6194-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove return variable result and return the value directly.
Issue found using Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index aeec16314e0d..cd2b777073c4 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -521,8 +521,7 @@ static void octeon_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
  */
 static inline u32 cvmx_usb_read_csr32(struct octeon_hcd *usb, u64 address)
 {
-	u32 result = cvmx_read64_uint32(address ^ 4);
-	return result;
+	return cvmx_read64_uint32(address ^ 4);
 }
 
 /**
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
