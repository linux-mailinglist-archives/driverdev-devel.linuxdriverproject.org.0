Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307DD2251C3
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 14:09:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C314F87C0D;
	Sun, 19 Jul 2020 12:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9OOfLWjMRJ7; Sun, 19 Jul 2020 12:09:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30A3087B97;
	Sun, 19 Jul 2020 12:09:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45E401BF42E
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 12:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4261787B97
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 12:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HKlrhF9320bl for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 12:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A65A987B6A
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 12:09:25 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id f16so8589683pjt.0
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 05:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=mqZUlCTg2NTclDz7vEQxsR/h1muYnX46vKiUf6iB7eA=;
 b=KEk08p4FXY6nGRqNogyZYWU7XKJCf71Yvsn9/7c4DPu5CUwkXmzYb8qkUiNMHISoxU
 z4+HKHeuKM4tjy9hP2d1VS4oTtBHrScxjWExHosp8rQfosxpuIQy+n6YeJWDhtbDN3ZP
 KznMRhNqpjxL8Z5ZV51TUa9V3hZ2V6HYRdqCa5JVN/VLqbAlb93mTImEGjob+lfVAtYh
 1YftXhI2LwjboXNabBAYR58Xk9+Dn2Z1jejc/7IIJJBnWwFBxn+KFyNsvVcEyySJuDGg
 yKAlyzIXW2NLr5lxqSC7OY3Oaa+abaSQ/2NQyzNGfg4LdehhjQRFr1kuHgtpFw6R3yhM
 AN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mqZUlCTg2NTclDz7vEQxsR/h1muYnX46vKiUf6iB7eA=;
 b=nPIAv4rRr9xbU/iAqca3M+UnOr5eKCaZ1T/FYNEc8rjJFvPb76zvTjKgXoOZwXUPFC
 yH6iTlVJDVKtETjn0PMfEXvlx/L//bAqIKs7/gaGEHQ2ShGzZYaWJ+0bJWl4SPPsA9U9
 UZUXV2RDFL2KMvOxKxnj0qLOKByQok4NYBlUnbOKIUOp4DxPED5qLYgcQi+aRu0FaNyV
 /De/2joyalhuLL9boNOYxdQ4k5ytUVsQUIGp7yXe0V63fXbntxgmfGm9QngcLG1dOVWe
 97E+fl8xC45PfM95Og9v8v0blYzn8BrSFY/Ums7A5oqjBgGgpRH6med0tA16uOGNSf7q
 ekmw==
X-Gm-Message-State: AOAM530Kmc/iLjcoTuyXOF5Wo/BhpvjZeV1pj6jXoCQkhE2Jd24B576h
 8UzrvBGz3lO2lKwGg49u3Zslql9OOt8lIQ==
X-Google-Smtp-Source: ABdhPJy4Hmdzwxg9e7n0mTJmL33K0QkyOjs+WxlLxCi5MbTQo7jp053TJV082YctDI23oNtiZRRynQ==
X-Received: by 2002:a17:902:fe85:: with SMTP id
 x5mr14604700plm.282.1595160565094; 
 Sun, 19 Jul 2020 05:09:25 -0700 (PDT)
Received: from DV.bbrouter ([117.242.250.233])
 by smtp.gmail.com with ESMTPSA id z11sm13258466pfk.46.2020.07.19.05.09.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 05:09:24 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH 1/2] staging: rtl8192e: add space before open parenthesis
Date: Sun, 19 Jul 2020 17:39:17 +0530
Message-Id: <20200719120918.17862-1-darshandv10@gmail.com>
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
Cc: devel@driverdev.osuosl.org, darshandv10@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

rtllib_crypt_ccmp.c: 

Fix the coding style error by adding a space before
open parenthesis '(' in a conditional statement.

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 0cbf4a1a326b..b2af802b9451 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -278,7 +278,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		int aad_len, ret;
 
 		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
-		if(!req)
+		if (!req)
 			return -ENOMEM;
 
 		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
