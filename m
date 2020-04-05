Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5550619EAB7
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 13:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5517687FCC;
	Sun,  5 Apr 2020 11:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUXRLkrGVvLn; Sun,  5 Apr 2020 11:24:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6FD88789B;
	Sun,  5 Apr 2020 11:24:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA61F1BF3F6
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 11:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B38762036E
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 11:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a4OLzsUpk1V0 for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 11:24:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 4324F20117
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 11:24:15 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a81so12674607wmf.5
 for <devel@driverdev.osuosl.org>; Sun, 05 Apr 2020 04:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=761FVsLf1WZqMCx3Uyo0mar5wqNw8CpImTKcEmKb6o0=;
 b=BxPeMDRkaf6PV4ZZYTcPCrFRoEyw8UohGWfnErLsYUsMvIPx0N+CNyXtnw+y8S56oE
 DbErryeZfH/4szYhgyeuyGBE4/dwV9tlF3YrfcgjeR7JKQFuAQGUJG08mheRBF8USYgs
 Z1GbVHtqDj8NHWZKci0CZDkdGEhRm0SIEzTrPdlCgLpKe9+D1r81E/NwAdTYUt5b1Hk7
 en8ld2FeLce6JcSK6O0ziK9UYxlJ/VxtCGcEcCup7u7IwgFUIWisfyew3/YcYhs/bQTM
 Ylv2PxXFxfGiJkHjW2Tle1RdND7RynnSrdoZjMFn7S8uLijmXvbexiX8/WHX4mCP/1Wh
 0pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=761FVsLf1WZqMCx3Uyo0mar5wqNw8CpImTKcEmKb6o0=;
 b=rZSw9qR44l4HUz2mh2gaUiSENjxkxCSztGuG6EaEjawM6LIceFJa7JdomlWQXhPLwM
 Qqh6KD9xuypaTxDyn59EJMNW/MinkRRR5Ddf5cSFXvim0dX2bHpQKZ0JQc9lZUgnZxJQ
 MAnyEZsYcy/6NHGwFbqTVcFdjqjSJvDl7wHsghaXrpsidqQtQOiBxpv4ZEjxSzZI+HwP
 LROkNINDPfmzhXZlRkfQzu6BmjTaS2bUgcs/g3JcamYFLP0XtzxMMP5ZVNkyp6IiMkCP
 OzrgUUieNw4ZnFpCDCWzkiy9lJ6+pJ05Yfq3KEH0Ch7hxDIH1MTG/Zp1iacfnPlBAtC3
 RDiA==
X-Gm-Message-State: AGi0PuY6BNXmcg7lmb8AXiaZja8G0E7HPudzh2QCV8YnryfL/Is11GCq
 LQRJhZI5jqaLa6f3XTRnswM=
X-Google-Smtp-Source: APiQypKFVZnlt8BOJF/VxUVuJgeqNPiecJvPVutCSc3JIFVX3WBIrDDxSKtzKBiAQWsUnVBFKG9k7g==
X-Received: by 2002:a1c:ac88:: with SMTP id v130mr17961701wme.34.1586085853595; 
 Sun, 05 Apr 2020 04:24:13 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-158.002.204.pools.vodafone-ip.de. [2.204.143.158])
 by smtp.gmail.com with ESMTPSA id b15sm20365012wru.70.2020.04.05.04.24.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 04:24:13 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: remove unnecessary variable
Date: Sun,  5 Apr 2020 13:22:30 +0200
Message-Id: <20200405112230.31975-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200405112230.31975-1-straube.linux@gmail.com>
References: <20200405112230.31975-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The variable 'bStopBlinking' is used in if tests immediately after its
value is set. Use the conditions for setting 'bStopBlinking' diretly in
the subsequent if tests and remove the variable. Slightly reduces
object file size by 16 bytes (gcc 9.2.1 x86_64).

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_led.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c b/drivers/staging/rtl8188eu/core/rtw_led.c
index 91b0029d1179..32dccae186ca 100644
--- a/drivers/staging/rtl8188eu/core/rtw_led.c
+++ b/drivers/staging/rtl8188eu/core/rtw_led.c
@@ -90,7 +90,6 @@ static void SwLedBlink1(struct LED_871x *pLed)
 {
 	struct adapter *padapter = pLed->padapter;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	u8 bStopBlinking = false;
 
 	/*  Change LED according to BlinkingLedState specified. */
 	if (pLed->BlinkingLedState == RTW_LED_ON) {
@@ -128,9 +127,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 		break;
 	case LED_BLINK_SCAN:
 		pLed->BlinkTimes--;
-		if (pLed->BlinkTimes == 0)
-			bStopBlinking = true;
-		if (bStopBlinking) {
+		if (pLed->BlinkTimes == 0) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedLinkBlinkInProgress = true;
 				pLed->CurrLedState = LED_BLINK_NORMAL;
@@ -164,9 +161,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 		break;
 	case LED_BLINK_TXRX:
 		pLed->BlinkTimes--;
-		if (pLed->BlinkTimes == 0)
-			bStopBlinking = true;
-		if (bStopBlinking) {
+		if (pLed->BlinkTimes == 0) {
 			if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 				pLed->bLedLinkBlinkInProgress = true;
 				pLed->CurrLedState = LED_BLINK_NORMAL;
@@ -207,12 +202,7 @@ static void SwLedBlink1(struct LED_871x *pLed)
 			  msecs_to_jiffies(LED_BLINK_SCAN_INTERVAL_ALPHA));
 		break;
 	case LED_BLINK_WPS_STOP:	/* WPS success */
-		if (pLed->BlinkingLedState == RTW_LED_ON)
-			bStopBlinking = false;
-		else
-			bStopBlinking = true;
-
-		if (bStopBlinking) {
+		if (pLed->BlinkingLedState != RTW_LED_ON) {
 			pLed->bLedLinkBlinkInProgress = true;
 			pLed->CurrLedState = LED_BLINK_NORMAL;
 			if (pLed->bLedOn)
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
