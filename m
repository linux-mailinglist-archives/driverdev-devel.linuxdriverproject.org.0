Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F29A22D77D
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 14:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BF9A86DD5;
	Sat, 25 Jul 2020 12:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbK33MHyGX1B; Sat, 25 Jul 2020 12:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5C37868FE;
	Sat, 25 Jul 2020 12:21:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE72A1BF36C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 11EF8204AC
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XbiwDhxyGUpz for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 12:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 487F720427
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 12:21:05 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id x72so6687237pfc.6
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 05:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yRXLZ1hu0sdoPx6SqZ2r2f9LoGCTilqOZCtacbE99yE=;
 b=c4ETVqf2fjIOzvWD4AEHxxk34aiEUhfytDdkjgA3gxDihXSGeihBUrxYoQpM9Mf4L9
 38xRK/wDozdEvvx/x7WrPwtxnUJlTm4+Vl4Khh+l+1SnpTUACZZuy6v+oJa7ryJ0HBTt
 7js5oKB5xSO+2olbei6IzycDLdiUzSe6+WHqKmDqAsl8Gj9zELuSOl988WwJU3RkwWzl
 0GvV/5j7IFZESrVkUWOMZU1wDuezxE8YTw2pOauVuNsTFLZ0RUor/bLzbBA/O3RAa/lo
 Rdo1k6md8UtQ4swo+sGTmr8hPJi6PQjer9vFLUkgPVHJXrsgkZIP1NWN8VFNMlLpzul0
 eMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yRXLZ1hu0sdoPx6SqZ2r2f9LoGCTilqOZCtacbE99yE=;
 b=iMB2Bfv4604YhQ8jhlROEjWRgaEbmlRfCLHYV2Dtjt06Rz+5vVbSnmVEs26gqW5CPj
 u7OPhcJd687/o2q8RXEkWz8Jjcw7YshAWq6phAokh/MJnyxBmbAIYE6SzIpG8wmDkZcp
 ixJdLWMFjI3zpn+Do09lV7UGYY43TwEs1XKuXRovoEpTnebwKODEFpaGKj2MmFibCmGI
 TdrwWgkFng6/rrSdD6uGRjSuwnlv6wexyE2WToSue3bV5B9/20zvjO0wCCrquG/f1Fmk
 cHbBceBdbiSe5vUR677xUF4dR4sKPwQs2AcowNlKKehClnC7Yls6QN+OvQCPXgGpN7DG
 VZbw==
X-Gm-Message-State: AOAM530aYenTEBCk5Bx01PRlCJUfYko7KPf4lLqSidqaraxFuqaIKNGk
 wPDblPtGM+Amlz7e4aqNIKc=
X-Google-Smtp-Source: ABdhPJy1KXFwgIZqdb2bB1Z/+XcKp3QfLpB8HjgEDafci6Ce3yLSlQqAlwsxMFaQQFzFosEYI+W1gw==
X-Received: by 2002:a62:1d52:: with SMTP id d79mr12707193pfd.106.1595679664617; 
 Sat, 25 Jul 2020 05:21:04 -0700 (PDT)
Received: from localhost.localdomain ([106.51.23.74])
 by smtp.gmail.com with ESMTPSA id q3sm8561141pjo.16.2020.07.25.05.21.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jul 2020 05:21:03 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH 1/1] STAGING - REALTEK RTL8188EU DRIVERS: Fix Coding Style
 Error
Date: Sat, 25 Jul 2020 17:50:38 +0530
Message-Id: <20200725122041.5663-1-anant.thazhemadam@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Merwin Trever Ferrao <merwintf@gmail.com>, anant.thazhemadam@gmail.com,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Anoop S <anoop.skumar1507@gmail.com>,
 Joe Perches <joe@perches.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Running the checkpatch.pl script on the file for which patch was created, the 
following error was found to exist.
ERROR: space required after that ',' (ctx:VxV)

Fixed the above error which was found on line #721 by inserting a blank
space at the appropriate position.

Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 21f6652dd69f..57e171d3e48d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -718,7 +718,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				res = _FAIL;
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n", __func__));
 			res = _FAIL;
 		}
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
