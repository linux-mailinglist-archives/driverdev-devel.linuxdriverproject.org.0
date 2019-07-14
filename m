Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F006807B
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:25:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25E868749A;
	Sun, 14 Jul 2019 17:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FTIPI-Meu+P; Sun, 14 Jul 2019 17:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C9BA8715D;
	Sun, 14 Jul 2019 17:25:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08F7F1BF20F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0436385137
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:24:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KuLMuXR61CbE for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:24:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 995DD84D11
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:24:58 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i189so6352169pfg.10
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 10:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=2pbMNaC4Dad7U4b1ohLm6/S8pl6bc6ilVpOGqbkUqAU=;
 b=L3FbQxlUt6QOMgJibrCgsFLEMZaCbxHxYOTNTouv4U83dvyhQXBwR5wKoArg5xPdk5
 8oq8VgPUrj/guQV9+qVLGARPN7/eDjO5Yb6DLuJ7N0E4HvmHuyt/Z8AwbpUFyhGOYvn8
 mLJlHyjLcQ0cbBzqeWg4U0OUxHwohTJj2DtxI7QB6jOiELCdt3SHrztCnBWUZoRkMXhv
 FDJRexUpjWMzLxXN2bkAL2ogNWP7SNY4N1ZptSXImBTTZFLj74GHoyrFYxRx8bNVJLPz
 NJa2zdh1uhx6yr2K4T6UJ1jCH3kuo6s0v72iaAsMRroTncW0+J1JgdVEzew7hfhCbiMb
 AaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=2pbMNaC4Dad7U4b1ohLm6/S8pl6bc6ilVpOGqbkUqAU=;
 b=ZfZr5fljUrFiSOxFSO0uZQwf9oPAAe0uLxalswv9NnsYHDLMd1hacG56qeVPl7RGPh
 GSD8cs6vldUSgWxIHJ8ZI2uPZEenZUL2JnkvwA05bE4t0VyxiSKE9rTzDrlDWICcDEwk
 y/X3CHKZoNT3+gc4CY8TXFaL04BDUvyVcTiPX9+IV6e1V1tJIshTksmCLvesjy0+icpE
 cL/o8uhfaqdCIahtp1nY5aIk/ICvf+y/l/svF6AViYYQoCz/ckcYMynTdTzGOvpWPRXp
 etPaw+nbUNMV4PBgKS1qoTq+mrJ1teKzJyJGCI7SYpJfr1zs/28QLzEWkSDFiL6YvD10
 3LVA==
X-Gm-Message-State: APjAAAXSDUq2+2Ppq+szGWwP/6g7BcKxsjfzKTxFu1yMIkNNovH6Pu5j
 VJrxB8f//+gP3G0nYYN+xRA=
X-Google-Smtp-Source: APXvYqzCK6ajuqxRT2CT9FfwiHtOC2hGmLuxh2yCafolp/fS1quAbQAuUWDYfuhArNTT6pjxjvl+5A==
X-Received: by 2002:a63:3d8f:: with SMTP id
 k137mr22863673pga.337.1563125098142; 
 Sun, 14 Jul 2019 10:24:58 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id c26sm14189820pfr.172.2019.07.14.10.24.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 10:24:57 -0700 (PDT)
Date: Sun, 14 Jul 2019 22:54:51 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Remove code valid only for 5GHz
Message-ID: <20190714172451.GA6779@hari-Inspiron-1545>
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

As per TODO ,remove code valid only for 5 GHz(channel > 14).

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 638b12a..eddd56a 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -152,10 +152,7 @@ bool HAL_IsLegalChannel(struct adapter *Adapter, u32 Channel)
 {
 	bool bLegalChannel = true;
 
-	if (Channel > 14) {
-		bLegalChannel = false;
-		DBG_871X("Channel > 14 but wireless_mode do not support 5G\n");
-	} else if ((Channel <= 14) && (Channel >= 1)) {
+	if ((Channel <= 14) && (Channel >= 1)) {
 		if (IsSupported24G(Adapter->registrypriv.wireless_mode) == false) {
 			bLegalChannel = false;
 			DBG_871X("(Channel <= 14) && (Channel >= 1) but wireless_mode do not support 2.4G\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
