Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8140523BB8F
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 16:00:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C71D386970;
	Tue,  4 Aug 2020 14:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fjypg6XPXdcH; Tue,  4 Aug 2020 14:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FD7C86689;
	Tue,  4 Aug 2020 13:59:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2196E1BF25B
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 13:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1911E859BD
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 13:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RsCyuFOmBV4e for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 13:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E3F4855FF
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 13:59:57 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24426208C7
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596549597;
 bh=E2bgygJ6YnJNErdqArQCjl4L6O71EKfdlktswy0gz1g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DGtNVHxpYgha4luyk0w0xpEnrv7R//zKbx8zb1YJHkiTQWFS/crqKiEMSJECcuATj
 0bcA+q58yE9wjutxDhGv1C7TQROA22h52Ozc7M2Sk4dpyE1LJbAlV1jilbDVs3Fcyv
 Hliv13uS4aMIbjuG/PGyTQl72N07kvywL/WjjzZ0=
Received: by mail-oi1-f176.google.com with SMTP id b22so10454520oic.8
 for <devel@driverdev.osuosl.org>; Tue, 04 Aug 2020 06:59:57 -0700 (PDT)
X-Gm-Message-State: AOAM532jgwGd4aA0+JBgL4DnI64rBlf3vfuQA3UdbtO/is+w9T/st5kq
 GYejJhmH0Ov1v7IvL3yntxfd74CYS/xMyRcLx7w=
X-Google-Smtp-Source: ABdhPJy9K28J73rqwaw8sqyHjeTCf6xPw5eIPlfZNIJ6/BHFKRwVxOkMx9Cqd12y0xpIlPkFwjkELicwa2sz+O6lD+w=
X-Received: by 2002:a05:6808:b37:: with SMTP id
 t23mr3607031oij.174.1596549596400; 
 Tue, 04 Aug 2020 06:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200702101947.682-1-ardb@kernel.org>
 <20200702101947.682-5-ardb@kernel.org>
 <20200702175022.GA2753@sol.localdomain>
 <CAMj1kXFen1nickdZab0s8iY7SgauoH56VginEoPdxaAAL2qENw@mail.gmail.com>
 <CAMj1kXG7i1isB9cV57ccaOZhrG3s7x+nKGozzTewuE9uWvX_wg@mail.gmail.com>
 <CAMj1kXGiu5Wr8NAACBUtiJMY8rQAGCTOcQdK1QM6jgH-0Lm=YA@mail.gmail.com>
 <CAMj1kXHA2R1UDcYROwiLgUQCrOpNWxt-BAP0aBD=3RP4HbcOnA@mail.gmail.com>
In-Reply-To: <CAMj1kXHA2R1UDcYROwiLgUQCrOpNWxt-BAP0aBD=3RP4HbcOnA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 4 Aug 2020 15:59:45 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGrm7EFtRxx3nhE-eDhp11cDzkzow7ZcwRiW3wXBgVQyg@mail.gmail.com>
Message-ID: <CAMj1kXGrm7EFtRxx3nhE-eDhp11cDzkzow7ZcwRiW3wXBgVQyg@mail.gmail.com>
Subject: Re: [RFC PATCH 4/7] crypto: remove ARC4 support from the skcipher API
To: Eric Biggers <ebiggers@kernel.org>, Denis Kenzior <denkenz@gmail.com>, 
 Marcel Holtmann <marcel@holtmann.org>
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
 linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 "J. Bruce Fields" <bfields@fieldses.org>, Chuck Lever <chuck.lever@oracle.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 25 Jul 2020 at 10:06, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Sat, 18 Jul 2020 at 11:18, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Fri, 3 Jul 2020 at 02:04, Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Thu, 2 Jul 2020 at 20:21, Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Thu, 2 Jul 2020 at 19:50, Eric Biggers <ebiggers@kernel.org> wrote:
> > > > >
> > > > > [+linux-wireless, Marcel Holtmann, and Denis Kenzior]
> > > > >
> > > > > On Thu, Jul 02, 2020 at 12:19:44PM +0200, Ard Biesheuvel wrote:
> > > > > > Remove the generic ecb(arc4) skcipher, which is slightly cumbersome from
> > > > > > a maintenance perspective, since it does not quite behave like other
> > > > > > skciphers do in terms of key vs IV lifetime. Since we are leaving the
> > > > > > library interface in place, which is used by the various WEP and TKIP
> > > > > > implementations we have in the tree, we can safely drop this code now
> > > > > > it no longer has any users.
> > > > > >
> > > > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > > >
> > > > > Last year there was a discussion where it was mentioned that iwd uses
> > > > > "ecb(arc4)" via AF_ALG.  So can we really remove it yet?
> > > > > See https://lkml.kernel.org/r/97BB95F6-4A4C-4984-9EAB-6069E19B4A4F@holtmann.org
> > > > > Note that the code isn't in "iwd" itself but rather in "libell" which iwd
> > > > > depends on: https://git.kernel.org/pub/scm/libs/ell/ell.git/
> > > > >
> > > > > Apparently it also uses md4 and ecb(des) too.
> > > > >
> > > >
> > > > Ah yes, I remember now :-(
> > > >
> > > > > Marcel and Denis, what's your deprecation plan for these obsolete and insecure
> > > > > algorithms?
> > > > >
> > > >
> > > > Given Denis's statement:
> > > >
> > > >   It sounds to me like it was broken and should be fixed.  So our vote /
> > > >   preference is to have ARC4 fixed to follow the proper semantics.  We
> > > >   can deal with the kernel behavioral change on our end easily enough;
> > > >   the required workarounds are the worse evil.
> > > >
> > > > I would think that an ABI break is not the end of the world for them,
> > > > and given how trivial it is to implement RC4 in C, the workaround
> > > > should be to simply implement RC4 in user space, and not even bother
> > > > trying to use AF_ALG to get at ecb(arc4)
> > > >
> > > > (same applies to md4 and ecb(des) btw)
> > > >
> > > > There will always be a long tail of use cases, and at some point, we
> > > > just have to draw the line and remove obsolete and insecure cruft,
> > > > especially when it impedes progress on other fronts.
> > > >
> > >
> > > I have ported iwd to Nettle's LGPL 2.1 implementation of ARC4, and the
> > > diffstat is
> > >
> > >  src/crypto.c      | 80 ++++++++++++--------
> > >  src/main.c        |  8 --
> > >  unit/test-eapol.c |  3 +-
> > >  3 files changed, 51 insertions(+), 40 deletions(-)
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/ardb/iwd.git/log/?h=arc4-cleanup
> >
> > Marcel, Denis,
> >
> > Do you have any objections to the ecb(arc4) skcipher being dropped
> > from the kernel, given the fallback i proposed above (which is a much
> > better way of doing rc4 in user space anyway)?
> >
> > For libell, I would suggest dropping rc4 entirely, once iwd stops
> > relying on it, as using rc4 for tls is obsolete as well.
>
> Ping?

Denis was kind enough to take the changes to iwd and libell that
remove all dependencies on the ecb(arc4) skcipher exposed by the
kernel, so we can at least deprecate it in the short term, and
hopefully remove it entirely at a later stage.

Perhaps we should introduce a Kconfig symbol that needs to be set to
enable deprecated algorithms? That way, we can work with the distros
to phase out the old junk that is piling up, but in a way that doesn't
break people's systems.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
