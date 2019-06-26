Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D96956991
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:43:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A1B621567;
	Wed, 26 Jun 2019 12:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxoANSBhoLug; Wed, 26 Jun 2019 12:43:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6DFB21544;
	Wed, 26 Jun 2019 12:43:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EC601BF3E8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8961D8671E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7j-JmBZ53DMB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BE9B283883
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:43:21 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c2so2564522wrm.8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 05:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Eq1KihyTv/XkfsAj+0NrxhWHe+u+0J7Tsq03D3MLx4U=;
 b=tHuskxgDqOT97n4x/Z1Xq+1k1qk2oxsHlImpia7z5NSa9j/39hJy7KBa4aub3gmK79
 VenEvAPQ1eIpvKvi7vuPHC+doFCmNYbCmSeMIN6XTAyZ4QhBl6SDmcv/XV94udp5MzGP
 G8fgRLOice4wV+WJIJu0nuM2RKESEHs8EryCx/KTEfOMQ5tutUx2GpawuDc4tXNzMsoP
 /YVCr1TR96zqHEMMGFyRi9mBbn1x30uH41/Yl4NDdWAwMFmXOAi4S8oa/yYD/AbQRZC0
 NL+RCtKJmtm3NjHaqUEgeDz/dl0PKMQBDkJC3efNEiwNi70nlCasF9xXiBEXyS4CCdhe
 F6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Eq1KihyTv/XkfsAj+0NrxhWHe+u+0J7Tsq03D3MLx4U=;
 b=rBQ9v1z+adas26ZHEP3EmOIrKDH9ihWyug+hqZJ6l1K4eoqNtV6Zbfqh+ZVLG5MZqt
 YtjTSqnle7ZEzPkHJ1p4m6I4sIYnF90VNWOUnoYRKR+jCYrHVdKik32N1IIEjqYpj05U
 Y2ZqHGBqBhmYo5zYaGWyV5YSGTRm1KoQXTAj6L4nWxCXv3X8K8+8Wdxjp6oVplO0UKLP
 nrHadEQSGNr4nUe5x4T6nGnm4p/9yT2FjcP+stNnZvxlQGhkJCaGVUeulr2Xajz5R5W9
 /p1+SV5QPFZi5JAnd6aYrkXemFnLVQVMEVOjp61MuW7OZcy2JKVDhuw55AiL0ewSZfVn
 0+tw==
X-Gm-Message-State: APjAAAV2/8hrrYDZnFV0DkKkgPuLQ61ZQu6t85wNDPoPbe/eDlX16kjk
 VGmcAnl3WdwS3gH5J6L8iCM=
X-Google-Smtp-Source: APXvYqyOnRpc32+lmXO3QwFWMASCUEbbEhks0eGG7H6Fc7SJOhiRmUUBfjSOdgj+1U3aG/gghbsNnA==
X-Received: by 2002:adf:c614:: with SMTP id n20mr3684385wrg.17.1561553000371; 
 Wed, 26 Jun 2019 05:43:20 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id l16sm18838012wrw.42.2019.06.26.05.43.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 05:43:19 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: fix PCIE_FTS_NUM_LO macro
Date: Wed, 26 Jun 2019 14:43:18 +0200
Message-Id: <20190626124318.32064-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add missing parenthesis to PCIE_FTS_NUM_LO macro to do the
same it was being done in original code.

Fixes: a4b2eb912bb1 ("staging: mt7621-pci: rewrite RC FTS configuration")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index a981f4f0ed03..89fa813142ab 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -42,7 +42,7 @@
 /* MediaTek specific configuration registers */
 #define PCIE_FTS_NUM			0x70c
 #define PCIE_FTS_NUM_MASK		GENMASK(15, 8)
-#define PCIE_FTS_NUM_L0(x)		((x) & 0xff << 8)
+#define PCIE_FTS_NUM_L0(x)		(((x) & 0xff) << 8)
 
 /* rt_sysc_membase relative registers */
 #define RALINK_CLKCFG1			0x30
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
