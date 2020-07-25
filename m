Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EAD22D5A6
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 09:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0690E870DA;
	Sat, 25 Jul 2020 07:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s8nXj0xc9i8E; Sat, 25 Jul 2020 07:06:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A90D8691A;
	Sat, 25 Jul 2020 07:06:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78B571BF289
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 07:06:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7528888189
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 07:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sk1-yUMN5GTv for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 07:06:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53F1C88157
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 07:06:17 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18EBB20758
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 07:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595660777;
 bh=2CHbIxC5Kb2WtZDnEWCdd+0JKhqhPfpbvIbPs1xwH4k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=uwH6LviNKeZGE4LzNNRPr3R/92imSYJ2ZgeAEN7TOA44pZ/llpuI20rU+xXICJ5H7
 iRnIa6vNoOk88t2s4QrIua+pndEJwCFEk40fa+C9jcg1PPzDYwO1OvKAkEcfOMT58/
 8fGrHKhJc+pnJgAy8JiVQAJdWl7suR/I2SAQsRGo=
Received: by mail-oi1-f181.google.com with SMTP id e4so10017823oib.1
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 00:06:17 -0700 (PDT)
X-Gm-Message-State: AOAM531QhV46L6N17cyJU3JHXq4rM0VfyeAVWzecRSUJNgIT3FB+MiyL
 qDo0naQ6rKIuNak16TDu0wG8X5L9MDpHPxNW5pk=
X-Google-Smtp-Source: ABdhPJzidd2j+iDxB/LYtohSgN4ly7uvOdd4MMroDSUd9hpc7Iq4dbDDtkMqbNUHllGwnfIzHzQ5G/xdxanlFrdAxEY=
X-Received: by 2002:aca:5594:: with SMTP id j142mr280999oib.33.1595660776343; 
 Sat, 25 Jul 2020 00:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200702101947.682-1-ardb@kernel.org>
 <20200702101947.682-5-ardb@kernel.org>
 <20200702175022.GA2753@sol.localdomain>
 <CAMj1kXFen1nickdZab0s8iY7SgauoH56VginEoPdxaAAL2qENw@mail.gmail.com>
 <CAMj1kXG7i1isB9cV57ccaOZhrG3s7x+nKGozzTewuE9uWvX_wg@mail.gmail.com>
 <CAMj1kXGiu5Wr8NAACBUtiJMY8rQAGCTOcQdK1QM6jgH-0Lm=YA@mail.gmail.com>
In-Reply-To: <CAMj1kXGiu5Wr8NAACBUtiJMY8rQAGCTOcQdK1QM6jgH-0Lm=YA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 25 Jul 2020 10:06:04 +0300
X-Gmail-Original-Message-ID: <CAMj1kXHA2R1UDcYROwiLgUQCrOpNWxt-BAP0aBD=3RP4HbcOnA@mail.gmail.com>
Message-ID: <CAMj1kXHA2R1UDcYROwiLgUQCrOpNWxt-BAP0aBD=3RP4HbcOnA@mail.gmail.com>
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
 Anna Schumaker <anna.schumaker@netapp.com>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Denis Kenzior <denkenz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 18 Jul 2020 at 11:18, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 3 Jul 2020 at 02:04, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 2 Jul 2020 at 20:21, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Thu, 2 Jul 2020 at 19:50, Eric Biggers <ebiggers@kernel.org> wrote:
> > > >
> > > > [+linux-wireless, Marcel Holtmann, and Denis Kenzior]
> > > >
> > > > On Thu, Jul 02, 2020 at 12:19:44PM +0200, Ard Biesheuvel wrote:
> > > > > Remove the generic ecb(arc4) skcipher, which is slightly cumbersome from
> > > > > a maintenance perspective, since it does not quite behave like other
> > > > > skciphers do in terms of key vs IV lifetime. Since we are leaving the
> > > > > library interface in place, which is used by the various WEP and TKIP
> > > > > implementations we have in the tree, we can safely drop this code now
> > > > > it no longer has any users.
> > > > >
> > > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > >
> > > > Last year there was a discussion where it was mentioned that iwd uses
> > > > "ecb(arc4)" via AF_ALG.  So can we really remove it yet?
> > > > See https://lkml.kernel.org/r/97BB95F6-4A4C-4984-9EAB-6069E19B4A4F@holtmann.org
> > > > Note that the code isn't in "iwd" itself but rather in "libell" which iwd
> > > > depends on: https://git.kernel.org/pub/scm/libs/ell/ell.git/
> > > >
> > > > Apparently it also uses md4 and ecb(des) too.
> > > >
> > >
> > > Ah yes, I remember now :-(
> > >
> > > > Marcel and Denis, what's your deprecation plan for these obsolete and insecure
> > > > algorithms?
> > > >
> > >
> > > Given Denis's statement:
> > >
> > >   It sounds to me like it was broken and should be fixed.  So our vote /
> > >   preference is to have ARC4 fixed to follow the proper semantics.  We
> > >   can deal with the kernel behavioral change on our end easily enough;
> > >   the required workarounds are the worse evil.
> > >
> > > I would think that an ABI break is not the end of the world for them,
> > > and given how trivial it is to implement RC4 in C, the workaround
> > > should be to simply implement RC4 in user space, and not even bother
> > > trying to use AF_ALG to get at ecb(arc4)
> > >
> > > (same applies to md4 and ecb(des) btw)
> > >
> > > There will always be a long tail of use cases, and at some point, we
> > > just have to draw the line and remove obsolete and insecure cruft,
> > > especially when it impedes progress on other fronts.
> > >
> >
> > I have ported iwd to Nettle's LGPL 2.1 implementation of ARC4, and the
> > diffstat is
> >
> >  src/crypto.c      | 80 ++++++++++++--------
> >  src/main.c        |  8 --
> >  unit/test-eapol.c |  3 +-
> >  3 files changed, 51 insertions(+), 40 deletions(-)
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/ardb/iwd.git/log/?h=arc4-cleanup
>
> Marcel, Denis,
>
> Do you have any objections to the ecb(arc4) skcipher being dropped
> from the kernel, given the fallback i proposed above (which is a much
> better way of doing rc4 in user space anyway)?
>
> For libell, I would suggest dropping rc4 entirely, once iwd stops
> relying on it, as using rc4 for tls is obsolete as well.

Ping?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
