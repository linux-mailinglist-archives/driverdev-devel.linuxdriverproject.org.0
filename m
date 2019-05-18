Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14184221D3
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 08:35:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43FE6877BD;
	Sat, 18 May 2019 06:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcSdwcuBZN3v; Sat, 18 May 2019 06:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A5418435A;
	Sat, 18 May 2019 06:34:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6BB31BF405
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E1CB086AD2
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 06:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUh-MfiKtnyC for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 06:34:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B11C086A98
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 06:34:55 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u17so4733100pfn.7
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 23:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tfIilT2Dk8Ch0JJk6m3jz6rz/B2rmLh1tKfEeGpFF5Q=;
 b=N6iVTUcTKDgb7kap1rJ7kyIaAKTa4aehB2CkvFSDEUO24f4c7v0wj2hGNyrriTEsid
 hfpsZvutmYrtCJ6D8PKQNoWG7YMOiDvxS8T1Mxn/P/IEwG02TrqjjOS6MjIeCtLxOrXq
 +85KNS0d3uFy12TjnN/26Q1AvvvJkm18M7C+2fjvAoOEbUbvMaLmcUpi6jAJd+hNFqFS
 HNjJ/9IUAvDL29QgH+L9SsbI4C+OPghz9KH+/Z3KN3nlkLbRqbwTw/tajGiDsqxQYuFN
 DWHH4MR3St7/OR5uSlfJ90+D/x9gIDGf4xn+YNMVdKqXWTGqLDypEyIxN8rWQRjCU8eG
 ZfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tfIilT2Dk8Ch0JJk6m3jz6rz/B2rmLh1tKfEeGpFF5Q=;
 b=OfxorhGEoroQ/Z7DkIlABGAH6/ZicQw4DXqxdIJDdb1fQ7Ikt/pcB6tx+cSuiQ1nDx
 Zf69cf8ehTVSWx/5jn3MIjP+yjGoM2MDk1r266kA1R6AVbkJsYzwcrllLoaDzmTXcGJF
 6b+LXKgawKH5kVpqtFN6wOnDrZOM/MT9tkT3pwnZxPwSPwpwwa591lJNIcdXS7OcOSg9
 wTWH33rmSGiSwx0yKpmabT9dQVNIW4BdrIoTMvvLRwtjNT0n3SDGxY+hRxCjwB3YCE5c
 PB4yxogTa6c9MIxCzUuaK8D5SJZbYRiBuicELIKwo2nhxlKLpkR99v763XN1r+XoTU0M
 Dvrg==
X-Gm-Message-State: APjAAAVi/SrvmizoRyutF/rqceUvOIv5exy9YFExlKGeVM/MEdJSLmcz
 mWikzIPewxX3ztY+TCMV75w=
X-Google-Smtp-Source: APXvYqwsj3AvQNNxV2hS+9CFlRon+hwhMEOu7XorWWjr/pRqdXAr5c+gYAOyS4qlJwiEAioyyjPXkw==
X-Received: by 2002:aa7:93a7:: with SMTP id x7mr65967796pff.196.1558161295206; 
 Fri, 17 May 2019 23:34:55 -0700 (PDT)
Received: from localhost.localdomain ([103.227.98.84])
 by smtp.googlemail.com with ESMTPSA id h26sm14347874pgh.26.2019.05.17.23.34.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 23:34:54 -0700 (PDT)
From: Moses Christopher <moseschristopherb@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/6] staging: rtl8188eu: use help instead of ---help--- in
 Kconfig
Date: Sat, 18 May 2019 12:03:39 +0530
Message-Id: <20190518063341.11178-5-moseschristopherb@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190518063341.11178-1-moseschristopherb@gmail.com>
References: <20190518063341.11178-1-moseschristopherb@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Moses Christopher <moseschristopherb@gmail.com>,
 arnd@arndb.de, insafonov@gmail.com, sparmaintainer@unisys.com,
 hdegoede@redhat.com, forest@alittletooquiet.net, yangbo.lu@nxp.com,
 christian.gromm@microchip.com, davem@davemloft.net, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  - Resolve the following warning from the Kconfig,
    "WARNING: prefer 'help' over '---help---' for new help texts"

Signed-off-by: Moses Christopher <moseschristopherb@gmail.com>
---
 drivers/staging/rtl8188eu/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/Kconfig b/drivers/staging/rtl8188eu/Kconfig
index 4f7ef287a0f2..970d5abd6336 100644
--- a/drivers/staging/rtl8188eu/Kconfig
+++ b/drivers/staging/rtl8188eu/Kconfig
@@ -8,7 +8,7 @@ config R8188EU
 	select LIB80211
 	select LIB80211_CRYPT_WEP
 	select LIB80211_CRYPT_CCMP
-	---help---
+	help
 	This option adds the Realtek RTL8188EU USB device such as TP-Link TL-WN725N.
 	If built as a module, it will be called r8188eu.
 
@@ -17,7 +17,7 @@ if R8188EU
 config 88EU_AP_MODE
 	bool "Realtek RTL8188EU AP mode"
 	default y
-	---help---
+	help
 	This option enables Access Point mode. Unless you know that your system
 	will never be used as an AP, or the target system has limited memory,
 	"Y" should be selected.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
