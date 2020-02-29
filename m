Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6D417494C
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Feb 2020 21:37:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5885204D4;
	Sat, 29 Feb 2020 20:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uXoAlWL4RQfX; Sat, 29 Feb 2020 20:37:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7B3F5204AC;
	Sat, 29 Feb 2020 20:37:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CD601BF31C
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 20:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89AC287994
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 20:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ONTvIGe2rkxP for <devel@linuxdriverproject.org>;
 Sat, 29 Feb 2020 20:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE5208792F
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 20:37:44 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y17so7624725wrn.6
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 12:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=l56A/14PXkqGHLE8YMBNeU8cv7OpOINY7Us8P01pWEE=;
 b=MO2KphJIj8hI5R88Gmx0Gw2qjjdCiav9FlUhpY1aqLoMGZl1QkFTGZ3iz5gffN96oU
 bBGNA6Z79h5IeTF1VW5ZOru6p1u50ifOp1/ticiSPwxDx7nJC/OrlxnAR9RZlXcee85k
 u+Mz8/012JjFwXBcRPsxZ3sol82QY/iAZblG4KzlTTwil9ECebkMrs7WenJ9gOsENb1P
 j+ruhdDbP826ZJ9w/llk/VXDqW/gDWmiz7lcXDfh+3NfcEIgJ1fGWaVPB49LiI6vdWno
 FMKbVYUoHrbFz6qnZz9PZk23lnHVb4pSElMS/bfP/4g6H7URw+dWybdfIZzt+CNnLHo1
 B3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=l56A/14PXkqGHLE8YMBNeU8cv7OpOINY7Us8P01pWEE=;
 b=LzjJpATV5gno/vhpVxvFndtfXoztMLtKyNjpETJQ84Gl7WNZiA1ss2fyf5/L2xO1og
 0TbN31teSm9GXGnyRvh/+KCRT8UNFJ2W8ci302cP6vwXdcT6XrwHAXCzo8vm68w7vew5
 RSiZD+ZcZpOC72RKCXRATVOAib9y8sc6KR0TTYTMOFTu0SM+blk+XLBSET81Uy0Bs5v0
 Ado85KlOyquXKdYDKg6jqr8MUYke0HAGASvhe3nhhEjnJRVaPdTWX3Y0CXtFRBNYbi0m
 pmjzFVltaMzbjxTmHkSNn21OV05DMmdY+7F7uIsbMhlATJl1oIGJm6+Xgy2c+xt8AhI7
 oGeA==
X-Gm-Message-State: APjAAAX5BO+VerThSEcl357WsaYCEgpGuASR3ILlNRd9P8lMtAksz1y0
 8+x0PY35y/9aOzWLwJxbgb3EGXUD
X-Google-Smtp-Source: APXvYqyUwQEDtNilxtgNPnUsu8tsFDjgOhgZ1G3ZWAF+6VctctdlipuzAfGqQVaThsjBWldBYIyrGQ==
X-Received: by 2002:adf:de09:: with SMTP id b9mr11826474wrm.160.1583008663505; 
 Sat, 29 Feb 2020 12:37:43 -0800 (PST)
Received: from [192.168.43.18] (94.197.121.166.threembb.co.uk.
 [94.197.121.166])
 by smtp.gmail.com with ESMTPSA id b186sm7771432wmb.40.2020.02.29.12.37.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 29 Feb 2020 12:37:43 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: vnt_vt3184_init remove stack copy to
 array.
Message-ID: <49f34764-c90c-8c5f-b4f2-a3668b13e519@gmail.com>
Date: Sat, 29 Feb 2020 20:37:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

use u8 pointer addr directly and remove stack array.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/baseband.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 48a624bf00c0..74b620b4261e 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -367,7 +367,6 @@ int vnt_vt3184_init(struct vnt_private *priv)
 	int ret = 0;
 	u16 length;
 	u8 *addr;
-	u8 array[256];
 	u8 data;
 
 	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0, MESSAGE_REQUEST_EEPROM,
@@ -437,10 +436,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		goto end;
 	}
 
-	memcpy(array, addr, length);
-
 	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
-				     MESSAGE_REQUEST_BBREG, length, array);
+				     MESSAGE_REQUEST_BBREG, length, addr);
 	if (ret)
 		goto end;
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
