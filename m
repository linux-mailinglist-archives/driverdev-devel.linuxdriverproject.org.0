Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18784184529
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 11:48:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6883188216;
	Fri, 13 Mar 2020 10:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LYFxFZXe8Enk; Fri, 13 Mar 2020 10:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB63187D6A;
	Fri, 13 Mar 2020 10:46:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C9981BF349
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 799FA870D6
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nqshylEYdIqD for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 10:46:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19A86870D2
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 10:46:51 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id l36so3954520pjb.3
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 03:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
 b=rB/JrxX0L7LaAtUV00dCdFiedhiTR681/8tixC3LeFg+mmm/oXg1UoXM5C8wHRbfnZ
 fhZ2bENDyBia9zKeDoain0e20+dVQldHc4w+6WHRXveP9NpqXpKJAfyXWEaUOHVWb9cF
 0fYHTuY9ZYI6bh8h4rwiiaPGCV4lqZsKOoIPDisRmUTiQAlmo1fJdz/PHZ76ep+qDac2
 hGGZ33A4d3LhU9ZGvvurTqRgkJsr3kZn7a+BHs6Cqyg2oQ0Jlt6V0QF3w4SdSPbU9NTZ
 /YPCNnoDIfm54kn3HrYFONeqKy8RbdGFDdtHcNRof1B9P+zh9H8ObS8EBDVKmlMWxGBC
 0JCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=o6afTbf7/yCeF+VeaZhhomT+KkYIZitsMbrfbHYx5jo=;
 b=HmmTYr7mmkwhOjAlL7IAmZamZF7G9bKGElqTBsKykkTb1yeKSQHiw8agaLj2hsH89e
 b5xxjnD3SH3Vm627oSdDNvjBlmzJyJToENuq+4qqGB4CEXBBi+Qa6gdLiEzsvgxnuWWg
 wocRocSiLnYSIYaEcDQkDv5Cg2Wu9eVF5YWakU2MaeMChhkJsvjEE5gCAPEuwA4jVBi4
 YPgXFfLNb+VDUtHpOKUF/E06INvizb4rRkiV2koSkPMWsNDpsVVcGAy3LzP9FpZNMPjg
 4hFRNmMM+w4HS2vqXN4RD+uKbvJWcX6fWoPaiUmNZvRz1qWVF8jcvCLeXfhGDs6sYRAK
 lV+g==
X-Gm-Message-State: ANhLgQ0iTSvC48mi/FDL/ORRAjgeyV6DSL89fZBmulA2Ez4nHPP7ivJ4
 vfd9JbuKvDhMLWrWjeoMcx8=
X-Google-Smtp-Source: ADFU+vsBKShzUZkSlbgiH+IFdbb9Pnz5biKuJqGZx7Od9k3U6Ftq7+V5D8q4+UaAnGA7aLhmxhpf3Q==
X-Received: by 2002:a17:90a:2042:: with SMTP id
 n60mr1625659pjc.0.1584096410372; 
 Fri, 13 Mar 2020 03:46:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:22f:d418:f8a5:7ca8:f99b:fa30])
 by smtp.gmail.com with ESMTPSA id
 p70sm1709171pjp.47.2020.03.13.03.46.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 03:46:49 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: regkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, shreeya.patel23498@gmail.com, Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: sdio_halinit:
 Remove unnecessary conditions
Date: Fri, 13 Mar 2020 16:16:40 +0530
Message-Id: <20200313104640.19787-1-shreeya.patel23498@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove if and else conditions since both are leading to the
initialization of "valueDMATimeout" and "valueDMAPageCount" with
the same value.

Found using coccinelle script.

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---

Changes in v2
  - Remove unnecessary comments.

 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e813382e78a6..4894f7d9a1d4 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,8 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
 	pregistrypriv = &padapter->registrypriv;
 
-	if (pregistrypriv->wifi_spec) {
-		/*  2010.04.27 hpfan */
-		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
-		/*  Timeout value is calculated by 34 / (2^n) */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	} else {
-		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
-		/*  TX/RX Balance */
-		valueDMATimeout = 0x06;
-		valueDMAPageCount = 0x06;
-	}
+	valueDMATimeout = 0x06;
+	valueDMAPageCount = 0x06;
 
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
