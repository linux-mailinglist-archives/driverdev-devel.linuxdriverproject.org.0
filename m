Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3A931EC41
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 17:33:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0202873DC;
	Thu, 18 Feb 2021 16:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q+UyG44aK502; Thu, 18 Feb 2021 16:33:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74C9E873BF;
	Thu, 18 Feb 2021 16:33:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 921021BF36C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 80CAB60631
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rntS6LkshBKQ for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 16:33:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id DA70A60699; Thu, 18 Feb 2021 16:33:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1125960697
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:33:19 +0000 (UTC)
Date: Thu, 18 Feb 2021 16:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1613665996;
 bh=Xmnm25F8dJtzGykuyOII2OVkiSzMXlVCWeP0bkrqxBQ=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=TqLoqE2RZew5co5AF2tHpaZ018klI3mwIBQ5srfuK37W3zT0oo4WfBy3dBCK3MavL
 AXdUw/NZZeirXv4r7beTDYDNJJbjpSOXUN7bjoWuwqPpEwPxUHL0t9gV5LuERiTA0Q
 RbioLWjVbikyuV7F4RM0ZY8onHxGdVQPI6ERa0AI=
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 straube.linux@gmail.com, dan.carpenter@oracle.com, d.straghkov@ispras.ru,
 tiwai@suse.de
From: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: [PATCH] Staging: rtl8723bs: code-style fix
Message-ID: <20210218163204.7-1-fuzzybritches@protonmail.com>
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

Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
---

Checkpatch complains the constant needs to be on the right side of the
comparison. The preferred way is: 

 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 089c6ec19373..96feced698ac 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -2146,7 +2146,7 @@ void rtw_get_sec_iv(struct adapter *padapter, u8 *pcur_dot11txpn, u8 *StaAddr)
 	struct security_priv *psecpriv = &padapter->securitypriv;
 
 	memset(pcur_dot11txpn, 0, 8);
-	if (StaAddr == NULL)
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
