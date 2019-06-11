Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD243D566
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 20:22:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9854087E13;
	Tue, 11 Jun 2019 18:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ix3Tr38LPqvP; Tue, 11 Jun 2019 18:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34E1987D96;
	Tue, 11 Jun 2019 18:22:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA1361BF425
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B661E86DCC
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 18:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdrVP7eWqH0L for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 18:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C4FA86DAE
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 18:22:36 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f25so7413663pgv.10
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 11:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=BjqXD/m5PG7/DLaEwX43f1YffKfL3QpgfkJmrcRE+ls=;
 b=MH1ZRE7Xg7MVcQ9tT2WxdjMWgsd+Krlz8NzJ7gNvkGpv6wU9nG+0iSuvQ3hZCIGGd5
 8gexrMRj7EapmQccHzchJhNlIlwT1Vdh5k3g5mILOOpz1KmO5m1PYtbXu0QxqesKV5EM
 u7CAXxCewqQjHo8xH8JeVZwTUKAle8kXqijoW2MgINDzmHHP3+u7547k/h6A/9nFf7aF
 P3uqp6xcD1rA1ADh/KkvnjrcBksS2TsS/gPalXMrRlpoRlpPFnXeivm+bl1n+ht/w4cM
 KCFdbCoBVvfyTWc4e0h0xsnrQczPuY0VFryI6/BsMCm3jR28fmNXTqy5OL2/RnJ+rzbh
 nHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=BjqXD/m5PG7/DLaEwX43f1YffKfL3QpgfkJmrcRE+ls=;
 b=cjCavdliDyaA+Lu5fcnWoEkIq2OwfjYSMhjs6IbgKibfVeZ1gnY7qyeFedZY164Gyl
 oMj/nfwScOasxlPqBOe4S/nZ6hI5CVO6UBJjkuLgZLYgL834bFdrivtnc9glCzn5Nzhh
 HtpJzAslKdEwlDrmAJQbQB99EFxkk+iIO77h0VfhWAYBX7x3QNWb4cSXlWmAvQFtoRwL
 bnVkidYwLaTkr8UiN2Y6CUTEeSKxyrP4deK89wb0LkGiwWTvUuD/UXg4dr1eXirx/Tme
 5eQQBlRJJAS1c1eFCEFU7NTC/WGudG6GaQuYZ+EjkC32UtW7Ags1aWzkC6WOHKt2q1o6
 rdww==
X-Gm-Message-State: APjAAAXTQZoQAhuuYQLc2N5JEtG67vZNM/Q3qgxav36CEnx8cwzo9A4+
 /5++unSheKVudfYroYO16FQ=
X-Google-Smtp-Source: APXvYqyg9ioyIb6FvYiYW4hd1g5lD11XX2CCMfrWZMOJfnMwXDr72iw6gI+ydRtdO+osgzbd/rwS/w==
X-Received: by 2002:aa7:8b12:: with SMTP id f18mr80797549pfd.178.1560277355944; 
 Tue, 11 Jun 2019 11:22:35 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id x17sm14885916pgk.72.2019.06.11.11.22.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 11:22:35 -0700 (PDT)
Date: Tue, 11 Jun 2019 23:52:30 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Arnd Bergmann <arnd@arndb.de>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] staging: rtl8723bs: hal: sdio_ops: fix  braces {} are
 not necessary for single statement blocks
Message-ID: <20190611182230.GA7208@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below issue reported by checkpatch

WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index ebd2ab8..22bbcb7 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -1045,13 +1045,11 @@ void sd_int_dpc(struct adapter *adapter)
 		}
 	}
 
-	if (hal->sdio_hisr & SDIO_HISR_TXBCNOK) {
+	if (hal->sdio_hisr & SDIO_HISR_TXBCNOK)
 		DBG_8192C("%s: SDIO_HISR_TXBCNOK\n", __func__);
-	}
 
-	if (hal->sdio_hisr & SDIO_HISR_TXBCNERR) {
+	if (hal->sdio_hisr & SDIO_HISR_TXBCNERR)
 		DBG_8192C("%s: SDIO_HISR_TXBCNERR\n", __func__);
-	}
 #ifndef CONFIG_C2H_PACKET_EN
 	if (hal->sdio_hisr & SDIO_HISR_C2HCMD) {
 		struct c2h_evt_hdr_88xx *c2h_evt;
@@ -1077,13 +1075,12 @@ void sd_int_dpc(struct adapter *adapter)
 	}
 #endif
 
-	if (hal->sdio_hisr & SDIO_HISR_RXFOVW) {
+	if (hal->sdio_hisr & SDIO_HISR_RXFOVW)
 		DBG_8192C("%s: Rx Overflow\n", __func__);
-	}
 
-	if (hal->sdio_hisr & SDIO_HISR_RXERR) {
+	if (hal->sdio_hisr & SDIO_HISR_RXERR)
 		DBG_8192C("%s: Rx Error\n", __func__);
-	}
+
 
 	if (hal->sdio_hisr & SDIO_HISR_RX_REQUEST) {
 		struct recv_buf *recvbuf;
@@ -1143,9 +1140,8 @@ void sd_int_hdl(struct adapter *adapter)
 
 		/*  clear HISR */
 		v32 = hal->sdio_hisr & MASK_SDIO_HISR_CLEAR;
-		if (v32) {
+		if (v32)
 			SdioLocalCmd52Write4Byte(adapter, SDIO_REG_HISR, v32);
-		}
 
 		sd_int_dpc(adapter);
 	} else {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
