Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C9861C9F
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jul 2019 11:57:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E83E785C0B;
	Mon,  8 Jul 2019 09:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uTrQX60IfYAv; Mon,  8 Jul 2019 09:57:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0CFE81AE6;
	Mon,  8 Jul 2019 09:57:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1024E1BF2CA
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 09:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CC6485653
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 09:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z_jVdVpl_JAc for <devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 09:57:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4CEBD852F8
 for <devel@driverdev.osuosl.org>; Mon,  8 Jul 2019 09:57:17 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id p15so3521979eds.8
 for <devel@driverdev.osuosl.org>; Mon, 08 Jul 2019 02:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rg3MR+eApkBoKx2MM7FYI4liPQBRkBxidD5AvqBz0OM=;
 b=SeHVRv3HeKJ2PAjjWt5Hmn//1ALTldDmhmUK8On9cmnhLklUIBkOxn/UZt3CYgJ87O
 1KjhqbbSCfiHI9TgxroEsesjNDjgfEl4JD0ZNL3bDOc8WpnpyOYPjKVin8f7Of0H2eR7
 4IASabU0RbxJKTxobQuwn784QEjSwH0r8u2CNMXJ2ECHOvSzJhBDxCyp1CQ+KbFpEubf
 iNHvnFxb2MM/YLEwKEOEYdHNnQlcIEfYACv3HNQy5OH/kA2u2sqjEKwvDSKkHa52bc8G
 WQt0iA5BE685gjJ499tyf2qv60VudAXaJtAdC6P2kEugvxB3blW6BOes/RCXPzR0uegp
 R2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rg3MR+eApkBoKx2MM7FYI4liPQBRkBxidD5AvqBz0OM=;
 b=ryPMz7Rl8PZlPyVDK6y1In3zyjkGS6ymXhE+zl3p4XlzgBjZUMaRFTYM6fKMwRipZR
 HbIjOO0LyPf8cVWpJz1U9MLD2tPxigwkOr2mdhVNLnMk5ZQmxRqcrskKf5tzYuj6bdZ6
 TYyUAcJP6jBKfgUPoc89oHAHM4Ax5qxf5S1UZcaMUDPfD8ITF0tfWFBU1sIv9Qmk4ZZX
 bwsxWCUdHOPiiQaQQGrRUumMKizoMOaEhl03hxL/FwLqqFr+NkUT2UxfhTfbLRqS0jiB
 pg7S0iGJGSR3rC7FIvu2VouN96YeJL+B5Gixc9HVrVh3xO73WBS7uupHOSCO8Z+e48Ri
 0d9w==
X-Gm-Message-State: APjAAAU7syqL/u5pVXO31k4SmGLH/VN4Xn5wOh7gpnCKlrlkhR/pZ2qu
 dHM37+eTRx429YL/oYUlkNM=
X-Google-Smtp-Source: APXvYqwEifHSmhjFpE/rRdKK4PwCH5groMB0buQ5s2hi1x5SS7e71wTQ5pHAGzEkO5QxhCQxTiM9jg==
X-Received: by 2002:a17:906:838a:: with SMTP id
 p10mr15031436ejx.237.1562579835439; 
 Mon, 08 Jul 2019 02:57:15 -0700 (PDT)
Received: from puskevit.guest.wlan ([195.142.153.182])
 by smtp.gmail.com with ESMTPSA id p22sm3363012ejm.38.2019.07.08.02.57.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 02:57:14 -0700 (PDT)
From: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
To: 
Subject: [PATCH] Staging: rtl8723bs: hal: rtl8723bs_recv.c: Fix code style
Date: Mon,  8 Jul 2019 12:56:50 +0300
Message-Id: <20190708095652.18174-1-fatihaltinpinar@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>,
 Fatih ALTINPINAR <fatihaltinpinar@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding stlye issue. Removed braces from a single statement if
block.

Signed-off-by: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index e23b39ab16c5..71a4bcbeada9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -449,9 +449,8 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
 				skb_reserve(precvbuf->pskb, (RECVBUFF_ALIGN_SZ - alignment));
 			}
 
-			if (!precvbuf->pskb) {
+			if (!precvbuf->pskb)
 				DBG_871X("%s: alloc_skb fail!\n", __func__);
-			}
 		}
 
 		list_add_tail(&precvbuf->list, &precvpriv->free_recv_buf_queue.queue);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
