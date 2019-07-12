Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80952666FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 08:28:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 119E988221;
	Fri, 12 Jul 2019 06:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ixVO3e2Pq1Rc; Fri, 12 Jul 2019 06:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2220286C1D;
	Fri, 12 Jul 2019 06:28:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 135DC1BF44C
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A87E875CF
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 06:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H3nNMWFlBTfS for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 06:28:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8C6CA875C7
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 06:28:35 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id y8so4259117plr.12
 for <devel@driverdev.osuosl.org>; Thu, 11 Jul 2019 23:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jF3uyBsZPRjslpnNDqY7Jot8LRwF0FNUvKlLEOVlrWI=;
 b=TH7A05pyAqNiQFR0d9VuQ3M01aQdO1VOn3KLTYX90usRhsEXNES45O4EDBY+QvOzOJ
 Rfz4CrbY59wQv4uEESRRZWsU/zuhv19rnjqbmQcyJ+rpCYPvxd24ZbexfHlYIF/iqvEp
 5jraibFFmlqYY6j3Qlo9RRxEb3N2XCM+rTu1QXeCfZ9Qc7TUsrQdSOYpEHWh9YLKJoIW
 /QWmVruFrTTbGEBSlq5LBE2vvHVkZLMivftVgOXmF6THZgotTC9WqJ5P2ka/kxJX+rfp
 RAuz0+g/t3mdRcdFUZ04aMTP/Uw91ENZzSIkouIRRnbXK4IyOqLPlgBqDM7dVzKqjQVR
 ZWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jF3uyBsZPRjslpnNDqY7Jot8LRwF0FNUvKlLEOVlrWI=;
 b=W2ZDmsFAK/M6fUT7YF0kpKTTzHiPvM43rdGcpfKW9Qg/thEgSXu4PlFflCEkOtyBRl
 hY6oR/Ep76xFnPjVILdTpKSwJzzR2H9VOxZ6yrJruM2P3DpEZ9u+cS47vFL87NtVH9KZ
 PDjgd7Iw7oY9IUlTesCB0KNg/FGfgxNSfhWKVzqVNiTOFf90+R4KvW+uItf8zQ9OtZ/A
 o9oy3ir3IlNXyTcjaHTtMCnZ7fJxvIBNeoQap17yQeesnH8sTDU7mBHihS3oV7t4GoMZ
 bDw/8wFAQKul15MWq9nc9TehpSbFJU/oAsFJTy1baQAmQ/LQnUeHDAZAEsXM3GtZo6qr
 F8DA==
X-Gm-Message-State: APjAAAXhq2Y5AL4KGVtNNU1sewzidSJWqP29ekrXYONdFpegskokPDF7
 GoleiFqR/TqOdpD2uTZcRMU=
X-Google-Smtp-Source: APXvYqyUWtGdYTlYDPNkkecngBQR9ZjdYyfVB+FgmZzUyFSGoGM7ewwIkB1RFJduchT0AmUYXySppQ==
X-Received: by 2002:a17:902:e613:: with SMTP id
 cm19mr8782866plb.299.1562912915282; 
 Thu, 11 Jul 2019 23:28:35 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id p1sm8830629pff.74.2019.07.11.23.28.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 11 Jul 2019 23:28:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 07/10] staging: wlan-ng: Remove unused function
 hfa384x_docmd_async()
Date: Fri, 12 Jul 2019 11:58:04 +0530
Message-Id: <20190712062807.9361-7-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712062807.9361-1-nishkadg.linux@gmail.com>
References: <20190712062807.9361-1-nishkadg.linux@gmail.com>
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

Remove unused function hfa384x_docmd_async.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 20ac2dbd8a00..ce1a9ee995a0 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -826,14 +826,6 @@ static inline int hfa384x_docmd_wait(struct hfa384x *hw,
 	return hfa384x_docmd(hw, DOWAIT, cmd, NULL, NULL, NULL);
 }
 
-static inline int
-hfa384x_docmd_async(struct hfa384x *hw,
-		    struct hfa384x_metacmd *cmd,
-		    ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
-{
-	return hfa384x_docmd(hw, DOASYNC, cmd, cmdcb, usercb, usercb_data);
-}
-
 static inline int
 hfa384x_dormem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
