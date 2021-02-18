Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C96C31F040
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 20:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92BE186A59;
	Thu, 18 Feb 2021 19:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwfGkELJ9xeS; Thu, 18 Feb 2021 19:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8BD3186A34;
	Thu, 18 Feb 2021 19:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 359F81BF425
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 19:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3214B86A35
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 19:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rW2KOv1m4KLP for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 19:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
 [185.70.40.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A199086A34
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 19:50:34 +0000 (UTC)
Date: Thu, 18 Feb 2021 19:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1613677832;
 bh=5ggeVjRn5F1Ls1DzZNiFFb/uh50A5QU8V2mtMiRuhrk=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=uel7JH/5FamK4gB7wE0K3UgWUBRBVLbWLP6id9k+riaKejAs3hfjYY28xkpCxQ4Sk
 3kuRHGn+054v1DbDARkFc3BZ2IHkb6fenJkDP7rGf3yeVyVuCnDWZE8J2k8uouoPz6
 qZmY407E8vVHS461XGEvQlqnR9Tv4SxHLcXYiz60=
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 straube.linux@gmail.com, dan.carpenter@oracle.com, d.straghkov@ispras.ru,
 tiwai@suse.de
From: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: [PATCH] staging: rtl8723bs: make if-statement checkpatch.pl conform
Message-ID: <20210218194830.8-1-fuzzybritches@protonmail.com>
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

The preferred coding style is:
	if (!StaAddr)
	return;

thank you mr. dan carpenter

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
