Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E09F62120EA
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 12:20:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C96A8B1A5;
	Thu,  2 Jul 2020 10:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iw1JjvA7dftZ; Thu,  2 Jul 2020 10:20:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1E078B194;
	Thu,  2 Jul 2020 10:20:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2730C1BF35D
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 10:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 244148903C
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 10:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxm30CSBXz5B for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 10:20:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9294A8903A
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 10:20:44 +0000 (UTC)
Received: from e123331-lin.nice.arm.com
 (lfbn-nic-1-188-42.w2-15.abo.wanadoo.fr [2.15.37.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3092E208D5;
 Thu,  2 Jul 2020 10:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593685244;
 bh=Dgcjvy0hCTfHOwCVOrjRfrBiKApvt8n4dhLRuzaQnTA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eih0jVBvh7Y1bN4cY1nF7fJ9CwT3o2BoGfRUZVQM+4FJmd7mGUPmo4UWNkrVfYdiB
 QtE+5mjRUT1SuE5e5DJezfzxeQKrJTsTgcuMrq10aCUG0TYfa2oHkEK9CcqHd7Gq5J
 oTxHKpYq7H7UmQRq7PM5eDzFiReX5/NUi4ukBBWA=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 7/7] crypto: tcrypt - remove ecb(arc4)
 testing/benchmarking support
Date: Thu,  2 Jul 2020 12:19:47 +0200
Message-Id: <20200702101947.682-8-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702101947.682-1-ardb@kernel.org>
References: <20200702101947.682-1-ardb@kernel.org>
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
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 crypto/tcrypt.c  | 21 +------
 crypto/testmgr.c |  7 ---
 crypto/testmgr.h | 62 --------------------
 3 files changed, 1 insertion(+), 89 deletions(-)

diff --git a/crypto/tcrypt.c b/crypto/tcrypt.c
index ba0b7702f2e9..72828c4acd3a 100644
--- a/crypto/tcrypt.c
+++ b/crypto/tcrypt.c
@@ -68,7 +68,7 @@ static char *tvmem[TVMEMSIZE];
 static const char *check[] = {
 	"des", "md5", "des3_ede", "rot13", "sha1", "sha224", "sha256", "sm3",
 	"blowfish", "twofish", "serpent", "sha384", "sha512", "md4", "aes",
-	"cast6", "arc4", "michael_mic", "deflate", "crc32c", "tea", "xtea",
+	"cast6", "michael_mic", "deflate", "crc32c", "tea", "xtea",
 	"khazad", "wp512", "wp384", "wp256", "tnepres", "xeta",  "fcrypt",
 	"camellia", "seed", "salsa20", "rmd128", "rmd160", "rmd256", "rmd320",
 	"lzo", "lzo-rle", "cts", "sha3-224", "sha3-256", "sha3-384",
@@ -1762,10 +1762,6 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 		ret += tcrypt_test("xts(cast6)");
 		break;
 
-	case 16:
-		ret += tcrypt_test("ecb(arc4)");
-		break;
-
 	case 17:
 		ret += tcrypt_test("michael_mic");
 		break;
@@ -2201,11 +2197,6 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 				  speed_template_32_64);
 		break;
 
-	case 208:
-		test_cipher_speed("ecb(arc4)", ENCRYPT, sec, NULL, 0,
-				  speed_template_8);
-		break;
-
 	case 209:
 		test_cipher_speed("ecb(cast5)", ENCRYPT, sec, NULL, 0,
 				  speed_template_8_16);
@@ -2720,11 +2711,6 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 				   speed_template_32_48_64);
 		break;
 
-	case 505:
-		test_acipher_speed("ecb(arc4)", ENCRYPT, sec, NULL, 0,
-				   speed_template_8);
-		break;
-
 	case 506:
 		test_acipher_speed("ecb(cast5)", ENCRYPT, sec, NULL, 0,
 				   speed_template_8_16);
@@ -2932,11 +2918,6 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
 				       speed_template_32_48_64, num_mb);
 		break;
 
-	case 605:
-		test_mb_skcipher_speed("ecb(arc4)", ENCRYPT, sec, NULL, 0,
-				       speed_template_8, num_mb);
-		break;
-
 	case 606:
 		test_mb_skcipher_speed("ecb(cast5)", ENCRYPT, sec, NULL, 0,
 				       speed_template_8_16, num_mb);
diff --git a/crypto/testmgr.c b/crypto/testmgr.c
index 6863f911fcee..7c1bdc5690e2 100644
--- a/crypto/testmgr.c
+++ b/crypto/testmgr.c
@@ -4783,13 +4783,6 @@ static const struct alg_test_desc alg_test_descs[] = {
 		.suite = {
 			.cipher = __VECS(anubis_tv_template)
 		}
-	}, {
-		.alg = "ecb(arc4)",
-		.generic_driver = "ecb(arc4)-generic",
-		.test = alg_test_skcipher,
-		.suite = {
-			.cipher = __VECS(arc4_tv_template)
-		}
 	}, {
 		.alg = "ecb(blowfish)",
 		.test = alg_test_skcipher,
diff --git a/crypto/testmgr.h b/crypto/testmgr.h
index d29983908c38..48cd6330ec8d 100644
--- a/crypto/testmgr.h
+++ b/crypto/testmgr.h
@@ -22490,68 +22490,6 @@ static const struct cipher_testvec cast5_ctr_tv_template[] = {
 	},
 };
 
-/*
- * ARC4 test vectors from OpenSSL
- */
-static const struct cipher_testvec arc4_tv_template[] = {
-	{
-		.key	= "\x01\x23\x45\x67\x89\xab\xcd\xef",
-		.klen	= 8,
-		.ptext	= "\x01\x23\x45\x67\x89\xab\xcd\xef",
-		.ctext	= "\x75\xb7\x87\x80\x99\xe0\xc5\x96",
-		.len	= 8,
-	}, {
-		.key	= "\x01\x23\x45\x67\x89\xab\xcd\xef",
-		.klen	= 8,
-		.ptext	= "\x00\x00\x00\x00\x00\x00\x00\x00",
-		.ctext	= "\x74\x94\xc2\xe7\x10\x4b\x08\x79",
-		.len	= 8,
-	}, {
-		.key	= "\x00\x00\x00\x00\x00\x00\x00\x00",
-		.klen	= 8,
-		.ptext	= "\x00\x00\x00\x00\x00\x00\x00\x00",
-		.ctext	= "\xde\x18\x89\x41\xa3\x37\x5d\x3a",
-		.len	= 8,
-	}, {
-		.key	= "\xef\x01\x23\x45",
-		.klen	= 4,
-		.ptext	= "\x00\x00\x00\x00\x00\x00\x00\x00"
-			  "\x00\x00\x00\x00\x00\x00\x00\x00"
-			  "\x00\x00\x00\x00",
-		.ctext	= "\xd6\xa1\x41\xa7\xec\x3c\x38\xdf"
-			  "\xbd\x61\x5a\x11\x62\xe1\xc7\xba"
-			  "\x36\xb6\x78\x58",
-		.len	= 20,
-	}, {
-		.key	= "\x01\x23\x45\x67\x89\xab\xcd\xef",
-		.klen	= 8,
-		.ptext	= "\x12\x34\x56\x78\x9A\xBC\xDE\xF0"
-			  "\x12\x34\x56\x78\x9A\xBC\xDE\xF0"
-			  "\x12\x34\x56\x78\x9A\xBC\xDE\xF0"
-			  "\x12\x34\x56\x78",
-		.ctext	= "\x66\xa0\x94\x9f\x8a\xf7\xd6\x89"
-			  "\x1f\x7f\x83\x2b\xa8\x33\xc0\x0c"
-			  "\x89\x2e\xbe\x30\x14\x3c\xe2\x87"
-			  "\x40\x01\x1e\xcf",
-		.len	= 28,
-	}, {
-		.key	= "\xef\x01\x23\x45",
-		.klen	= 4,
-		.ptext	= "\x00\x00\x00\x00\x00\x00\x00\x00"
-			  "\x00\x00",
-		.ctext	= "\xd6\xa1\x41\xa7\xec\x3c\x38\xdf"
-			  "\xbd\x61",
-		.len	= 10,
-	}, {
-		.key	= "\x01\x23\x45\x67\x89\xAB\xCD\xEF"
-			"\x00\x00\x00\x00\x00\x00\x00\x00",
-		.klen	= 16,
-		.ptext	= "\x01\x23\x45\x67\x89\xAB\xCD\xEF",
-		.ctext	= "\x69\x72\x36\x59\x1B\x52\x42\xB1",
-		.len	= 8,
-	},
-};
-
 /*
  * TEA test vectors
  */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
