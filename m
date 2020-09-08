Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5972608DA
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Sep 2020 05:03:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC06C86457;
	Tue,  8 Sep 2020 03:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xlKu5NzllD9i; Tue,  8 Sep 2020 03:02:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DC4E86166;
	Tue,  8 Sep 2020 03:02:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3C0A1BF31A
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 03:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED1D920031
 for <devel@linuxdriverproject.org>; Tue,  8 Sep 2020 03:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N6dTFuS2M4qG for <devel@linuxdriverproject.org>;
 Tue,  8 Sep 2020 03:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A6F92002E
 for <devel@driverdev.osuosl.org>; Tue,  8 Sep 2020 03:02:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id y15so3045022wmi.0
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 20:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=H2SK2CScynAdpc09KfqvWGW23eNEePoUEMypquICBCM=;
 b=Bp6sJD9J1yarzQSD3RLjYa5dH1mxI9FJwMm+RRIsjyc2NEXW5Vm9y5C7Df5U16SkBs
 LPkx/0OezuicEkLxh7D+rNrrazHV2xaIME+NViMchbCc344+4oXIvUEO/kUYaARc08iu
 i3e7uR6JOlY6l0UTb83Yv4BSihwsLPhLRgEk8UyZpEDJomBS8ms6D6FXwEQubLfxImQ0
 i8AyCnK6P/6dcunSJVRRtkfE45NGOaMrt7HlZgKAF10LJE4TRR0r5qx2bIwWP4tx9ZeI
 NIL3mEESlCh0LC6Ig5/ulOqQT35jvRSnC0jx8R855zGH2Xm4Jn5pHpXvY3ABtqYHCUWx
 R18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=H2SK2CScynAdpc09KfqvWGW23eNEePoUEMypquICBCM=;
 b=o3vr5ed/YYo5WAZM61MPSVKWo2V8dpLjw/BnZMEhtI+f5g17LCjsOAt2wSgHBUMCC/
 F+Waq1g5ajhYC8iFjLZQOqJ0yFgBwKOZzTiKN3xv+Znz2XFAI/VW0+VOXVJzwmhx10gx
 jzzsFgskEPS7LPGzC7F5JPbEo6IwS2EV9oHZKpypI686eohSKDUwJ4psjL51esAWvkdm
 vmqrWW3GBy/Q/a/kgvVcrvubX4m1UbYtsCb9AVlsqsE5AtH/QGHijIeASHzMI+dcumUn
 Py4i4gkjEWZOGN63OiA57fwwnNFkZKHXVRVZ1ITIQ82LfbR4BOYp/o0xH+i/tHNEd/k1
 dWRw==
X-Gm-Message-State: AOAM531n7e77IlzXpOxXPnCS6WhwRqiQ583pFts3DeUA30sX/ymJFHJF
 QIThAnS2R3BgIi6jt1YMCtk=
X-Google-Smtp-Source: ABdhPJyikv5FgncChd7gjGBCyvOVabgkhd/2Bfq/yGIYT24SFxKmo5B/wuXmb3C4wPqKc8LoS245sQ==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr1894586wmc.143.1599534171422; 
 Mon, 07 Sep 2020 20:02:51 -0700 (PDT)
Received: from laptop.Scindia.edu (proxy.scindia.edu. [210.212.152.36])
 by smtp.gmail.com with ESMTPSA id t15sm26900710wmj.15.2020.09.07.20.02.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 20:02:50 -0700 (PDT)
From: Naveen Panwar <naveen.panwar27@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers: staging: octeon-usb: fixed codestyle check warning
Date: Tue,  8 Sep 2020 08:32:39 +0530
Message-Id: <20200908030239.10131-1-naveen.panwar27@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, mpe@ellerman.id.au, psampat@linux.ibm.com,
 Naveen Panwar <naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed line cannot end with '(' check.

Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
---
 drivers/staging/octeon-usb/octeon-hcd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/octeon-usb/octeon-hcd.c b/drivers/staging/octeon-usb/octeon-hcd.c
index 61471a19d4e6..e2f8b6b67f75 100644
--- a/drivers/staging/octeon-usb/octeon-hcd.c
+++ b/drivers/staging/octeon-usb/octeon-hcd.c
@@ -1233,8 +1233,7 @@ static int cvmx_usb_fill_tx_hw(struct octeon_hcd *usb,
 			cvmx_write64_uint32(csr_address, *ptr++);
 			cvmx_write64_uint32(csr_address, *ptr++);
 			cvmx_write64_uint32(csr_address, *ptr++);
-			cvmx_read64_uint64(
-					CVMX_USBNX_DMA0_INB_CHN0(usb->index));
+			cvmx_read64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index));
 			words -= 3;
 		}
 		cvmx_write64_uint32(csr_address, *ptr++);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
