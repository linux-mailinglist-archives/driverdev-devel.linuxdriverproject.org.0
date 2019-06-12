Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D59E41A61
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 04:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45AD587E3C;
	Wed, 12 Jun 2019 02:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mu5USx9GULsV; Wed, 12 Jun 2019 02:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A03486132;
	Wed, 12 Jun 2019 02:30:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56F291BF348
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 02:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5423F85F75
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 02:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d672UM434x6T for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 02:30:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9B7D9855CC
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 02:30:02 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id a93so5952328pla.7
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 19:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=t/rKc3UZZprCkI3wfeBbbL1oVUA4HMdb6pTNv5jLyR8=;
 b=Cj5dIYRv5xHkfWnoRUxXfl7u999Son8N/lGdopdqLfG+VmK+JRrGtBGsqlwTBFXbDZ
 5VXTbjdmESfdMiySOW9wvkUQA98dtrx8sh46BmlJL9MjqgYCzfP+rmIADR6cFeeqCUyM
 LVf0IOmzRiUKk+HjDtGhmM9GENkBKdmNuNfa7R4S0bSrAbqYOttG5cvIczCBYW5BOlpw
 DnE9pLo8tPSjIKmwcY24WLMCt9e7xaKqpl/iusfIuVZ2ld43WEzvlk6+w/M2+JWmo2ti
 tgG1gCC556flN8mvNBdNZNgTkbEGpzJie3a3Ih9gJM+yZSkgvtauMKaJiIRSQH4smUiA
 ITxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=t/rKc3UZZprCkI3wfeBbbL1oVUA4HMdb6pTNv5jLyR8=;
 b=qo/vj0i49IMhq8VZtwRKL9XYJo/2TGmGgjxhmtNhSDE9eYfnjWiVjNs4wYq/8AH0e5
 OvqGurkcwmvVzV28bmEOUKHHifrjef9KF6vINHR6gKAbTfpwzNThzI/q8vSTm+mnztJx
 luhMTyN32DB++Dd+Y2h36iLq/szzBhqZniWZ/TmXXRxeVdFvWkiTBX2R9Ai0WdClWi0w
 CidxZp4X8jGWKvXAhLeOzSg23QtakPI/mhnnx5G6U4NeLoTANyfH6TeVgU/mBriq4VNp
 CMhdKJhx8YjRMOBPMp6s2JzA0R6uO/E7+XGNuAqZ0FWg1TMDd4OT1gn4dmA31+6fB5A1
 crZQ==
X-Gm-Message-State: APjAAAUYEGw3n3+AOT9KDx0rUtNtfCmSQl2xA1n7dseHudDr/XpFpu4P
 16MLjI1EdBtWfY6OtKDAg90=
X-Google-Smtp-Source: APXvYqwf7Zp29rxomvSWiSoF/w4ki3aL363oWnSRiCls9jLx8X+BkZoR17yHp8KcSZoNLMHApQzbcA==
X-Received: by 2002:a17:902:bb90:: with SMTP id
 m16mr12324750pls.54.1560306602272; 
 Tue, 11 Jun 2019 19:30:02 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id x17sm15448463pgk.72.2019.06.11.19.29.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 19:30:01 -0700 (PDT)
Date: Wed, 12 Jun 2019 07:59:57 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: hal: sdio_halinit: fix comparison to
 true/false is error prone
Message-ID: <20190612022956.GA23698@hari-Inspiron-1545>
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

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 3c65a9c..70f9e1d 100644
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

 /*	SIC_Init(padapter); */

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
+	if (padapter->hw_init_completed) {
		if (adapter_to_pwrctl(padapter)->bips_processing == true) {
-			if (padapter->netif_up == true) {
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
