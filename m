Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B87131FEB9
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 19:24:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58CF9868BC;
	Fri, 19 Feb 2021 18:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sWUYWYW9vp6e; Fri, 19 Feb 2021 18:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B51186BFE;
	Fri, 19 Feb 2021 18:24:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2AAD1BF37C
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 18:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B3A3606FC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 18:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zfh2IqYyoU3N for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 18:24:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id BFE28606FB; Fri, 19 Feb 2021 18:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2D8B60672
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 18:24:02 +0000 (UTC)
Date: Fri, 19 Feb 2021 18:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1613759038;
 bh=INaW8+67y2Qr+AIhL2pM7hrEvl532xeKD+BY3hq66KE=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=ZeIXOuhZLe2y1vN9M39L7Bs8Vnq3W5g3wQeoAHeKPcVy5k4zNwxfUav5KXrBBHBSN
 UPTAbLBTbY5ni3uOkGp1CDe3o2CnQPXTL/npHxLfhwtIt+bJ91j86J9Jmjh61C4ISF
 32boGRavG0K//mFdcGin2L/kPcaOrQtL5S/O9X+g=
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 straube.linux@gmail.com, dan.carpenter@oracle.com, d.straghkov@ispras.ru,
 tiwai@suse.de
From: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: [PATCH v3] staging: rtl8723bs: fix code style comparison warning
Message-ID: <20210219182331.8-1-fuzzybritches@protonmail.com>
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
Reply-To: Kurt Manucredo <fuzzybritches@protonmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Kurt Manucredo <fuzzybritches@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



checkpatch gives the following WARNING:
WARNING: Comparisons should place the constant on the right side of the test
this patch fixes the coding style warning.

Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
---

changes since previous version:
- put version chatter below the --- cut off line.

thank you very much for your help Mr. Dan Carpenter.

 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 975f2830e29e..96feced698ac 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -2146,7 +2146,7 @@ void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr)
 	struct security_priv *psecpriv = &padapter->securitypriv;
 
 	memset(pcur_dot11txpn, 0, 8);
-	if (NULL == StaAddr)
+	if (!StaAddr)
 		return;
 	psta = rtw_get_stainfo(&padapter->stapriv, StaAddr);
 	DBG_871X("%s(): StaAddr: %02x %02x %02x %02x %02x %02x\n",
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
