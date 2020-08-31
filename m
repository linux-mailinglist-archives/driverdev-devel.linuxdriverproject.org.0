Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCC3257C0E
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 17:17:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71D7086AC7;
	Mon, 31 Aug 2020 15:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mwCCeah1LXP3; Mon, 31 Aug 2020 15:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60A6886AE5;
	Mon, 31 Aug 2020 15:17:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7EE1BF41E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:17:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A36187B3E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 15:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6OvipuAeX-9N for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 15:17:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4E7E87B0E
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 15:17:18 +0000 (UTC)
Received: from e123331-lin.nice.arm.com (adsl-83.46.190.3.tellas.gr
 [46.190.3.83])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1BCB20936;
 Mon, 31 Aug 2020 15:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598887038;
 bh=EyNe/Jqx1lEy+gis8qzIi7lgHKCZTcsoHSdgF9p8kIw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ILdsKWeRlwJ2eezJwbi3Zbt1trLHnqs1B2cNmTym7FgL0QeJn5Bvyk/LLZ9kwFQNl
 1BTE6LonD0Ft+xLyHaNdjVRJ1zgrjtySTwyiYYdBTguyM+9NpblCPxjWIn1VIWJDMJ
 tF7FCyy4jbQ+s71n/BJQ9ILADvwv/ZCmtn0PIHWc=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 4/7] crypto: n2 - remove ecb(arc4) support
Date: Mon, 31 Aug 2020 18:16:46 +0300
Message-Id: <20200831151649.21969-5-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200831151649.21969-1-ardb@kernel.org>
References: <20200831151649.21969-1-ardb@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-nfs@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 netdev@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/n2_core.c | 46 --------------------
 1 file changed, 46 deletions(-)

diff --git a/drivers/crypto/n2_core.c b/drivers/crypto/n2_core.c
index d8aec5153b21..8c8e17d5fb20 100644
--- a/drivers/crypto/n2_core.c
+++ b/drivers/crypto/n2_core.c
@@ -662,7 +662,6 @@ struct n2_skcipher_context {
 		u8		aes[AES_MAX_KEY_SIZE];
 		u8		des[DES_KEY_SIZE];
 		u8		des3[3 * DES_KEY_SIZE];
-		u8		arc4[258]; /* S-box, X, Y */
 	} key;
 };
 
@@ -789,36 +788,6 @@ static int n2_3des_setkey(struct crypto_skcipher *skcipher, const u8 *key,
 	return 0;
 }
 
-static int n2_arc4_setkey(struct crypto_skcipher *skcipher, const u8 *key,
-			  unsigned int keylen)
-{
-	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
-	struct n2_skcipher_context *ctx = crypto_tfm_ctx(tfm);
-	struct n2_skcipher_alg *n2alg = n2_skcipher_alg(skcipher);
-	u8 *s = ctx->key.arc4;
-	u8 *x = s + 256;
-	u8 *y = x + 1;
-	int i, j, k;
-
-	ctx->enc_type = n2alg->enc_type;
-
-	j = k = 0;
-	*x = 0;
-	*y = 0;
-	for (i = 0; i < 256; i++)
-		s[i] = i;
-	for (i = 0; i < 256; i++) {
-		u8 a = s[i];
-		j = (j + key[k] + a) & 0xff;
-		s[i] = s[j];
-		s[j] = a;
-		if (++k >= keylen)
-			k = 0;
-	}
-
-	return 0;
-}
-
 static inline int skcipher_descriptor_len(int nbytes, unsigned int block_size)
 {
 	int this_len = nbytes;
@@ -1122,21 +1091,6 @@ struct n2_skcipher_tmpl {
 };
 
 static const struct n2_skcipher_tmpl skcipher_tmpls[] = {
-	/* ARC4: only ECB is supported (chaining bits ignored) */
-	{	.name		= "ecb(arc4)",
-		.drv_name	= "ecb-arc4",
-		.block_size	= 1,
-		.enc_type	= (ENC_TYPE_ALG_RC4_STREAM |
-				   ENC_TYPE_CHAINING_ECB),
-		.skcipher	= {
-			.min_keysize	= 1,
-			.max_keysize	= 256,
-			.setkey		= n2_arc4_setkey,
-			.encrypt	= n2_encrypt_ecb,
-			.decrypt	= n2_decrypt_ecb,
-		},
-	},
-
 	/* DES: ECB CBC and CFB are supported */
 	{	.name		= "ecb(des)",
 		.drv_name	= "ecb-des",
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
