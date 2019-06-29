Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819DD5AA40
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34143881E2;
	Sat, 29 Jun 2019 10:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltj2kzedaz-B; Sat, 29 Jun 2019 10:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B155E8820C;
	Sat, 29 Jun 2019 10:37:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9242B1BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8B55D876A2
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zc3WLym6TrRN for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:37:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C00AA8769E
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:37:56 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z75so3733079pgz.5
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=yoei6OKyQ32Hktc4WD0L2ybo+pYYJb/gMNDeW+rSA+k=;
 b=nyAAedilz8ZuPvbjrF4k/MssId+dVX8zigThjC6ez/Brb1UluWi/wnReWSOuu+CYp3
 byrAGIynauAw66ZxxePBZuVF2h6FR5wTS98mfr+kf1f7P2qDvx3TPFLUDKUrFXp74laO
 5413Xo9aK32KGU2aGZ8ZaSU/b8Bwv8GvQk75DkW4kd/ATz0rmElcsZut6fw6YsBih9Sz
 fOImWiJuQH6Qt8hrLYOxcbTEMfy+7Mctlau2M18GV9gtfk7oR34mceA0thuT8Vw5DB6L
 fpNYB7skxFGZ86gMEuBck8QzPPAMmItNhNCrk8qZahlZYvk9LSp67ErvtJaX2ERJCo0T
 o62w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=yoei6OKyQ32Hktc4WD0L2ybo+pYYJb/gMNDeW+rSA+k=;
 b=mxOwx5xRl4TOwaNjEZUvhiC9hV2iqL+viUAkwkT9e6VjRw81Q7wsIUFwPCGug52pX7
 Le0mRfLPorFai0s/xlj4v1GH7E4OR1vAocLoiRa4TEtBXgysXuv/fXReuGbyEQW1FSde
 rQ6HLpE2+2mrWlTGw8ntm1zXZdYdR1pGNE7y/n4hy9nGmIGBaCYq76jMKKe0UaIqA2bE
 kmgaXay6rmzx0La3Us+KX7Nd2b//Eyc1hKmJrBCOtmD2RQloTemIoK2d1HLUII5EI5Ex
 V8Uz7OKuF4TxzoCtiQ9oHZrkC3sq+ynD9H3r9tcCNXN+wE5V4rPpGv7GpYMyA8kWtU7d
 tM/Q==
X-Gm-Message-State: APjAAAWq9MCwAzh925J7GhZb3Ds3wTyqzLnZyXTpeaB2FUp8TkYkGrET
 yUtvp81KYo9DjRo51PX7jt0=
X-Google-Smtp-Source: APXvYqyRcYwh9MdNCoo4/AH7YAApEf4gE7xMCCJfQoiTzZp0CZe6hLNb6wn/nRQ6w8AAfJudQfrV3g==
X-Received: by 2002:a17:90a:b115:: with SMTP id
 z21mr18830524pjq.64.1561804676426; 
 Sat, 29 Jun 2019 03:37:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 201sm5880808pfz.24.2019.06.29.03.37.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:37:55 -0700 (PDT)
Date: Sat, 29 Jun 2019 16:07:51 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 10/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629103751.GA15649@hari-Inspiron-1545>
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
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index 66caf34..99e0b91 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -290,7 +290,7 @@ static u8 halbtcoutsrc_IsWifiBusy(struct adapter *padapter)
 	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE) == true) {
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
 			return true;
-		if (true == pmlmepriv->LinkDetectInfo.bBusyTraffic)
+		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
 			return true;
 	}
 
@@ -310,12 +310,12 @@ static u32 _halbtcoutsrc_GetWifiLinkStatus(struct adapter *padapter)
 
 	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE) == true) {
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
-			if (true == bp2p)
+			if (bp2p)
 				portConnectedStatus |= WIFI_P2P_GO_CONNECTED;
 			else
 				portConnectedStatus |= WIFI_AP_CONNECTED;
 		} else {
-			if (true == bp2p)
+			if (bp2p)
 				portConnectedStatus |= WIFI_P2P_GC_CONNECTED;
 			else
 				portConnectedStatus |= WIFI_STA_CONNECTED;
@@ -372,7 +372,7 @@ static u8 halbtcoutsrc_GetWifiScanAPNum(struct adapter *padapter)
 
 	pmlmeext = &padapter->mlmeextpriv;
 
-	if (GLBtcWiFiInScanState == false) {
+	if (!GLBtcWiFiInScanState) {
 		if (pmlmeext->sitesurvey_res.bss_cnt > 0xFF)
 			scan_AP_num = 0xFF;
 		else
@@ -1444,7 +1444,7 @@ void hal_btcoex_IQKNotify(struct adapter *padapter, u8 state)
 
 void hal_btcoex_BtInfoNotify(struct adapter *padapter, u8 length, u8 *tmpBuf)
 {
-	if (GLBtcWiFiInIQKState == true)
+	if (GLBtcWiFiInIQKState)
 		return;
 
 	EXhalbtcoutsrc_BtInfoNotify(&GLBtCoexist, tmpBuf, length);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
