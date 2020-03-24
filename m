Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F30F2191206
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 14:52:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FB0886968;
	Tue, 24 Mar 2020 13:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0T9e2808GHrc; Tue, 24 Mar 2020 13:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3947A86008;
	Tue, 24 Mar 2020 13:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A32641BF3D6
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 13:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 968C820016
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 13:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3NMpReLNcYmp for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 13:52:36 +0000 (UTC)
X-Greylist: delayed 02:37:44 by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by silver.osuosl.org (Postfix) with ESMTPS id 47A722000B
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 13:52:35 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (unknown [217.70.183.200])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id 248FC3A91D7
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 10:36:09 +0000 (UTC)
X-Originating-IP: 83.155.44.161
Received: from classic (mon69-7-83-155-44-161.fbx.proxad.net [83.155.44.161])
 (Authenticated sender: hadess@hadess.net)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E992D20017;
 Tue, 24 Mar 2020 10:36:01 +0000 (UTC)
Message-ID: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
Subject: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
From: Bastien Nocera <hadess@hadess.net>
To: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org
Date: Tue, 24 Mar 2020 11:36:00 +0100
User-Agent: Evolution 3.36.0 (3.36.0-1.fc32) 
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Make it possible to disable the LED, as it can be pretty annoying
depending on where it's located.

See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
out-of-tree version.

Signed-off-by: Bastien Nocera <hadess@hadess.net>
---
 drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
 drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
 drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
 3 files changed, 13 insertions(+)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index d1406cc99768..75a859accb7e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -467,10 +467,16 @@ void blink_handler(struct LED_871x *pLed)
 
 void led_control_8188eu(struct adapter *padapter, enum LED_CTL_MODE LedAction)
 {
+	struct registry_priv *registry_par;
+
 	if (padapter->bSurpriseRemoved || padapter->bDriverStopped ||
 	    !padapter->hw_init_completed)
 		return;
 
+	registry_par = &padapter->registrypriv;
+	if (!registry_par->led_enable)
+		return;
+
 	if ((padapter->pwrctrlpriv.rf_pwrstate != rf_on &&
 	     padapter->pwrctrlpriv.rfoff_reason > RF_CHANGE_BY_PS) &&
 	    (LedAction == LED_CTL_TX || LedAction == LED_CTL_RX ||
diff --git a/drivers/staging/rtl8188eu/include/drv_types.h b/drivers/staging/rtl8188eu/include/drv_types.h
index 35c0946bc65d..4ca828141d3f 100644
--- a/drivers/staging/rtl8188eu/include/drv_types.h
+++ b/drivers/staging/rtl8188eu/include/drv_types.h
@@ -67,6 +67,8 @@ struct registry_priv {
 	u8	wmm_enable;
 	u8	uapsd_enable;
 
+	u8	led_enable;
+
 	struct wlan_bssid_ex    dev_network;
 
 	u8	ht_enable;
diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index 8907bf6bb7ff..ba55ae741215 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -47,6 +47,8 @@ static int rtw_acm_method;/*  0:By SW 1:By HW. */
 static int rtw_wmm_enable = 1;/*  default is set to enable the wmm. */
 static int rtw_uapsd_enable;
 
+static int rtw_led_enable = 1;
+
 static int rtw_ht_enable = 1;
 /* 0 :disable, bit(0): enable 2.4g, bit(1): enable 5g */
 static int rtw_cbw40_enable = 3;
@@ -98,6 +100,7 @@ module_param(rtw_channel, int, 0644);
 module_param(rtw_wmm_enable, int, 0644);
 module_param(rtw_vrtl_carrier_sense, int, 0644);
 module_param(rtw_vcs_type, int, 0644);
+module_param(rtw_led_enable, int, 0644);
 module_param(rtw_ht_enable, int, 0644);
 module_param(rtw_cbw40_enable, int, 0644);
 module_param(rtw_ampdu_enable, int, 0644);
@@ -162,6 +165,8 @@ static void loadparam(struct adapter *padapter, struct net_device *pnetdev)
 	registry_par->wmm_enable = (u8)rtw_wmm_enable;
 	registry_par->uapsd_enable = (u8)rtw_uapsd_enable;
 
+	registry_par->led_enable = (u8)rtw_led_enable;
+
 	registry_par->ht_enable = (u8)rtw_ht_enable;
 	registry_par->cbw40_enable = (u8)rtw_cbw40_enable;
 	registry_par->ampdu_enable = (u8)rtw_ampdu_enable;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
