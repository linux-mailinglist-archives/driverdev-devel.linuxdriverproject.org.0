Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CCC1819F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 14:38:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FF5A883FA;
	Wed, 11 Mar 2020 13:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MhG3oV-pGlwD; Wed, 11 Mar 2020 13:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2271288318;
	Wed, 11 Mar 2020 13:38:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C44311BF4D7
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 13:38:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDC1088973
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 13:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoaIZCi-Rk1D for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 13:38:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52ECD87B3D
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 13:38:26 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id u10so1021852pjy.0
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 06:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=iwO+qWgIM9f3My2kQh2h35ZK0GeUk2RHl41oBvJStTA=;
 b=eMZJz01mXe3/ifT+hdwJkqR2hwnztmZqsn/QxoJpTI7gXv9Hq7Mho/K3STadVNsqnJ
 Jx9efTHHul5gLpGYUqgE+I7KKMWhi54bV6FDskbH3N8PpmF7QAepzxONG3RQPwIfm1FY
 EFbD9hs6enLO4wjYYQS3FeNT7JymO2VaJToosruysIL++2mTBak1+80XCKaphPE0Pww1
 yhtQl+5WsH/zw3Ne0klDkA8tkO1R91+BvoGZftBIF5zK6tiCwqzLubSKJ3NDhj77PGVN
 EdCBc/RmqQy3E8C4/YfnfMYDa6N3Q1bO7+ACYUGVnVM0JZpGSJogyiUQNz5ZaMDTlLl+
 fTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=iwO+qWgIM9f3My2kQh2h35ZK0GeUk2RHl41oBvJStTA=;
 b=IUdHeP7+Uycjf/47BTprmlOuUVcDOqgx6ee3OUv0xh9EMySaWwLxPCC9zS9FNqYhJq
 AHs1/OJO05wPlbD9qShOOlHWJ5ep3I0bNaYoYR3MytO8rSN2zNj+1La1bz31/G1broL3
 oeV/NNtg85APaNJse5KJDxWLoRFNzcUCbM39+OpW1V/LSfmhxiKjI2EsoqOGfE3Pcbo0
 sn1KsH5LHakmNZ8vaJCmz+ftk4h6D+zBzb93Kd3txylEkvUtT5OXQPrG9iZt5jPq7tCX
 sABPahK01/DHpmLFjuFy9ZmzduYHFKXgyCZ6Zweq4pDmaSTOSCmQzD8XeJS1p4sDLbBg
 4Frw==
X-Gm-Message-State: ANhLgQ0heJbrPLjVutrjTfeo7FXd4NRGXsoD54T447RjCFhMFE7pRQd4
 3EZWRGL/f/siAuIQsNw73GM=
X-Google-Smtp-Source: ADFU+vt+TmQHSgrVjNtg41NbMfFfFtaXhBRGeiR+y3qUhNsfgthVTB1cd+qPq8B4smxq2g4cVswDVQ==
X-Received: by 2002:a17:902:bcc5:: with SMTP id
 o5mr3126671pls.174.1583933905596; 
 Wed, 11 Mar 2020 06:38:25 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:287:fb4d:18bc:a849:c699:3914])
 by smtp.gmail.com with ESMTPSA id
 k5sm5668922pju.29.2020.03.11.06.38.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:38:25 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, shreeya.patel23498@gmail.com, Larry.Finger@lwfinger.net
Subject: [Outreachy kernel] [PATCH] Staging: rtl8723bs: sdio_halinit: Remove
 unnecessary conditions
Date: Wed, 11 Mar 2020 19:08:11 +0530
Message-Id: <20200311133811.2246-1-shreeya.patel23498@gmail.com>
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
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e813382e78a6..643592b0bd38 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -551,18 +551,11 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 
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
+	/*  2010.04.27 hpfan */
+	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
+	/*  Timeout value is calculated by 34 / (2^n) */
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
