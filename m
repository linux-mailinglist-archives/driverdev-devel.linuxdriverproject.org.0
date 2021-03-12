Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5594F3396A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 19:33:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9C8F8437E;
	Fri, 12 Mar 2021 18:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YmncA9MoKuIa; Fri, 12 Mar 2021 18:33:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D48BE84171;
	Fri, 12 Mar 2021 18:33:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F74F1BF3C0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 767B84645A
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hXPrzVCgEuiV for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 18:33:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 800AC4542E
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 18:33:30 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so12776300wmj.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 10:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=99Si3ZeTVQRmaMijDuv1ZpadtC/J5+lXBe0guhvxNRc=;
 b=J6WvtRB095p/dNCwYDp8loUtF5t/qWNsDX3ilqp9hpdvqQJ6VMlIjkLjWUQxZBWC89
 lsQFoCCE03x3ybJVS/1HOa9J4JhFpywMLU1b/aSO27L0xmVk87ff4PnMatpyIGs5RPI8
 0OPIylETGHcgDOouX/pPYyXm4bl3KFtecsemynkV4w1R93wrGPHul3IqAzIOazQ9G9ES
 STMmzL0a1N78MxALdgSLNzVR6oYQZsFbY2G19u8qVhEFvH7TTowVUUIqtiL8A42UEY2o
 JymWJAuJwi9w46iaNSen/Pq9upPopvZLtXiQpKuqX1G4106twv1NKc/ERDMRSzKmDBGV
 bmjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=99Si3ZeTVQRmaMijDuv1ZpadtC/J5+lXBe0guhvxNRc=;
 b=ZhsOcBNITEzqdKpXvmY8IBYc/4DlicQXWxrBKGhA524mSKEYKKva90zskLoNjgYq44
 l4/VAcq3z4KE6qoC91JazXjxjcWRq3/WKfSv42HbVO1T3L7iv9Drcgcwu9HpWaf7fYDJ
 Vpq73QsrhB/Z9m0W0CVSYuiPiqm9nZDd7m46J0Y9jHELHS5AoXftu3UjuT23z12Mj7Ij
 OicmSxPAf/2jXDRaeG8DcUpA6YtlV93zerkGjQLJnWY98x+a3C9hrUuX3Xod6lYZ++9x
 YGyLkdPaVn4HrjWSeCPhnRpnd4mdbFivA8BXQq1ZOfeNhiRKWyullLW8s5JqwRwXY8Sb
 9wng==
X-Gm-Message-State: AOAM533k5BeNcT9+cs/4XJkbYY6NSt2O07tEQE94OnEv7pXHmWBqwOxz
 s/btjI74a4e9DRXjHi7+/lwL0sYsVLx2YA==
X-Google-Smtp-Source: ABdhPJzYVYO64oHb03idx/Qa7hX1KosLLZRFIPprtu8flcBDdVtb/Es5w3akof3Ab0VhfFEqKtbwoA==
X-Received: by 2002:a1c:771a:: with SMTP id t26mr14476280wmi.60.1615574008829; 
 Fri, 12 Mar 2021 10:33:28 -0800 (PST)
Received: from agape.jhs ([151.57.163.80])
 by smtp.gmail.com with ESMTPSA id v18sm9761728wrf.41.2021.03.12.10.33.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 10:33:28 -0800 (PST)
Date: Fri, 12 Mar 2021 19:33:26 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/4] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_PNO_SET_DEBUG
Message-ID: <1a2eaead1b848c26892497fe34841b29e5eaeec2.1615572985.git.fabioaiuto83@gmail.com>
References: <cover.1615572985.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615572985.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove conditional code block checked by unused CONFIG_PNO_SET_DEBUG

Cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 48 --------------------
 drivers/staging/rtl8723bs/hal/sdio_halinit.c |  5 --
 2 files changed, 53 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 0480e32701f0..479623d6eb79 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -1668,18 +1668,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 			rtl8723b_fill_fake_txdesc(padapter,
 				&ReservedPagePacket[BufIndex-TxDescLen],
 				ProbeReqLength, false, false, false);
-#ifdef CONFIG_PNO_SET_DEBUG
-	{
-			int gj;
-			printk("probe req pkt =>\n");
-			for (gj = 0; gj < ProbeReqLength+TxDescLen; gj++) {
-				printk(" %02x ", ReservedPagePacket[BufIndex-TxDescLen+gj]);
-				if ((gj+1)%8 == 0)
-					printk("\n");
-			}
-			printk(" <=end\n");
-	}
-#endif
 			CurtPktPageNum =
 				(u8)PageNum_128(TxDescLen + ProbeReqLength);
 
@@ -1690,18 +1678,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 			/* PNO INFO Page */
 			RsvdPageLoc.LocPNOInfo = TotalPageNum;
 			ConstructPnoInfo(padapter, &ReservedPagePacket[BufIndex-TxDescLen], &PNOLength);
-#ifdef CONFIG_PNO_SET_DEBUG
-	{
-			int gj;
-			printk("PNO pkt =>\n");
-			for (gj = 0; gj < PNOLength; gj++) {
-				printk(" %02x ", ReservedPagePacket[BufIndex-TxDescLen+gj]);
-				if ((gj + 1)%8 == 0)
-					printk("\n");
-			}
-			printk(" <=end\n");
-	}
-#endif
 
 			CurtPktPageNum = (u8)PageNum_128(PNOLength);
 			TotalPageNum += CurtPktPageNum;
@@ -1710,18 +1686,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 			/* SSID List Page */
 			RsvdPageLoc.LocSSIDInfo = TotalPageNum;
 			ConstructSSIDList(padapter, &ReservedPagePacket[BufIndex-TxDescLen], &SSIDLegnth);
-#ifdef CONFIG_PNO_SET_DEBUG
-	{
-			int gj;
-			printk("SSID list pkt =>\n");
-			for (gj = 0; gj < SSIDLegnth; gj++) {
-				printk(" %02x ", ReservedPagePacket[BufIndex-TxDescLen+gj]);
-				if ((gj + 1)%8 == 0)
-					printk("\n");
-			}
-			printk(" <=end\n");
-	}
-#endif
 			CurtPktPageNum = (u8)PageNum_128(SSIDLegnth);
 			TotalPageNum += CurtPktPageNum;
 			BufIndex += (CurtPktPageNum*PageSize);
@@ -1729,18 +1693,6 @@ static void rtl8723b_set_FwRsvdPagePkt(
 			/* Scan Info Page */
 			RsvdPageLoc.LocScanInfo = TotalPageNum;
 			ConstructScanInfo(padapter, &ReservedPagePacket[BufIndex-TxDescLen], &ScanInfoLength);
-#ifdef CONFIG_PNO_SET_DEBUG
-	{
-			int gj;
-			printk("Scan info pkt =>\n");
-			for (gj = 0; gj < ScanInfoLength; gj++) {
-				printk(" %02x ", ReservedPagePacket[BufIndex-TxDescLen+gj]);
-				if ((gj + 1)%8 == 0)
-					printk("\n");
-			}
-			printk(" <=end\n");
-	}
-#endif
 			CurtPktPageNum = (u8)PageNum_128(ScanInfoLength);
 			TotalPageNum += CurtPktPageNum;
 			BufIndex += (CurtPktPageNum*PageSize);
diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 9dd3f3249e01..3266839031f8 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1476,11 +1476,6 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				rtw_read32(padapter, 0x2fc),
 				rtw_read32(padapter, 0x8c)
 			);
-#ifdef CONFIG_PNO_SET_DEBUG
-			DBG_871X("0x1b9: 0x%02x, 0x632: 0x%02x\n", rtw_read8(padapter, 0x1b9), rtw_read8(padapter, 0x632));
-			DBG_871X("0x4fc: 0x%02x, 0x4fd: 0x%02x\n", rtw_read8(padapter, 0x4fc), rtw_read8(padapter, 0x4fd));
-			DBG_871X("TXDMA STATUS: 0x%08x\n", rtw_read32(padapter, REG_TXDMA_STATUS));
-#endif
 
 			{
 				/*  2.  Set Disable WOWLAN H2C command. */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
