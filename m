Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B91C21762A
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jul 2020 20:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01C2F899D3;
	Tue,  7 Jul 2020 18:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQCCQkSC5FPb; Tue,  7 Jul 2020 18:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB428899A6;
	Tue,  7 Jul 2020 18:16:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9EB21BF97C
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 18:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A762D860FF
 for <devel@linuxdriverproject.org>; Tue,  7 Jul 2020 18:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tol0wAezqHru for <devel@linuxdriverproject.org>;
 Tue,  7 Jul 2020 18:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 396DE85F8E
 for <devel@driverdev.osuosl.org>; Tue,  7 Jul 2020 18:14:42 +0000 (UTC)
Received: from embeddedor (unknown [200.39.26.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A74F92065F;
 Tue,  7 Jul 2020 18:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594145682;
 bh=uD2w603wgU0bU7XLH2y1Ntci6dAVVpbixOgMNfmbeas=;
 h=Date:From:To:Cc:Subject:From;
 b=RwJ3LiHsX5bikASuTHCgtD+BwMWe7tD8wJ9BzgYPDgL8VRca8j5L35IZw2bxdEWcd
 aFljhWi1gYx0Ne4A9lKHr3HqXIMqn48Iz2FjdcbrJY+zi3+fZvnc5W7BK7KaTxAViD
 J054kC/aCUOCAfOfLTi60DKHwXvyOwMVR4gV75y4=
Date: Tue, 7 Jul 2020 13:20:08 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: Use fallthrough pseudo-keyword
Message-ID: <20200707182008.GA341@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace the existing /* fall through */ comments and its variants with
the new pseudo-keyword macro fallthrough[1]. Also, remove unnecessary
fall-through markings when it is the case.

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html?highlight=fallthrough#implicit-switch-case-fall-through

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c    |    2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c      |    2 +-
 drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8d035f67ef61..414f1834657a 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -4133,7 +4133,7 @@ void mgt_dispatcher(struct adapter *padapter, struct recv_frame *precv_frame)
 			ptable->func = &OnAuth;
 		else
 			ptable->func = &OnAuthClient;
-		/* fall through */
+		fallthrough;
 	case WIFI_ASSOCREQ:
 	case WIFI_REASSOCREQ:
 	case WIFI_PROBEREQ:
diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 16a57b31a439..114638f6f719 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1728,7 +1728,7 @@ void rtw_hal_get_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 	switch (variable) {
 	case HW_VAR_BASIC_RATE:
 		*((u16 *)(val)) = Adapter->HalData->BasicRateSet;
-		/* fall through */
+		fallthrough;
 	case HW_VAR_TXPAUSE:
 		val[0] = usb_read8(Adapter, REG_TXPAUSE);
 		break;
diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
index 3cd6da1f843d..a80c7f3b86d1 100644
--- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
@@ -400,7 +400,7 @@ static void usb_read_port_complete(struct urb *purb, struct pt_regs *regs)
 		case -ENODEV:
 		case -ESHUTDOWN:
 			adapt->bSurpriseRemoved = true;
-			/* fall through */
+			fallthrough;
 		case -ENOENT:
 			adapt->bDriverStopped = true;
 			RT_TRACE(_module_hci_ops_os_c_, _drv_err_,

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
