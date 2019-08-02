Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E35C7ECD2
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 279BA868D3;
	Fri,  2 Aug 2019 06:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EZJzQpU4c-IP; Fri,  2 Aug 2019 06:42:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 424148697D;
	Fri,  2 Aug 2019 06:42:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2BF41BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E00C2878EA
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFN8R+zPDVo6 for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B098878E6
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:43 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n4so288843pgv.2
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=05Nyg0qT9jH5GGvPKuu9x1mumvf/D4b933Lwb8UTzoY=;
 b=WqtuxgG9NQSKpiORXn/hAVdDxhSwVBBIdNfb8JiU7sFytkqLNDBjJBG8A4HlWM7cD/
 FCG50+0iS8lrLatQUl3raq+Kvmb4pgAX82IyTW8gJbcTgS4r9Xog8UKZBvyQT9TFL0wr
 kCLBUkmS+aP8vMhL19uhXTvPSfdiyJRWCxH40cypHcsqGE4t/aSwPc8e5xMJdeDbnLC6
 FicEvrhZmb7AoiCsuaw96mYGG9YfRhCmaKNzeI1xlroghcjC9j8nRAhrilXNhidG0Rmz
 UAmkq2ggyCmSQXBRwta58IYsABOFCIlRWWhQdUgWOVHr5oV+eD7CWb0ca9poKaEXvW1Y
 wt2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=05Nyg0qT9jH5GGvPKuu9x1mumvf/D4b933Lwb8UTzoY=;
 b=mJ6juZ9YhR2hL3/ZakzECdoQY3GJkVSn8oJ3o9En8dVZBtdEzoewpFPAOctiewjkl/
 OCfwmw+ErC+eSY1kugtK/5zjM8Fd45FDtB7nruNokrndneSARE/KUGnmmISHptQhIR+S
 LIDH19eMJgXPPiSJKt5tLs2foRyMztlJIe/MNzXYyZUoFMpoFClKKQDHDRCOUIxKfmde
 MK5/Cr5VJMJhMGCx5lM7BrYmh+ZaLWnEUwE9XeEqRhT7m0q9saXsUi506ar3RFMMOgOX
 j+hnS+0iZ5TeyPSh9yBTZL0FYLmfm6qAlQFMZcUAvf+xpyslsJuTpBzD9qLzJx/J3WGI
 qCFA==
X-Gm-Message-State: APjAAAVeqDy3agnc2EZCw1VDWEd2L7d5eeYDIawo+DajD3Teao0pjfmu
 LWdRhqkWjqt7gwOSBdFJwRI=
X-Google-Smtp-Source: APXvYqzFSw228gjoqGhPfcvDeHWkf+eD40GstXEthcERCaWI5XruzcVeU2Eeq27Vx5DsCJQpoNx2pA==
X-Received: by 2002:a63:520f:: with SMTP id g15mr118503507pgb.28.1564728163209; 
 Thu, 01 Aug 2019 23:42:43 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:42 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 8/9] staging: rtl8712: aes_decipher(): Change return type
Date: Fri,  2 Aug 2019 12:12:11 +0530
Message-Id: <20190802064212.30476-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802064212.30476-1-nishkadg.linux@gmail.com>
References: <20190802064212.30476-1-nishkadg.linux@gmail.com>
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

Change return type of aes_decipher from sint to void as it always
returns _SUCCESS and this value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_security.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 8f3781c5dd25..bf55a697dd5f 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -1184,8 +1184,8 @@ u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 	return res;
 }
 
-static sint aes_decipher(u8 *key, uint	hdrlen,
-			u8 *pframe, uint plen)
+static void aes_decipher(u8 *key, uint hdrlen,
+			 u8 *pframe, uint plen)
 {
 	static u8 message[MAX_MSG_SIZE];
 	uint qc_exists, a4_exists, i, j, payload_remainder;
@@ -1339,7 +1339,6 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	for (j = 0; j < 8; j++)
 		message[payload_index++] = chain_buffer[j];
 	/* compare the mic */
-	return _SUCCESS;
 }
 
 u32 r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
