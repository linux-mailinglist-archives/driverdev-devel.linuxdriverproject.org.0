Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EC2212FD4
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jul 2020 01:04:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1E4E87AB4;
	Thu,  2 Jul 2020 23:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yrukh_OAnU08; Thu,  2 Jul 2020 23:04:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 92A9B85E65;
	Thu,  2 Jul 2020 23:04:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC9D1BF2FE
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 23:04:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 05C008961D
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 23:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JXlsYZD0MBtU for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 23:04:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70DB38961C
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 23:04:26 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1766B208E4
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 23:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593731066;
 bh=kbiQ3OWz9EhhS/Tlb7ohnigA/7ugcibWgJNgPfbWUpA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=S1KCNpG9Pv4STc7dA1EIUYmAJMxBx5FwUZImnnnqH2/lfWVOZF+CqdOBuTtfkBHuq
 Y79CA8eKcotSs/YlBBV0FUEOAuDC5VJa9eJgO2+8gpTiyvAHCcXZW86dLe9UkMudqY
 KJZeeIVM2C71UrOUS4zwAPgGcwv5l109snz7DFaU=
Received: by mail-ot1-f52.google.com with SMTP id t18so12569847otq.5
 for <devel@driverdev.osuosl.org>; Thu, 02 Jul 2020 16:04:26 -0700 (PDT)
X-Gm-Message-State: AOAM533ZJl9mg1HL3DAoWGAEiq8JKkfLzBLlDfCOUGOhGgUdhrlnUjlD
 RyBqUVtwTzzhSZZKGg9UlfQ0h6RjpSjWvzyYQU0=
X-Google-Smtp-Source: ABdhPJxz9/D9QobsXbtfi8ziJpmocwg7uy05KVbIQy4z+mCS1flap37AIc4xZoibn5TtrTKeVtMwq2b2dTsAvOaFY3g=
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr27802873oth.90.1593731065360; 
 Thu, 02 Jul 2020 16:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200702101947.682-1-ardb@kernel.org>
 <20200702101947.682-5-ardb@kernel.org>
 <20200702175022.GA2753@sol.localdomain>
 <CAMj1kXFen1nickdZab0s8iY7SgauoH56VginEoPdxaAAL2qENw@mail.gmail.com>
In-Reply-To: <CAMj1kXFen1nickdZab0s8iY7SgauoH56VginEoPdxaAAL2qENw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 3 Jul 2020 01:04:14 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG7i1isB9cV57ccaOZhrG3s7x+nKGozzTewuE9uWvX_wg@mail.gmail.com>
Message-ID: <CAMj1kXG7i1isB9cV57ccaOZhrG3s7x+nKGozzTewuE9uWvX_wg@mail.gmail.com>
Subject: Re: [RFC PATCH 4/7] crypto: remove ARC4 support from the skcipher API
To: Eric Biggers <ebiggers@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marcel Holtmann <marcel@holtmann.org>, linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Denis Kenzior <denkenz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2 Jul 2020 at 20:21, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 2 Jul 2020 at 19:50, Eric Biggers <ebiggers@kernel.org> wrote:
> >
> > [+linux-wireless, Marcel Holtmann, and Denis Kenzior]
> >
> > On Thu, Jul 02, 2020 at 12:19:44PM +0200, Ard Biesheuvel wrote:
> > > Remove the generic ecb(arc4) skcipher, which is slightly cumbersome from
> > > a maintenance perspective, since it does not quite behave like other
> > > skciphers do in terms of key vs IV lifetime. Since we are leaving the
> > > library interface in place, which is used by the various WEP and TKIP
> > > implementations we have in the tree, we can safely drop this code now
> > > it no longer has any users.
> > >
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> >
> > Last year there was a discussion where it was mentioned that iwd uses
> > "ecb(arc4)" via AF_ALG.  So can we really remove it yet?
> > See https://lkml.kernel.org/r/97BB95F6-4A4C-4984-9EAB-6069E19B4A4F@holtmann.org
> > Note that the code isn't in "iwd" itself but rather in "libell" which iwd
> > depends on: https://git.kernel.org/pub/scm/libs/ell/ell.git/
> >
> > Apparently it also uses md4 and ecb(des) too.
> >
>
> Ah yes, I remember now :-(
>
> > Marcel and Denis, what's your deprecation plan for these obsolete and insecure
> > algorithms?
> >
>
> Given Denis's statement:
>
>   It sounds to me like it was broken and should be fixed.  So our vote /
>   preference is to have ARC4 fixed to follow the proper semantics.  We
>   can deal with the kernel behavioral change on our end easily enough;
>   the required workarounds are the worse evil.
>
> I would think that an ABI break is not the end of the world for them,
> and given how trivial it is to implement RC4 in C, the workaround
> should be to simply implement RC4 in user space, and not even bother
> trying to use AF_ALG to get at ecb(arc4)
>
> (same applies to md4 and ecb(des) btw)
>
> There will always be a long tail of use cases, and at some point, we
> just have to draw the line and remove obsolete and insecure cruft,
> especially when it impedes progress on other fronts.
>

I have ported iwd to Nettle's LGPL 2.1 implementation of ARC4, and the
diffstat is

 src/crypto.c      | 80 ++++++++++++--------
 src/main.c        |  8 --
 unit/test-eapol.c |  3 +-
 3 files changed, 51 insertions(+), 40 deletions(-)

https://git.kernel.org/pub/scm/linux/kernel/git/ardb/iwd.git/log/?h=arc4-cleanup
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
