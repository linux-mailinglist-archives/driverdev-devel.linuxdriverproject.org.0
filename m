Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0392251C4
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 14:09:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9B4E85B9A;
	Sun, 19 Jul 2020 12:09:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bCB7OBMHV3gr; Sun, 19 Jul 2020 12:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06ADC85910;
	Sun, 19 Jul 2020 12:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3725A1BF42E
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 12:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30D66203C2
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 12:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zpiT0qm-Rr+Q for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 1D8612010A
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 12:09:29 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x9so7417388plr.2
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 05:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=waaFEyASoWnWz0hncm83MVo/prywlRuPGaFhcYp4GOA=;
 b=SON/w4A8Es2f0mcuQKoPL0s1NUtu7MvBfFwBMTqZqVOnnHotMiT2t36Yu1OYqWJ3PT
 xwRjquH80haAuewOjGpcP07FzIsD6hxdtfmDF4HoDPq7qSZPbpP9KeOhW9IC6CUa7sCo
 HYhz3+3COLTsdgUI71tAMKpq53va3HVhBucgkMf+HQvISpZ2sZEOaIj3tIH0GI4VG+pj
 k9rpVS52qjS+FMTPcw5kjI6ecCsQZpHDoJlRVUTBwhZXZF8I7V5BMHSiZ3ik1ygER5XQ
 j0L3S7ao3tvGldydm1+fpH2xiHAeDW1dbAJyPkm/Uh66hmbITnq26xdV8wAPhIX7N/Ob
 kLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=waaFEyASoWnWz0hncm83MVo/prywlRuPGaFhcYp4GOA=;
 b=ERBd7MjDgmrI7YdW1aSqjUQW9kN7J027M0iLwdc+vvwXlj2VoJe4dW7Myt0kX/iRfo
 mUOOfH/kwdYKyEve9AFEkUqUOJ6ZfbGj0sN5fJ/N8mas+i/xPvXv2jdNUNjbU+aDd0l9
 SavAckeTPCp5ms+zgEzTKKKC+8DDoOjtx0/1Az5eZeW5dlc7FEzzYFnP9VTITH96r4Qi
 7PoAake5Z4Vsa0oYtsCdlvHKoARZ+SzANAmR4DYuQTIPoF8g07YRCh4UcmBn60vCy1zK
 dMEW3qCs1sgAvV4/mdr2mrQOG9KtWw7lUAw4MeK70fQm/2y6t0oWBikYXR5X9iMukEwA
 U4Ug==
X-Gm-Message-State: AOAM5305VbyGIw50VjDGLS9JQ6ippUip1HMqeEgxC/SM0tUYzBT9no/Z
 xDMgzvrLaGwiny3ZRy5xV8BAFO4+uALCYA==
X-Google-Smtp-Source: ABdhPJwV2sUmRqRrC5Enn2z0bbgffY+V/Hh8BbBC6YLGM33LZRWsvcglVu/yfS0W1D6g87JIAWhbMg==
X-Received: by 2002:a17:902:8e86:: with SMTP id
 bg6mr11830158plb.57.1595160568595; 
 Sun, 19 Jul 2020 05:09:28 -0700 (PDT)
Received: from DV.bbrouter ([117.242.250.233])
 by smtp.gmail.com with ESMTPSA id z11sm13258466pfk.46.2020.07.19.05.09.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 05:09:28 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH 2/2] staging: rtl8192e: add proper code indent
Date: Sun, 19 Jul 2020 17:39:18 +0530
Message-Id: <20200719120918.17862-2-darshandv10@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200719120918.17862-1-darshandv10@gmail.com>
References: <20200719120918.17862-1-darshandv10@gmail.com>
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
Cc: devel@driverdev.osuosl.org, darshandv10@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

rtllib_crypt_ccmp.c:

As the code indent for a conditional statement is
not according to the preferred coding style for
the linux kernel, add code indent as necessary
after a conditional statement.

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index b2af802b9451..b60e2a109ce4 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -337,7 +337,7 @@ static int rtllib_ccmp_set_key(void *key, int len, u8 *seq, void *priv)
 		}
 		if (crypto_aead_setauthsize(data->tfm, CCMP_MIC_LEN) ||
 			crypto_aead_setkey(data->tfm, data->key, CCMP_TK_LEN))
-				return -1;
+			return -1;
 	} else if (len == 0) {
 		data->key_set = 0;
 	} else {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
