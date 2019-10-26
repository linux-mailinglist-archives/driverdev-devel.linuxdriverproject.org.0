Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23910E5A63
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C920A20424;
	Sat, 26 Oct 2019 12:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oqeuyjTSID6O; Sat, 26 Oct 2019 12:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35A3A203FB;
	Sat, 26 Oct 2019 12:12:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 325CF1BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FC5D87082
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id djpIScLfxnkR for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0DEFD8737E
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:54 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 22so4490590wms.3
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rbbDikhV/iQ9zXkIzvsic6LstX6D3lalONEPDHnSWr8=;
 b=W4fyD/qWXDqwQppYiL0BxiYgdSdAwq05QeodSBfoaenthp8KocNZ7L2h4Ch2NvUR7f
 htVC5eYt7oks7DSeN+iTGmxQfUeDhlD35NEvk/IwZTBUSlc1dQcXdn0/AcW0JAEITV0K
 2OD7tXO2ZL/tHUjnxKDX4bc1+E3jBIdIErVTz/309C4Loz8+1rIo7qCadVajUsMzQGnQ
 TpvbDr61HbClW2dygD6j+5gq5jcWMO9TjoKPaKktCgEprMyZ1NynvvRxroXS3FIhmX2G
 qW7bmwYtFDreu6a72seLsIVEI/5iatkJwpyAfjwRaYbHOWS7oT29EQnQHIlai13cD0yL
 ks5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rbbDikhV/iQ9zXkIzvsic6LstX6D3lalONEPDHnSWr8=;
 b=VsYkQHMxXwwpjc3lIUDH3GtFbD9At3De/E4fkJGXUX2f3tVlbtkyLfnLPz3SP4z704
 RZS+uwiQ9c6okcuweL3jlfw/vtjrdww5rY+N0lFk4SpDdcrkxaRZedYsRY8mEyJqVCwN
 rQsU9WJgRmpreUmP9du9tydnBNlwC5MoBok6LUtKtHs+NYvNSFsAdPgI3RXWflxtgUzP
 qs3nuMKoYayXZJyE2b9xmBpGOymKQ0B5iKxGkKBxoeRyxOl9J9XrdJ47rK7n7+Jtku2Y
 98UZHlJN5UPGQ2ESaYFQkNIxz0jcoij0oNpbqenTtoJ6GFArPROMHPs69D0kkLEXeDAL
 4m/g==
X-Gm-Message-State: APjAAAWTyTkm0pUAvcNw8e1ekMUJdmHhX33lOUzxqhzH5LMfzkFJvc0d
 NmrntLQbI0qcH38Rnin6U6I=
X-Google-Smtp-Source: APXvYqywHKFI1oeQS7aN8FewIeIA/wdtx0lIXOuCYoo5rKee//+97NuHowuns8AqVnd9L8STGki3gw==
X-Received: by 2002:a1c:5609:: with SMTP id k9mr7524974wmb.103.1572091912679; 
 Sat, 26 Oct 2019 05:11:52 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:52 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/7] staging: rtl8188eu: convert unsigned char array to u8
Date: Sat, 26 Oct 2019 14:11:30 +0200
Message-Id: <20191026121135.181897-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026121135.181897-1-straube.linux@gmail.com>
References: <20191026121135.181897-1-straube.linux@gmail.com>
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

Convert array bcast_addr from unsigned char to u8.
Clears a line over 80 characters checkpatch warning.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index cbe970979eb0..394b887a8bde 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -450,7 +450,7 @@ u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 {
 	struct sta_info *psta;
 	u32 res = _SUCCESS;
-	unsigned char bcast_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
+	u8 bcast_addr[ETH_ALEN] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	psta = rtw_alloc_stainfo(pstapriv, bcast_addr);
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
