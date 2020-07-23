Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A76022B062
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jul 2020 15:21:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E800A2C348;
	Thu, 23 Jul 2020 13:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUhnA2QjQiNT; Thu, 23 Jul 2020 13:21:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30A3F2C2B6;
	Thu, 23 Jul 2020 13:21:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 288201BF863
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 13:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 250C589995
 for <devel@linuxdriverproject.org>; Thu, 23 Jul 2020 13:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTC8lcklRjyT for <devel@linuxdriverproject.org>;
 Thu, 23 Jul 2020 13:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E46D89994
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 13:21:32 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f2so5139085wrp.7
 for <devel@driverdev.osuosl.org>; Thu, 23 Jul 2020 06:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=G1wnHLd0NRHI729d4RsZZFaMbUry0Mq2KftA3Kfuoh4=;
 b=tI3Az9ZMpNnFPW5uSP6xxaKISSRFfisPbxZgllpsLPPnKHGen0Lu1dOXtTNJVxxBCC
 zpeDUdrEO4W2HkcOR0Ani1izlKqrbGzcW97VSXgAcJ4ht61Nw5nX5J7AwMbgDX7wH71b
 Kpkm0ybWF8/uAnNaBA3REg3oPHafVN3vlDrWNfUu6WybqoCyTlYyKzkAjiiJZZ7d+FSy
 T0QGVzeQYH/lEpaoypo5m4b8xq0wgAP8AJciWl9n2SC2bWLlQjuOJ6g55luw3h+CB+gI
 jT5Se6iz0H9cb9c6JMUfjzJSi+HzwLAjG3+6Bvl4TrCEcWwIw408J3iVRk8v+ESuyHw/
 eC4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=G1wnHLd0NRHI729d4RsZZFaMbUry0Mq2KftA3Kfuoh4=;
 b=MyKpmImeLgoDrDXxYlkzHktc/SgKCHf6oAClkoLl5XChGckbv5IA4Ir2S26lvt60Hg
 ZYHAIC8ihqq2QTtyoswUTYIOhYrCgisxeskwQ7tyAxeZQyzfwJa+yjWvTMF3O6+atI/I
 cIfilgRExBzr+NFlz/NfiVpfBCGeqRrc+WewbFiH/WstDv20hYDW755oLWmmJvhGoeYw
 x+g49B6RLpJySBcsfuMEy7MnwAYJzjSgjsL7Xhbv1gvEwyag2IGInePzN7ab3PwW7K/T
 xMs2Fch1cSvBRL71QY2Ks9NlnzaTTCXcNAm90zFZGcUJ+mJYUoGab0VFt8J0STvja7zf
 IyiQ==
X-Gm-Message-State: AOAM533EbVNWjYhCnf66sbntym6bpxfgNHboYPR8EVn8EO/w3HQfRovb
 E7TG2KlajBGGcTrR0/4oTCE=
X-Google-Smtp-Source: ABdhPJzSDT/RxzayO8buZtvKbC2a4QDO5UxNg2rY+KEFz/FHWZP+gTCUhlSQe+Sme93qAC+Odes7gQ==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr4144018wrm.352.1595510490724; 
 Thu, 23 Jul 2020 06:21:30 -0700 (PDT)
Received: from musamaanjum ([111.119.187.25])
 by smtp.gmail.com with ESMTPSA id q3sm3496182wmq.22.2020.07.23.06.21.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 Jul 2020 06:21:30 -0700 (PDT)
Date: Thu, 23 Jul 2020 18:21:23 +0500
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: octeon: Indent with tabs instead of spaces
Message-ID: <20200723132123.GA26221@musamaanjum>
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
Cc: musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove a coding style error. It makes code more readable.

Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
---
Changes in v2:
  - Aligned more lines with tabs

 drivers/staging/octeon/ethernet-defines.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
index ef9e767b0e2e..c060374a3da2 100644
--- a/drivers/staging/octeon/ethernet-defines.h
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -22,19 +22,19 @@
 #define __ETHERNET_DEFINES_H__
 
 #ifdef CONFIG_NETFILTER
-#define REUSE_SKBUFFS_WITHOUT_FREE  0
+#define REUSE_SKBUFFS_WITHOUT_FREE	0
 #else
-#define REUSE_SKBUFFS_WITHOUT_FREE  1
+#define REUSE_SKBUFFS_WITHOUT_FREE	1
 #endif
 
-#define USE_ASYNC_IOBDMA            (CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
+#define USE_ASYNC_IOBDMA		(CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
 
 /* Maximum number of SKBs to try to free per xmit packet. */
-#define MAX_OUT_QUEUE_DEPTH 1000
+#define MAX_OUT_QUEUE_DEPTH		1000
 
 #define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(u32))
 #define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(u32))
 
-#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)
+#define TOTAL_NUMBER_OF_PORTS		(CVMX_PIP_NUM_INPUT_PORTS + 1)
 
 #endif /* __ETHERNET_DEFINES_H__ */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
