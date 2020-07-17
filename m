Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A543223F12
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 17:05:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AD39884DA;
	Fri, 17 Jul 2020 15:05:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PDhq5AjGEQuS; Fri, 17 Jul 2020 15:05:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CA6F884C3;
	Fri, 17 Jul 2020 15:05:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C76591BF281
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 15:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C10A87E08
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 15:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvb+EVNKZuQM for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 15:04:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0B23887466
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 15:04:58 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t6so6798805pgq.1
 for <devel@driverdev.osuosl.org>; Fri, 17 Jul 2020 08:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=I3qgUlUz2ghXUHtKCviLmiSJF24mSfILYglOMEde6BY=;
 b=buf2jTJm3jP9V4ezfLOqBPmR9I3AQjlO7VvumQQZQTXquwNQYQeElGyv03QIE9TPEO
 C5A/QnBze2oTltyu672WIHcwb6YWjybrCJBQhssEw2VOUnBsHolM5/FMklDgaevMAJqG
 jlXgVVlP8nRflojMy5LTNzCjgf5XJIbXU+sLye/85YzkAMkXaoUbCJHBf4ODuX8MRsZ7
 6GBsaDYpS1IU+f8NoWje8EBqJVYZ3fq8pljNXEc4tOk8vDoiH3YgPFnSnRYrR6bS5SmL
 3Gdn4/UUNJ0o7LPO0lolDHxGrsdaDAjSJqfmnRISuvrYeMDGiI1qvIa3G/anTPg/DyFK
 GvMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=I3qgUlUz2ghXUHtKCviLmiSJF24mSfILYglOMEde6BY=;
 b=aBTcXciGqPhyaYnGt06VaIy3L+9wQr2fxTdXeC+tTtLxJHsM9HHArw3XreKHzY7r0g
 7ZpTSNvX8S+Ml0/7Kty5cGOLn9zsQZdCxiJGaOwGfJlL/veNUoGSqBy8Kmj/wypPhEmy
 d9yce+NfARIXrEfdNTxDPPoXbiEv8UgFgBM8m4gkPA9o6gBTnEyBTaseuveV45h93lZG
 xwIwS9Cn0HUbt84g4JtRWb9cLjVL6IcQ0fxAl8VuyrNe3226DmCbtVoBuUPaTu3FYKcr
 zhaxhVQRfRVq2HHJHIxerT++vghXpPed7LXwyjcgWqplWX5GnlG478TWhxW3Vpb4iL+4
 yA3w==
X-Gm-Message-State: AOAM530c8CKyz8widv8+n/cZ5jOkdjdFnNSCLoB1Pk7Uy+sygP68UVIk
 6JtrCu3Lse4LzdlYUU/KQqY=
X-Google-Smtp-Source: ABdhPJxkdDX1dzkcY205fCPDZe+N5VJKduAGSZLazqMLjDkc4GqKl7QI1Z0RfxivwTQcE/f+5FOYZQ==
X-Received: by 2002:a63:531e:: with SMTP id h30mr8691437pgb.165.1594998297506; 
 Fri, 17 Jul 2020 08:04:57 -0700 (PDT)
Received: from DV.bbrouter ([117.192.86.0])
 by smtp.gmail.com with ESMTPSA id o42sm3259180pje.10.2020.07.17.08.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jul 2020 08:04:56 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH] staging: rtl8192e: Fixed the space and indentation coding
 styles
Date: Fri, 17 Jul 2020 20:34:51 +0530
Message-Id: <20200717150451.13735-1-darshandv10@gmail.com>
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

rtllib_crypt_ccmp.c: Fixed the error - space required before the
open parenthesis '(' on line #281.

rtllib_crypt_ccmp.c: Fixed the warning - suspect code indent for
conditional statements on line #338

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 0cbf4a1a326b..b60e2a109ce4 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -278,7 +278,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		int aad_len, ret;
 
 		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
-		if(!req)
+		if (!req)
 			return -ENOMEM;
 
 		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);
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
