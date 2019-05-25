Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 106D82A5C7
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 19:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D55587AF1;
	Sat, 25 May 2019 17:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UVkZ2jrnKleg; Sat, 25 May 2019 17:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FDEA8553C;
	Sat, 25 May 2019 17:20:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1271BF349
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 17:20:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 370E88553C
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 17:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AX1x1n8ygbMi for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 17:20:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B131873D2
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 17:20:07 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id w22so6770732pgi.6
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 10:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=M6D54Y9cAdwUjftrKOdf9/RVXWKvemPtHhP4qHuwDPc=;
 b=oQzOmXyiswoQAHAKdEwj0INIkSyCBfdhsp23Y8yvpbSv8OJ2y/xrSB3fNaGfHTEsPE
 W494Lrnnzdh6Pc5FTSRe2bSKc3BFDH80azlAPda+MXGuMa/F+kilgPgcAX4czQo+zxvB
 hBHLzWpxzkarYsDEMelf7pCRrYIeYMZ9TPPWuGytLZci/MZU8ob3V4HFNUIZrS6t3b9q
 lR5iMBZ9pxPp8ZCSK8t31Ia/Mwd6LEjyTla4/g+T6LEvGx61Lo2vtisNEmwtlQVwU8Ej
 euRNnaTfXzldXKhMeAeihdQCFngYhzDGMutFTVlrAKwsot0DAccO2/xg51hL3PARDTjl
 KzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=M6D54Y9cAdwUjftrKOdf9/RVXWKvemPtHhP4qHuwDPc=;
 b=MdQk+IWhNp0WynET7HckMp6dfuhAOj7JOMIPWVwvouupLjR8g4GEhNk9pqBCpAdzSZ
 OXmkpyhUJDN7yp8ha8V1lqRVTc7xtCsag+X8EVL40do9EN1jpVbf8wt4WGQFEVsEmyuo
 71rYvqwnuk+TY/kKs1vK2POUtrsqrFkdHlB2FWAFvbKDRZ/x53FqglR6RCtHZ+IStYNc
 yOUNsSAee/MiVFGofBHo9zXyBYjvDmorknCaJLScgD+UomK5HgO1NX42FvoCQesQ4b1v
 +FKWADvbV8TB7NmNkPEF0fHBAeODZhyE6YuoEflI/r+H+jSZNJnwH4E2YiqcVcfu9fxH
 Ne2Q==
X-Gm-Message-State: APjAAAVmS2apOCzy3Llxeql9gOTgkbGfTx/HEibLPWdW2zswFyRck7HD
 Ta+ZeLKjV/CVp/dASe/ivrQ=
X-Google-Smtp-Source: APXvYqyhqu3gDCAGd3Nfla0MLJAy5xt2tYnQsgvABDULwzrRsJo83IWwUZxnXD//ER5h4B+4Id/SBw==
X-Received: by 2002:a63:c24c:: with SMTP id
 l12mr114354053pgg.173.1558804806540; 
 Sat, 25 May 2019 10:20:06 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id m9sm6861513pgd.23.2019.05.25.10.20.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 10:20:05 -0700 (PDT)
Date: Sat, 25 May 2019 22:50:00 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: rtl8723bs: hal: fix warning possible condition with
 no effect (if == else)
Message-ID: <20190525172000.GA18730@hari-Inspiron-1545>
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

this patch fixes below coccicheck warning

./drivers/staging/rtl8723bs/hal/odm_DIG.c:499:1-3: WARNING: possible
condition with no effect (if == else)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/odm_DIG.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/odm_DIG.c b/drivers/staging/rtl8723bs/hal/odm_DIG.c
index d7d87fa..70d98c5 100644
--- a/drivers/staging/rtl8723bs/hal/odm_DIG.c
+++ b/drivers/staging/rtl8723bs/hal/odm_DIG.c
@@ -496,13 +496,8 @@ void odm_DIGInit(void *pDM_VOID)
 	/* To Initi BT30 IGI */
 	pDM_DigTable->BT30_CurIGI = 0x32;
 
-	if (pDM_Odm->BoardType & (ODM_BOARD_EXT_PA|ODM_BOARD_EXT_LNA)) {
-		pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
-		pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
-	} else {
-		pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
-		pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
-	}
+	pDM_DigTable->rx_gain_range_max = DM_DIG_MAX_NIC;
+	pDM_DigTable->rx_gain_range_min = DM_DIG_MIN_NIC;
 
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
