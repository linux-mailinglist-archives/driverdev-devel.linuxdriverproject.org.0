Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60647212B8F
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 19:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35A6B88C2B;
	Thu,  2 Jul 2020 17:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dB6rKyLg_iQP; Thu,  2 Jul 2020 17:50:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E266E88C4C;
	Thu,  2 Jul 2020 17:50:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC3461BF3D5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 17:50:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8ADD8AF94
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 17:50:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hIV6NgRfDvwp for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 17:50:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 51D238AF91
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 17:50:24 +0000 (UTC)
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94BD020737;
 Thu,  2 Jul 2020 17:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593712224;
 bh=gONodLYvSEBI/VzAFQ+qoexk3Hoaqs926kGYVFbfaAs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VRg2kfoDvSMpz8T8I1Y4Kz/0JTymw6S1ArHLqCNfOB+D8jka05iOV6NSdXFQmRgeD
 6Pn4a5wS13qlHgdpyoeS1QMCFlIP1blXzcTlWQpSEyI+hfee+SUdCvDsX40qmTVIEq
 d9ltZHdjUiRYKjCQmiKUdhbvtC9GHJcqvQZtsUk4=
Date: Thu, 2 Jul 2020 10:50:22 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>, linux-wireless@vger.kernel.org,
 Marcel Holtmann <marcel@holtmann.org>, Denis Kenzior <denkenz@gmail.com>
Subject: Re: [RFC PATCH 4/7] crypto: remove ARC4 support from the skcipher API
Message-ID: <20200702175022.GA2753@sol.localdomain>
References: <20200702101947.682-1-ardb@kernel.org>
 <20200702101947.682-5-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702101947.682-5-ardb@kernel.org>
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
 Herbert Xu <herbert@gondor.apana.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

[+linux-wireless, Marcel Holtmann, and Denis Kenzior]

On Thu, Jul 02, 2020 at 12:19:44PM +0200, Ard Biesheuvel wrote:
> Remove the generic ecb(arc4) skcipher, which is slightly cumbersome from
> a maintenance perspective, since it does not quite behave like other
> skciphers do in terms of key vs IV lifetime. Since we are leaving the
> library interface in place, which is used by the various WEP and TKIP
> implementations we have in the tree, we can safely drop this code now
> it no longer has any users.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Last year there was a discussion where it was mentioned that iwd uses
"ecb(arc4)" via AF_ALG.  So can we really remove it yet?
See https://lkml.kernel.org/r/97BB95F6-4A4C-4984-9EAB-6069E19B4A4F@holtmann.org
Note that the code isn't in "iwd" itself but rather in "libell" which iwd
depends on: https://git.kernel.org/pub/scm/libs/ell/ell.git/

Apparently it also uses md4 and ecb(des) too.

Marcel and Denis, what's your deprecation plan for these obsolete and insecure
algorithms?

- Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
