Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DB824FEED
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 15:31:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDF1486CE1;
	Mon, 24 Aug 2020 13:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m9Wzzo4nsBZc; Mon, 24 Aug 2020 13:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 669DC86C34;
	Mon, 24 Aug 2020 13:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78BE71BF291
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7349E87C7D
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sIqLSgKrtcWE for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 13:31:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E0D5B875BB
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 13:31:49 +0000 (UTC)
Received: from e123331-lin.arnhem.chello.nl (dhcp-077-251-017-237.chello.nl
 [77.251.17.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CFA4B2065F;
 Mon, 24 Aug 2020 13:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598275909;
 bh=K1jpHm33Dkh6QUv4J3qctT+brWTrrCjnoswvkFtwurY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iBQt4OLc2g/bSHV1ipBdXkEyUn2JxRkGCnIch6eb/omDEsHnqMyaNbmIwcorbQM2N
 Kd8Rjt7v2Ki/jMREy3msyNW4FDBh4SAtBXTDGr/N61WzVuoUYKRH/X7KoA3sR0soxt
 P/+RBDeqWk1p82umfXyvvYXMYGsSRq8A+v4iJppU=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 7/7] crypto: arc4 - mark ecb(arc4) skcipher as obsolete
Date: Mon, 24 Aug 2020 15:30:01 +0200
Message-Id: <20200824133001.9546-8-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200824133001.9546-1-ardb@kernel.org>
References: <20200824133001.9546-1-ardb@kernel.org>
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

Cryptographic algorithms may have a lifespan that is significantly
shorter than Linux's, and so we need to start phasing out algorithms
that are known to be broken, and are no longer fit for general use.

RC4 (or arc4) is a good example here: there are a few areas where its
use is still somewhat acceptable, e.g., for interoperability with legacy
wifi hardware that can only use WEP or TKIP data encryption, but that
should not imply that, for instance, use of RC4 based EAP-TLS by the WPA
supplicant for negotiating TKIP keys is equally acceptable, or that RC4
should remain available as a general purpose cryptographic transform for
all in-kernel and user space clients.

Now that all in-kernel users that need to retain support have moved to
the arc4 library interface, and the known users of ecb(arc4) via the
socket API (iwd [0] and libell [1][2]) have been updated to switch to a
local implementation, we can take the next step, and mark the ecb(arc4)
skcipher as obsolete, and only provide it if the socket API is enabled in
the first place, as well as provide the option to disable all algorithms
that have been marked as obsolete.

[0] https://git.kernel.org/pub/scm/network/wireless/iwd.git/commit/?id=1db8a85a60c64523
[1] https://git.kernel.org/pub/scm/libs/ell/ell.git/commit/?id=53482ce421b727c2
[2] https://git.kernel.org/pub/scm/libs/ell/ell.git/commit/?id=7f6a137809d42f6b

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 crypto/Kconfig | 10 ++++++++++
 crypto/arc4.c  | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/crypto/Kconfig b/crypto/Kconfig
index 1b57419fa2e7..89d63d240c2e 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -136,6 +136,15 @@ config CRYPTO_USER
 	  Userspace configuration for cryptographic instantiations such as
 	  cbc(aes).
 
+config CRYPTO_USER_ENABLE_OBSOLETE
+	bool "Enable obsolete cryptographic algorithms for userspace"
+	depends on CRYPTO_USER
+	default y
+	help
+	  Allow obsolete cryptographic algorithms to be selected that have
+	  already been phased out from internal use by the kernel, and are
+	  only useful for userspace clients that still rely on them.
+
 config CRYPTO_MANAGER_DISABLE_TESTS
 	bool "Disable run-time self tests"
 	default y
@@ -1199,6 +1208,7 @@ config CRYPTO_ANUBIS
 
 config CRYPTO_ARC4
 	tristate "ARC4 cipher algorithm"
+	depends on CRYPTO_USER_ENABLE_OBSOLETE
 	select CRYPTO_SKCIPHER
 	select CRYPTO_LIB_ARC4
 	help
diff --git a/crypto/arc4.c b/crypto/arc4.c
index aa79571dbd49..923aa7a6cd60 100644
--- a/crypto/arc4.c
+++ b/crypto/arc4.c
@@ -12,6 +12,7 @@
 #include <crypto/internal/skcipher.h>
 #include <linux/init.h>
 #include <linux/module.h>
+#include <linux/sched.h>
 
 static int crypto_arc4_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
 			      unsigned int key_len)
@@ -39,6 +40,14 @@ static int crypto_arc4_crypt(struct skcipher_request *req)
 	return err;
 }
 
+static int crypto_arc4_init(struct crypto_skcipher *tfm)
+{
+	pr_warn_ratelimited("\"%s\" (%ld) uses obsolete ecb(arc4) skcipher\n",
+			    current->comm, (unsigned long)current->pid);
+
+	return 0;
+}
+
 static struct skcipher_alg arc4_alg = {
 	/*
 	 * For legacy reasons, this is named "ecb(arc4)", not "arc4".
@@ -55,6 +64,7 @@ static struct skcipher_alg arc4_alg = {
 	.setkey			=	crypto_arc4_setkey,
 	.encrypt		=	crypto_arc4_crypt,
 	.decrypt		=	crypto_arc4_crypt,
+	.init			=	crypto_arc4_init,
 };
 
 static int __init arc4_init(void)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
