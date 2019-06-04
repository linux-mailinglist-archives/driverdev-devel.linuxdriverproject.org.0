Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C98C34142
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 10:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E71A788BEA;
	Tue,  4 Jun 2019 08:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3r5hL0t2X2Pa; Tue,  4 Jun 2019 08:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D467188A8A;
	Tue,  4 Jun 2019 08:12:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9792E1BF4D8
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 08:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 926E288A91
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 08:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xq0x9DD1jyeF for <devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 08:12:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 00F9E88A8A
 for <devel@driverdev.osuosl.org>; Tue,  4 Jun 2019 08:12:34 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a186so11506813pfa.5
 for <devel@driverdev.osuosl.org>; Tue, 04 Jun 2019 01:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XhGxcyl15j2CR0DCz3fMTnLwvj65vTyLrIZ4yDtoYXw=;
 b=hx8KkJt1ABUwHCaJKCcTtgFpDjMGOlolcsa3WknXTuMbOs5AiGX+7L3VsNPquRYtRi
 qvRIL/wRURhc4nlSp2rzKU3kuNBdtw6Ie4HVgoGs85Yx6534SCcy1F45GW6gfX1iim0u
 CiXpCN6d/vXzZYbo81l4NFH3BaSkfPzvfh01iJQ5OnQiJV4uzvkxU2LZzYl88dgckCtP
 WoJ2sIehmhHGDTSrSlYjAlp2J3CFSkeN2kWLGu/nUuqQhN/IoNZngnM6csuWmqvMETZk
 D2uThdtG9dBCqIFyDk7feFvG7DZ/SSWzEWxUUzc3ZiLdRoa7U9ITrnH2Kq8Q+voi7Ir9
 etPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XhGxcyl15j2CR0DCz3fMTnLwvj65vTyLrIZ4yDtoYXw=;
 b=KOxTH3zSG0O5mbsINNpz0BI9z5Foj2VfXsWtXVW8UG0KOYUc/er4UNQJf+7OxHJUIO
 /6p5YPTT8CDR4FfJ/at8O+CZIlva4f5nW5pFJ+aqzi2y2iHBByjnFA7288j1IPjEXbkj
 lmMx60sjRAM7VqAUYtFvOJgwaoLYK7goVZOAoO4S1Lc9FGCGl0C83mG6AJvgxqtpfArk
 n0W/pwUGXCP3e68ThjfVzBjyk7caIrIhCsOfRZC+qD1H9G6NPimOq2PYmGawCNBXjUKI
 AYzB/F1sUKsgOLjs8Tedrb1KRenSq7RqUvHsgOmtKw0zoh+PmHPlHTyeJP9P2EiNRZVO
 HMPw==
X-Gm-Message-State: APjAAAWSujvzqVlCxj5U9DeIyjRhXX2Bs4bPtT7N0jQg6QSxrLyHT6vo
 X8xxjycZ49qbBcBPejRUnSI=
X-Google-Smtp-Source: APXvYqyXqdFotkOUoxeg9MqXtEN/n8FdFxqk8dN3qY3Cp9nhMGifYgXuaC7BiWL3FsFaqilvVW9HCg==
X-Received: by 2002:a63:db4e:: with SMTP id x14mr34782545pgi.119.1559635954667; 
 Tue, 04 Jun 2019 01:12:34 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id k22sm6580204pfk.178.2019.06.04.01.12.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 01:12:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, flbue@gmx.de, puranjay12@gmail.com
Subject: [PATCH] staging: rtl8188eu: core: Replace function
 rtw_free_network_nolock
Date: Tue,  4 Jun 2019 13:42:22 +0530
Message-Id: <20190604081222.12658-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function rtw_free_network_nolock, as all it does is call
_rtw_free_network_nolock, and rename _rtw_free_network_nolock to
rtw_free_network_nolock.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 0abb2df32645..454c5795903d 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -159,7 +159,7 @@ static void _rtw_free_network(struct mlme_priv *pmlmepriv, struct wlan_network *
 	spin_unlock_bh(&free_queue->lock);
 }
 
-void _rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwork)
+void rtw_free_network_nolock(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwork)
 {
 	struct __queue *free_queue = &pmlmepriv->free_bss_pool;
 
@@ -276,12 +276,6 @@ static struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv)
 	return _rtw_alloc_network(pmlmepriv);
 }
 
-static void rtw_free_network_nolock(struct mlme_priv *pmlmepriv,
-				    struct wlan_network *pnetwork)
-{
-	_rtw_free_network_nolock(pmlmepriv, pnetwork);
-}
-
 int rtw_is_same_ibss(struct adapter *adapter, struct wlan_network *pnetwork)
 {
 	int ret = true;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
