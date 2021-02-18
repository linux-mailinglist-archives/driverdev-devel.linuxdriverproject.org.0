Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BE031EBDE
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 16:54:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0FEC869C8;
	Thu, 18 Feb 2021 15:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ge0fOTVQKMBM; Thu, 18 Feb 2021 15:54:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 232D58691A;
	Thu, 18 Feb 2021 15:54:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0223D1BF391
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F32EC8698B
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:54:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3WXvz7bZ6MQd for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 15:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8F1D86978
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 15:54:46 +0000 (UTC)
Date: Thu, 18 Feb 2021 15:54:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1613663683;
 bh=OwDtZtFMadZiig+h6XKqgkc1XKr1EH2J9L/7rIWs+9s=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=U4Lck1nBMb8sjSSRj2OPeNx0oxXT4J2rpOkJUCDoV0kJJU6YtvIQR+vD4HP+Rss+Y
 Y6PeFupfHjiYfbopLFCMh/cACMu1oAIkibdObQYqC9NNLfkOHV7Sw6h7tHQja3rNDN
 xyyGoH281UCypt1H5g6bUzb4xrECWsqCtGKWbyq8=
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
From: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: [PATCH] fix comparisons - put constant on right side- eudyptula
 challenge 10
Message-ID: <20210218155422.7-2-fuzzybritches@protonmail.com>
In-Reply-To: <20210218155422.7-1-fuzzybritches@protonmail.com>
References: <20210218155422.7-1-fuzzybritches@protonmail.com>
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
Cc: Kurt Manucredo <fuzzybritches@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 975f2830e29e..089c6ec19373 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -2146,7 +2146,7 @@ void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr)
 	struct security_priv *psecpriv = &padapter->securitypriv;
 
 	memset(pcur_dot11txpn, 0, 8);
-	if (NULL == StaAddr)
+	if (StaAddr == NULL)
 		return;
 	psta = rtw_get_stainfo(&padapter->stapriv, StaAddr);
 	DBG_871X("%s(): StaAddr: %02x %02x %02x %02x %02x %02x\n",
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
