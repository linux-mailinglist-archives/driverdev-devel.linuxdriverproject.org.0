Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 927C9E24DB
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 22:59:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26AC122DD3;
	Wed, 23 Oct 2019 20:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Vfle2Zy3yb3; Wed, 23 Oct 2019 20:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CED8F20361;
	Wed, 23 Oct 2019 20:59:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAE881BF5A5
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 20:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B41BD87466
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 20:59:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RqakeR0KBi7R for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 20:59:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0571813F6
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 20:59:00 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id q78so7483134lje.5
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 13:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=7jgL2eo0hN7iEDDKRNysP+ioO97T4XGvCNaa8cuKn7Y=;
 b=YM7xG2TlTiGA2/HWFrHeDKJCEDJrdCBSP3eTXIiFLGQC7L7/6hg0h6P6pgqEr5Uus5
 KV7vhtpsvbvfCAhGmv2WBvgAxqZ3CbVYYjhtqtZT8o1IZadjtbZErnSteGUBBozgfxHQ
 YnsIUGg3gtY2UYZ5qX6jzC9buBx1z6Tl4y5uPqfc/p7hMx+rKDAfvHUTLG1hMLt7BbUr
 1wH4W2yRoCbHY/AjZ4kS2+aVCOjXRTl2XcrkwOsuQ91cuZGccsmJS09bUEIe1N2XhUyr
 Ms78L8vwNXMCP+v1exy1auPyBc/btsKUFTAIv9fuy8ibRbusKMeUCo2jzwOrPiFIcVYl
 ROHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=7jgL2eo0hN7iEDDKRNysP+ioO97T4XGvCNaa8cuKn7Y=;
 b=arRtinTilVUbIIpDeOaNi+YXNRsxesSKgz5m+MENmhUhaSmvDuPYMXVJHV0DtKzB0E
 yn/kMZVgkEqNAYKqxObzZhxyuS5P0quor67lPXX3crz7ZXK0q7PQDjCTFCzupl3yqP5V
 9SpLbC4FiMHzaBe2xzGcw/PDkLCoSpyCxLxivAJZMPsLp2qlSAP5X/UyWZOIv8I9YqXZ
 mmQiRgcKM4b5i/mDiRNQH0CuR2yq61xf59OR8fwexIbK3pLEcvhe8TV9omoWwQnPYc7/
 o75NaWnTyh+hB0CZa+RGiZhwke3Q8SVyiD1T+PVJ6u8+dPCK6GApTM10/PPLx8pzibnV
 MUqg==
X-Gm-Message-State: APjAAAUSEOF/AnPrhI57d42SU31aNUyY9C4UCT+q3JDEFgokSnOSkExN
 5SaPOiQ/nExDRhAAdALiD+Q=
X-Google-Smtp-Source: APXvYqzBlkpSWmfw32rEtm/H4QkMUW+u3wiPVlRHHQ4w63rsw3HjCti4AeEDE0NeChIUdhcPvBgTng==
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr17287093lja.218.1571864338517; 
 Wed, 23 Oct 2019 13:58:58 -0700 (PDT)
Received: from samuil-ThinkCentre-M92P ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id i128sm12483311lfd.6.2019.10.23.13.58.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 13:58:57 -0700 (PDT)
Date: Wed, 23 Oct 2019 23:58:55 +0300
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: manishc@marvell.com;, gregkh@linuxfoundation.org
Subject: [PATCH] Staging: qlge: Rewrite two while loops as simple for loops
Message-ID: <20191023205855.GA1841@samuil-ThinkCentre-M92P>
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
Cc: , devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a task from the TODO list of qlge driver:
 - some "while" loops could be rewritten with simple "for"

The change is in functions ql_wait_reg_rdy and ql_wait_cfg in qlge_main.c.
The while loops are basically count based
(they decrement on each iteration),
and it makes more sense to be a for loop construction instead.

Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
---
 drivers/staging/qlge/qlge_main.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 0c381d91faa6..6f6b4c06688c 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -167,9 +167,9 @@ void ql_sem_unlock(struct ql_adapter *qdev, u32 sem_mask)
 int ql_wait_reg_rdy(struct ql_adapter *qdev, u32 reg, u32 bit, u32 err_bit)
 {
 	u32 temp;
-	int count = UDELAY_COUNT;
+	int count;
 
-	while (count) {
+	for (count = 0; count < UDELAY_COUNT; count++) {
 		temp = ql_read32(qdev, reg);
 
 		/* check for errors */
@@ -181,7 +181,6 @@ int ql_wait_reg_rdy(struct ql_adapter *qdev, u32 reg, u32 bit, u32 err_bit)
 		} else if (temp & bit)
 			return 0;
 		udelay(UDELAY_DELAY);
-		count--;
 	}
 	netif_alert(qdev, probe, qdev->ndev,
 		    "Timed out waiting for reg %x to come ready.\n", reg);
@@ -193,17 +192,16 @@ int ql_wait_reg_rdy(struct ql_adapter *qdev, u32 reg, u32 bit, u32 err_bit)
  */
 static int ql_wait_cfg(struct ql_adapter *qdev, u32 bit)
 {
-	int count = UDELAY_COUNT;
+	int count;
 	u32 temp;
 
-	while (count) {
+	for (count = 0; count < UDELAY_COUNT; count++) {
 		temp = ql_read32(qdev, CFG);
 		if (temp & CFG_LE)
 			return -EIO;
 		if (!(temp & bit))
 			return 0;
 		udelay(UDELAY_DELAY);
-		count--;
 	}
 	return -ETIMEDOUT;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
