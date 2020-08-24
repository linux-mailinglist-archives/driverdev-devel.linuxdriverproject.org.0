Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB8024FED6
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 15:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A806086C0E;
	Mon, 24 Aug 2020 13:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUIN7RkpgR1F; Mon, 24 Aug 2020 13:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A09F86C1A;
	Mon, 24 Aug 2020 13:30:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F12BD1BF291
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:30:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E838F2034F
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xd2FonzGKE4F for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 13:30:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BCC3C1FD21
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 13:30:14 +0000 (UTC)
Received: from e123331-lin.arnhem.chello.nl (dhcp-077-251-017-237.chello.nl
 [77.251.17.237])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81358206B5;
 Mon, 24 Aug 2020 13:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598275814;
 bh=6bNEbG+873nLjMtbj1kHe92r4ZMv+NcyTbdxo01Tf4Y=;
 h=From:To:Cc:Subject:Date:From;
 b=VqSi4Gu4LGUPo0y5LQSiIeteTfix7cTN8FkYMdCG2TTMC7/w6qVS3SNeiOwLelN/f
 jsO+FcqFxtBu4SF26rcFU5XLD4eQC7yEuPa/qE5/FxjxXReeUP/Cxub6gUKSP3eNna
 h7bZMklivBfRL6DZvVd1O8yTYkV+pNDye39SYB3w=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 0/7] crypto: mark ecb(arc4) skcipher as obsolete
Date: Mon, 24 Aug 2020 15:29:54 +0200
Message-Id: <20200824133001.9546-1-ardb@kernel.org>
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

RC4 hasn't aged very well, and is a poor fit for the skcipher API so it
would be good if we could get rid of the ecb(arc4) drivers in the kernel
at some point in the future. This prevents new users from creeping in, and
allows us to improve the skcipher API without having to care too much about
obsolete algorithms that may be difficult to support going forward.

So let's get rid of any remaining in-kernel users, either by switching them
to the arc4 library API (for cases which simply cannot change algorithms,
e.g., WEP), or dropping the code entirely. Also remove the remaining h/w
accelerated implementations, and mark the generic s/w implementation as
obsolete in Kconfig.

Changes since RFC [0]:
- keep ecb(arc4) generic C implementation, and the associated test vectors,
  but print a warning about ecb(arc4) being obsolete so we can identify
  remaining users
- add a Kconfig option to en/disable obsolete algorithms that are only kept
  around to prevent breaking users that rely on it via the socket interface
- add a patch to clean up some bogus Kconfig dependencies
- add acks to patches #1, #2 and #3

[0] https://lore.kernel.org/driverdev-devel/20200702101947.682-1-ardb@kernel.org/

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>
Cc: Anna Schumaker <anna.schumaker@netapp.com>
Cc: "J. Bruce Fields" <bfields@fieldses.org>
Cc: Chuck Lever <chuck.lever@oracle.com>
Cc: Eric Biggers <ebiggers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: linux-crypto@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: devel@driverdev.osuosl.org
Cc: linux-nfs@vger.kernel.org

Ard Biesheuvel (7):
  staging/rtl8192e: switch to RC4 library interface
  staging/rtl8192u: switch to RC4 library interface
  SUNRPC: remove RC4-HMAC-MD5 support from KerberosV
  crypto: n2 - remove ecb(arc4) support
  crypto: bcm-iproc - remove ecb(arc4) support
  net: wireless: drop bogus CRYPTO_xxx Kconfig selects
  crypto: arc4 - mark ecb(arc4) skcipher as obsolete

 crypto/Kconfig                                |  10 +
 crypto/arc4.c                                 |  10 +
 drivers/crypto/bcm/cipher.c                   |  96 +-----
 drivers/crypto/bcm/cipher.h                   |   1 -
 drivers/crypto/bcm/spu.c                      |  23 +-
 drivers/crypto/bcm/spu.h                      |   1 -
 drivers/crypto/bcm/spu2.c                     |  12 +-
 drivers/crypto/bcm/spu2.h                     |   1 -
 drivers/crypto/n2_core.c                      |  46 ---
 drivers/net/wireless/intel/ipw2x00/Kconfig    |   4 -
 drivers/net/wireless/intersil/hostap/Kconfig  |   4 -
 drivers/staging/rtl8192e/Kconfig              |   4 +-
 drivers/staging/rtl8192e/rtllib_crypt_tkip.c  |  70 +----
 drivers/staging/rtl8192e/rtllib_crypt_wep.c   |  72 +----
 drivers/staging/rtl8192u/Kconfig              |   1 +
 .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c |  81 +----
 .../rtl8192u/ieee80211/ieee80211_crypt_wep.c  |  64 +---
 include/linux/sunrpc/gss_krb5.h               |  11 -
 include/linux/sunrpc/gss_krb5_enctypes.h      |   9 +-
 net/sunrpc/Kconfig                            |   1 -
 net/sunrpc/auth_gss/gss_krb5_crypto.c         | 276 ------------------
 net/sunrpc/auth_gss/gss_krb5_mech.c           |  95 ------
 net/sunrpc/auth_gss/gss_krb5_seal.c           |   1 -
 net/sunrpc/auth_gss/gss_krb5_seqnum.c         |  87 ------
 net/sunrpc/auth_gss/gss_krb5_unseal.c         |   1 -
 net/sunrpc/auth_gss/gss_krb5_wrap.c           |  65 +----
 26 files changed, 97 insertions(+), 949 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
