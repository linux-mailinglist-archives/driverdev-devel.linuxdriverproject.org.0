Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2638D31FB4F
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 15:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CA01873EC;
	Fri, 19 Feb 2021 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P3rnBozGXM3w; Fri, 19 Feb 2021 14:51:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E548873AE;
	Fri, 19 Feb 2021 14:51:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 154C41BF846
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 14:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03AFC605C4
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 14:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-DpmhMwHPL6 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 14:51:03 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 326F1606C5; Fri, 19 Feb 2021 14:51:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D1CD605C4
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 14:51:01 +0000 (UTC)
Date: Fri, 19 Feb 2021 14:50:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1613746257;
 bh=BPO44djbjU0U7U6CEqbJq2ajIOB5c8MQDyfxlplmIpc=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=oYt0Dqgk921QTN0pFeha7YcVP6aMTM35WJcTfqKwfgOHfZUJPs9TAfoIktFeJIwBF
 s9V/6gmAQNCbKO99j4LHNG1e7W0nkz2W70AM1u6VisUbcKbeLlwr6ZdwooKqhZMnLb
 dF+/vluEMBerPq1PYtxmV4DtebDAmTwDWZm/PSOk=
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 straube.linux@gmail.com, dan.carpenter@oracle.com, d.straghkov@ispras.ru,
 tiwai@suse.de
From: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: [PATCH v2] staging: rtl8723bs: fix code style comparison warning
Message-ID: <20210219144928.8-1-fuzzybritches@protonmail.com>
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



changes since previous version:
- change Subject line
- change commit message
- change commit message position to above signed-off-by

checkpatch gives the following WARNING:
WARNING: Comparisons should place the constant on the right side of the test
this patch fixes the coding style warning.

Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
---
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
