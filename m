Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A3645233
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 04:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B1AB220B2;
	Fri, 14 Jun 2019 02:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fef6VRGvwusH; Fri, 14 Jun 2019 02:54:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52DEB228A7;
	Fri, 14 Jun 2019 02:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9FD851BF2F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 996B9878C0
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u32hLBt+qeSe for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 02:54:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E261F85DA0
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 02:54:39 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 19so473607pfa.4
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 19:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=jZ4MKy9YxFUhqGFBTxUT54NN/xTa5W9Uj5g9ozrgptI=;
 b=Q7HSY7EjZQGQ9Ik/MhnqXQKFZ1HJLMJYroXRmjlLJiKzhIVleX5aslqolb/ew30xaM
 Wlm4fqGahygpGiVioY9RFEeyY1d5cCDRkirAEY6Nir+L3ntcgAykS0q0HyR7rjMxFQKt
 PSm2n/0Pz7jPoONTlL9bnN/g77+Ncx2kXJTFuZvo0fEt2g1ZDosIw8KfVOvsmJ18AA52
 6YCZXFvpoQKFTVkaTO0ZHO+Jg2gQcniXTRAEYAHfudN2UBJoKzZaPVd+HBg0xQd2txIA
 tqqgWB+zASyZW4n+gKDOSYmDg72ygT17Iy5bziFmZGFA89UNW3Ig+U4xGdRwe84irubg
 eLBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=jZ4MKy9YxFUhqGFBTxUT54NN/xTa5W9Uj5g9ozrgptI=;
 b=fDrP7N7L34v/CLfUkBlXYzEt5tJDtj5LwGSapNy/6Hnjk0ANkUCTfNlDOObcBXejPU
 9Nt/camTWkVpW9PkojnwsjjMsbIeO7hdwYr3b5ue0wepEhVvP433VEoaF60rSAJMIuWf
 EPk4IBzBqIY4F8gsduLgWiJ6MZpP3MD8US9i3RjENI4uPl+yzl/Zn/gWDWZ+0garwhXk
 dFKcHaIWBtYqpp4LM06OmVug7UKBLrD5mW1VfJ4mU0Wr7m4KH/arCWRVzPXGrHmFFuLz
 Lcg5ocN3UYXQVZ/9vsqY8Xse4buExmbD99gt0B2V/g3gwxppSwCalBlzFlreMmScBfeb
 cf4g==
X-Gm-Message-State: APjAAAVYgeaCQJNstnPIMzFGbRfyaijt7WReenmRDZCPM9lW5Z0hJlOp
 /8Ub9+mowavUGHi7KqFN0nc=
X-Google-Smtp-Source: APXvYqybA+iWIZjbf7ta+ltJQot2TZ9pQmvj4Z1cPVeC9gfppYWgN4MB4WNMREeDrSs9w+LaH36aiQ==
X-Received: by 2002:aa7:921a:: with SMTP id 26mr52507472pfo.99.1560480879482; 
 Thu, 13 Jun 2019 19:54:39 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id p3sm1096076pgh.90.2019.06.13.19.54.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 19:54:38 -0700 (PDT)
Date: Fri, 14 Jun 2019 08:24:34 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2 1/3] staging: rtl8723bs: hal: sdio_halinit: fix comparison
 to true/false is error prone
Message-ID: <20190614025433.GA3419@hari-Inspiron-1545>
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
----
changes in v2:      send proper patch without corruption
----
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 3c65a9c..4db3211 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -26,7 +26,7 @@ static u8 CardEnable(struct adapter *padapter)
 
 
 	rtw_hal_get_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn);
-	if (bMacPwrCtrlOn == false) {
+	if (!bMacPwrCtrlOn) {
 		/*  RSV_CTRL 0x1C[7:0] = 0x00 */
 		/*  unlock ISO/CLK/Power control register */
 		rtw_write8(padapter, REG_RSV_CTRL, 0x0);
@@ -127,7 +127,7 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 
 	/*  only cmd52 can be used before power on(card enable) */
 	ret = CardEnable(padapter);
-	if (ret == false) {
+	if (!ret) {
 		RT_TRACE(
 			_module_hci_hal_init_c_,
 			_drv_emerg_,
@@ -838,7 +838,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 
 /* 	SIC_Init(padapter); */
 
-	if (pwrctrlpriv->reg_rfoff == true)
+	if (pwrctrlpriv->reg_rfoff)
 		pwrctrlpriv->rf_pwrstate = rf_off;
 
 	/*  2010/08/09 MH We need to check if we need to turnon or off RF after detecting */
@@ -1081,7 +1081,7 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
 	ret = false;
 	rtw_hal_set_hwreg(padapter, HW_VAR_APFM_ON_MAC, &bMacPwrCtrlOn);
 	ret = HalPwrSeqCmdParsing(padapter, PWR_CUT_ALL_MSK, PWR_FAB_ALL_MSK, PWR_INTF_SDIO_MSK, rtl8723B_card_disable_flow);
-	if (ret == false) {
+	if (!ret) {
 		DBG_8192C(KERN_ERR "%s: run CARD DISABLE flow fail!\n", __func__);
 	}
 }
@@ -1091,9 +1091,9 @@ static u32 rtl8723bs_hal_deinit(struct adapter *padapter)
 	struct dvobj_priv *psdpriv = padapter->dvobj;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	if (padapter->hw_init_completed == true) {
-		if (adapter_to_pwrctl(padapter)->bips_processing == true) {
-			if (padapter->netif_up == true) {
+	if (padapter->hw_init_completed) {
+		if (adapter_to_pwrctl(padapter)->bips_processing) {
+			if (padapter->netif_up) {
 				int cnt = 0;
 				u8 val8 = 0;
 
@@ -1387,7 +1387,7 @@ static s32 _ReadAdapterInfo8723BS(struct adapter *padapter)
 	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+_ReadAdapterInfo8723BS\n"));
 
 	/*  before access eFuse, make sure card enable has been called */
-	if (padapter->hw_init_completed == false)
+	if (!padapter->hw_init_completed)
 		_InitPowerOn_8723BS(padapter);
 
 
@@ -1404,7 +1404,7 @@ static s32 _ReadAdapterInfo8723BS(struct adapter *padapter)
 	_ReadPROMContent(padapter);
 	_InitOtherVariable(padapter);
 
-	if (padapter->hw_init_completed == false) {
+	if (!padapter->hw_init_completed) {
 		rtw_write8(padapter, 0x67, 0x00); /*  for BT, Switch Ant control to BT */
 		CardDisableRTL8723BSdio(padapter);/* for the power consumption issue,  wifi ko module is loaded during booting, but wifi GUI is off */
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
