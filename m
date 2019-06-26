Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9120C55F25
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 04:42:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3EAD21514;
	Wed, 26 Jun 2019 02:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PpibxiFCQB6X; Wed, 26 Jun 2019 02:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26634214EB;
	Wed, 26 Jun 2019 02:42:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 56E211BF3DE
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:41:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AEF6867AC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 02:41:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTKRj0irXF8G for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 02:41:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9A33F86767
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 02:41:57 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id ay6so513791plb.9
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 19:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=8iHzMdYOI0Vlz5bJjh+l/GqT6c2o8S7w8UKOoSsz21M=;
 b=tU729ZIcVWFphWxnLy+Qzf/7C+Pg665dgPb9pkCJxU191+cawtSZxnuBnGImiZAhSy
 MaS+0Q9yPKkib9YynRiw00DVQWBUGlAJoEFCuvT5ENdY+mcpWSugy/Nh0fPRRh2LpXIw
 aqyDUMRpY+y8zvovpOsWdi9vaPuURaBKr/vio5A/dbFmJ7OoM8Z57hqsjJC+/cZdVGRA
 yI5oCGCkYCnK+1pDRoZUSWg9gy6f1DR9d4x1rcPuas8+7a0ZD4p373BZPJfrEU0eJmBR
 GiC42MKtmk9LeranEvRWCUwWlsdyuUkDmItOw+gL6zl8g54vdEcpFXWhjwd/cbDjLwCZ
 FUqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=8iHzMdYOI0Vlz5bJjh+l/GqT6c2o8S7w8UKOoSsz21M=;
 b=caTHvAA4Ts2vSSRLqjBHRe2Y4NSYeabW/YXXXpyulEXyLh5ZjNyFuSR90oiCBeUms5
 Mtho5t0njowkH4/IVAqSS65j85J//vTao3Y2KlxQFaBU1NWZFFuifa6DT6CbBFVDKxJg
 RcTvLL/SOVsYlqCkkEAYT5scgK5jFzwUZ3r5HO8dnPdrvDVPoLe6ZPSXrP5Kc1occzxq
 OVFreRKEK1RlwILSl+fepwHS9nf3hk10y+HobQxjB5o47N1aSsAsZAB98giyc1h0ZM/O
 UZEqUDogirftzC8wTz6kjngYMeOlpcAVSWRmhwunpxwVyNfsPDjRnpbmKnxzD0tv8Me5
 Sa1w==
X-Gm-Message-State: APjAAAXy/c5rK7GxeMyR11yVERb4JEVJ7Opj0rHRtbbiSnxTmeeR9lv7
 deeSgJszLmsT0017M4JjeW8=
X-Google-Smtp-Source: APXvYqwBeGWcBBnwXnUoND1FgWqFavn2cFbMxnlePbuOpNbGPbDp4WYJuqmnvKCYcdFbtfloIDZiqA==
X-Received: by 2002:a17:902:6848:: with SMTP id
 f8mr2252796pln.102.1561516917272; 
 Tue, 25 Jun 2019 19:41:57 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 5sm15489580pfh.109.2019.06.25.19.41.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 19:41:56 -0700 (PDT)
Date: Wed, 26 Jun 2019 08:11:51 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: hal: hal_btcoex: Using comparison to
 true is error prone
Message-ID: <20190626024151.GA6035@hari-Inspiron-1545>
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

CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

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
