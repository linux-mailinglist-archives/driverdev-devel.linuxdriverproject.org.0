Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347CB315140
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 15:11:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E662887342;
	Tue,  9 Feb 2021 14:11:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ld3W6daxO46z; Tue,  9 Feb 2021 14:11:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68C1587290;
	Tue,  9 Feb 2021 14:11:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2F221BF3E5
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 14:10:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9DAAC8729E
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 14:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PaFhr9i7O7YO for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 14:10:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C017387290
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 14:10:57 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id m1so3612299wml.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 06:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DfSxnDPOrIUn/HEZGYbaIQRBPrxMTgYuKgiiI2/TE/Q=;
 b=InGYPcFmDfAAcGsK5hS1o03zp9pfkUSJCwwxaGZZnUe9b+/hyS6sRwowut59cNAMqE
 0N0fS5PdrlZv7DbzJK/yLBCVYsmAnJdoxEv8Vww4croVaZUXwSBESUWVT+dEvfSZd6AO
 M85H/fWUYtbX8u2G5L5p44aoPUgEfO0+SNhQG17Av98oQ+z++ophkCTp+rELD3DFQ/Ap
 UA10oZ3cxnK3QSZthW1TDyo3SH1KhYUtH9ppOmPUqDzmwdKiyEox9yfrfg8qL7zOsosU
 Jf1CkcNhkkVCWp0t/itxgXtr7P8hADQ+XqVxgQVpgNx7X+Dosym/J5zUQ7N9j7AEKs4H
 K1Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DfSxnDPOrIUn/HEZGYbaIQRBPrxMTgYuKgiiI2/TE/Q=;
 b=TabRx436ffJy8QgKVxiwSTLfjimaz3/Dta6ddg51u1AohixNNZDBc9cCFEyLgw1/Rz
 3AO3cRW/JUzlD/UCUbTwpfYO2C8GbY3b+Ys2vqpC3h9sMpuD8eCV/DpMyl2ITxFSZh2P
 zAEcOEXhSscbQ8VPI9YpdBjSCf4Dy1DjpLFcbklRxIB5KZovXwX2WqMWdN3y2JxzFh1l
 nUnB0YFT/fQC5/e381M/4iOR82h2nz0cHa3Pn5qqauoa1EiZynDGeXUxqcjrj/M6064x
 6rA4hk+owqkyN1mTAQaQOdWI8u6k2f2JRow9b+tmiM2lDoVPXn6xePfaruuw4jYVjkcG
 nPnA==
X-Gm-Message-State: AOAM533HmsvYYm1+tULu1+y0pvZle3+SkFYK6TdS3hFMiosIoSOotXe1
 keE9ODyQQdD6BQzXNZ6lMjGG+g==
X-Google-Smtp-Source: ABdhPJy/onNmAvIvp0kgs2Fa63R01Dh05mS6q/CTgKfnQyFVLGOy/NHfhJa3xA3lQZdMfoXFpOvI6Q==
X-Received: by 2002:a1c:1fca:: with SMTP id f193mr3685023wmf.102.1612879855283; 
 Tue, 09 Feb 2021 06:10:55 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id a84sm4443695wme.12.2021.02.09.06.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 06:10:54 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: remove typedefs from rtl8723b_recv.h
Date: Tue,  9 Feb 2021 14:10:51 +0000
Message-Id: <20210209141051.4739-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, romain.perier@gmail.com, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, singhalsimran0@gmail.com,
 apais@linux.microsoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove typedefs from include/rtl8723b_recv.h and convert one usage in
hal/rtl8723bs_recv.c to use the actual structure name in its pointer
declaration. Fixes two checkpatch warnings.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c    | 2 +-
 drivers/staging/rtl8723bs/include/rtl8723b_recv.h | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 1fbf89cb72d0..2d15a5f7648d 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -24,7 +24,7 @@ static void update_recvframe_attrib(struct adapter *padapter,
 {
 	struct rx_pkt_attrib *pattrib;
 	struct recv_stat report;
-	PRXREPORT prxreport = (PRXREPORT)&report;
+	struct rxreport_8723b *prxreport = (struct rxreport_8723b *)&report;
 
 	report.rxdw0 = prxstat->rxdw0;
 	report.rxdw1 = prxstat->rxdw1;
diff --git a/drivers/staging/rtl8723bs/include/rtl8723b_recv.h b/drivers/staging/rtl8723bs/include/rtl8723b_recv.h
index fad6749af768..60a1df703c8e 100644
--- a/drivers/staging/rtl8723bs/include/rtl8723b_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtl8723b_recv.h
@@ -9,7 +9,7 @@
 
 #include <rtl8192c_recv.h>
 
-typedef struct rxreport_8723b {
+struct rxreport_8723b {
 	/* DWORD 0 */
 	u32 pktlen:14;
 	u32 crc32:1;
@@ -79,9 +79,9 @@ typedef struct rxreport_8723b {
 
 	/* DWORD 5 */
 	u32 tsfl;
-} RXREPORT, *PRXREPORT;
+};
 
-typedef struct phystatus_8723b {
+struct phystatus_8723b {
 	u32 rxgain_a:7;
 	u32 trsw_a:1;
 	u32 rxgain_b:7;
@@ -123,7 +123,7 @@ typedef struct phystatus_8723b {
 	u32 anttrainen:1;
 	u32 antselb:1;
 	u32 antsel:1;
-} PHYSTATUS, *PPHYSTATUS;
+};
 
 s32 rtl8723bs_init_recv_priv(struct adapter *padapter);
 void rtl8723bs_free_recv_priv(struct adapter *padapter);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
