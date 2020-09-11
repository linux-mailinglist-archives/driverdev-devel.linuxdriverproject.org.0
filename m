Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 103222659BE
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Sep 2020 08:58:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63584871C1;
	Fri, 11 Sep 2020 06:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v4WTTxDCri0K; Fri, 11 Sep 2020 06:58:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 803B086D01;
	Fri, 11 Sep 2020 06:58:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 340641BF84C
 for <devel@linuxdriverproject.org>; Fri, 11 Sep 2020 06:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2BF5587729
 for <devel@linuxdriverproject.org>; Fri, 11 Sep 2020 06:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOCl1UOtmPbv for <devel@linuxdriverproject.org>;
 Fri, 11 Sep 2020 06:58:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from fornost.hmeau.com (helcar.hmeau.com [216.24.177.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8BB386791
 for <devel@driverdev.osuosl.org>; Fri, 11 Sep 2020 06:58:11 +0000 (UTC)
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1kGd0F-0007u4-89; Fri, 11 Sep 2020 16:57:48 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 11 Sep 2020 16:57:47 +1000
Date: Fri, 11 Sep 2020 16:57:47 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v3 0/7] crypto: mark ecb(arc4) skcipher as obsolete
Message-ID: <20200911065747.GF32150@gondor.apana.org.au>
References: <20200831151649.21969-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831151649.21969-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Arnd Bergmann <arnd@arndb.de>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 31, 2020 at 06:16:42PM +0300, Ard Biesheuvel wrote:
> RC4 hasn't aged very well, and is a poor fit for the skcipher API so it
> would be good if we could get rid of the ecb(arc4) drivers in the kernel
> at some point in the future. This prevents new users from creeping in, and
> allows us to improve the skcipher API without having to care too much about
> obsolete algorithms that may be difficult to support going forward.
> 
> So let's get rid of any remaining in-kernel users, either by switching them
> to the arc4 library API (for cases which simply cannot change algorithms,
> e.g., WEP), or dropping the code entirely. Also remove the remaining h/w
> accelerated implementations, and mark the generic s/w implementation as
> obsolete in Kconfig.
> 
> Changes since v2:
> - depend on CRYPTO_USER_API not CRYPTO_USER
> - rename CRYPTO_USER_ENABLE_OBSOLETE to CRYPTO_USER_API_ENABLE_OBSOLETE for
>   clarity
> 
> Changes since RFC [0]:
> - keep ecb(arc4) generic C implementation, and the associated test vectors,
>   but print a warning about ecb(arc4) being obsolete so we can identify
>   remaining users
> - add a Kconfig option to en/disable obsolete algorithms that are only kept
>   around to prevent breaking users that rely on it via the socket interface
> - add a patch to clean up some bogus Kconfig dependencies
> - add acks to patches #1, #2 and #3
> 
> [0] https://lore.kernel.org/driverdev-devel/20200702101947.682-1-ardb@kernel.org/
> 
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Trond Myklebust <trond.myklebust@hammerspace.com>
> Cc: Anna Schumaker <anna.schumaker@netapp.com>
> Cc: "J. Bruce Fields" <bfields@fieldses.org>
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: Eric Biggers <ebiggers@google.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: linux-crypto@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: devel@driverdev.osuosl.org
> Cc: linux-nfs@vger.kernel.org
> 
> Ard Biesheuvel (7):
>   staging/rtl8192e: switch to RC4 library interface
>   staging/rtl8192u: switch to RC4 library interface
>   SUNRPC: remove RC4-HMAC-MD5 support from KerberosV
>   crypto: n2 - remove ecb(arc4) support
>   crypto: bcm-iproc - remove ecb(arc4) support
>   net: wireless: drop bogus CRYPTO_xxx Kconfig selects
>   crypto: arc4 - mark ecb(arc4) skcipher as obsolete
> 
>  crypto/Kconfig                                |  10 +
>  crypto/arc4.c                                 |  10 +
>  drivers/crypto/bcm/cipher.c                   |  96 +-----
>  drivers/crypto/bcm/cipher.h                   |   1 -
>  drivers/crypto/bcm/spu.c                      |  23 +-
>  drivers/crypto/bcm/spu.h                      |   1 -
>  drivers/crypto/bcm/spu2.c                     |  12 +-
>  drivers/crypto/bcm/spu2.h                     |   1 -
>  drivers/crypto/n2_core.c                      |  46 ---
>  drivers/net/wireless/intel/ipw2x00/Kconfig    |   4 -
>  drivers/net/wireless/intersil/hostap/Kconfig  |   4 -
>  drivers/staging/rtl8192e/Kconfig              |   4 +-
>  drivers/staging/rtl8192e/rtllib_crypt_tkip.c  |  70 +----
>  drivers/staging/rtl8192e/rtllib_crypt_wep.c   |  72 +----
>  drivers/staging/rtl8192u/Kconfig              |   1 +
>  .../rtl8192u/ieee80211/ieee80211_crypt_tkip.c |  81 +----
>  .../rtl8192u/ieee80211/ieee80211_crypt_wep.c  |  64 +---
>  include/linux/sunrpc/gss_krb5.h               |  11 -
>  include/linux/sunrpc/gss_krb5_enctypes.h      |   9 +-
>  net/sunrpc/Kconfig                            |   1 -
>  net/sunrpc/auth_gss/gss_krb5_crypto.c         | 276 ------------------
>  net/sunrpc/auth_gss/gss_krb5_mech.c           |  95 ------
>  net/sunrpc/auth_gss/gss_krb5_seal.c           |   1 -
>  net/sunrpc/auth_gss/gss_krb5_seqnum.c         |  87 ------
>  net/sunrpc/auth_gss/gss_krb5_unseal.c         |   1 -
>  net/sunrpc/auth_gss/gss_krb5_wrap.c           |  65 +----
>  26 files changed, 97 insertions(+), 949 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
