Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9056483DF4
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 01:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 35B191FEE0;
	Tue,  6 Aug 2019 23:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8igehsb1yTcb; Tue,  6 Aug 2019 23:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A807720389;
	Tue,  6 Aug 2019 23:45:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80E611BF33D
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 23:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E3AA866F6
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 23:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8io0+3vjw9G for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 23:45:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C7DB78660D
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 23:45:46 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id t8so64391387qkt.1
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 16:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=KwjfUXmkMLwgZFzBGBkcCMuagBT54f1cClmLSvTViy4=;
 b=pOeEa8YD7yD0xUZQ1hrLvbZ09z6x76B+kHNbrFpS14L3PoUF6eMTrzSo0L7N2EIAt1
 ex4NpR3hXOmJhcT4cxvbLBYubBz0QOqaiI3OyIKZq8dyxju2lSRis4VgNYNPtTBkaFwm
 cFTBRJbSoLIa9GhGn+AWNMhudYyppdiEMQQEKXvsJVPpctFB0PjMREVDwheEtgOvQ/9P
 ZETPPi0k25KcwTQOp3EDKsh/MOvamkmpCMYcirnWCweiXcrNCDYHdgV53HHTddtOtXPz
 PmdcyWTGfptCWZ7EGELgLreKebAi6GR/v+2nCUEKme0VBgIObTNz9LwFysJf/sKc94zJ
 bTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=KwjfUXmkMLwgZFzBGBkcCMuagBT54f1cClmLSvTViy4=;
 b=sPPOfjZeU0HtHplRGuAIJ4I9rVTCEKCphMKYPl/y4cxvAzYzB3/ohAHcplJcf0ykXE
 TdRusKhF4HlvXGbRKP3LSdvEw3CqVq9xq8g8ZDN3lRuTDmnMb3HpNUPVPnKYu0a5dlS9
 aMBj3z2zRN9/pY098fuuSoARvR+KMN/Hf63UNnFZqLeSFG41FJjsPMUYM4LTofBIbbBL
 +AyV7sQ0aiVaLIAyV1XGH1Y7HQfzFuN9SvS4Dzjc4pbHhAhtHyUF/AZiu6s3yvmm08a5
 Z6JwH0jSK1j00N8L3nz2iyJ8OZYuukbKc8bOQeJ1LEclZns1jD329t+5uqo3YYdTE2PU
 PaLg==
X-Gm-Message-State: APjAAAUOjMk1s+3/O4xZjcKlZYswnqb6vx7sp8IOGaPEdsKY3uwYQO2M
 LlBs14y+/cemT2ClfgCCNIA=
X-Google-Smtp-Source: APXvYqx8Umtbcef0JHFuEG9mSgOJNaXWzjh9roUKT7NrNsVVRAQZJktaCKmTGvpjkbPE1SEBDt93AQ==
X-Received: by 2002:a37:d95:: with SMTP id 143mr5666435qkn.132.1565135145544; 
 Tue, 06 Aug 2019 16:45:45 -0700 (PDT)
Received: from cazarin-lenovo.ic.unicamp.br
 (wifi-177-220-85-250.wifi.ic.unicamp.br. [177.220.85.250])
 by smtp.gmail.com with ESMTPSA id k25sm47873987qta.78.2019.08.06.16.45.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 16:45:44 -0700 (PDT)
From: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH] staging: rtl8723bs: fix brace position in enum declaration
Date: Tue,  6 Aug 2019 20:45:39 -0300
Message-Id: <20190806234539.7513-1-joseespiriki@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix two checkpath errors of type:
"open brace '{' following enum go on the same line"

Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_mlme.h | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index d3c07d1c3..2223e1f13 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -81,15 +81,13 @@ enum dot11AuthAlgrthmNum {
 };
 
 /*  Scan type including active and passive scan. */
-typedef enum _RT_SCAN_TYPE
-{
+typedef enum _RT_SCAN_TYPE {
 	SCAN_PASSIVE,
 	SCAN_ACTIVE,
 	SCAN_MIX,
 }RT_SCAN_TYPE, *PRT_SCAN_TYPE;
 
-enum  _BAND
-{
+enum  _BAND {
 	GHZ24_50 = 0,
 	GHZ_50,
 	GHZ_24,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
