Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7DF24FF0A
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Aug 2020 15:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1789F86267;
	Mon, 24 Aug 2020 13:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHBn85bCfOPL; Mon, 24 Aug 2020 13:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12C3485A80;
	Mon, 24 Aug 2020 13:39:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0A71BF291
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 181C686FE9
 for <devel@linuxdriverproject.org>; Mon, 24 Aug 2020 13:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0aJe++sWDKt for <devel@linuxdriverproject.org>;
 Mon, 24 Aug 2020 13:38:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A96CF86ECC
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 13:38:59 +0000 (UTC)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73CAE22B43
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 13:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598276339;
 bh=kEbqLgXtUbdCPrN4ICEl0OvR3tkJnudXGG5JsPUDVig=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MLII6vb04GJQ+J/FKHi16LG3O2tI047xpNLr7Yy6fqVE3od/oITTChvIRzwLwzRA9
 ThSwD0T8Bra0lEVUfDR7/JbGO0M4a6vV5K3RXBxP/6DbPK684u97use7vD3drZDdpE
 4WAgxNaLPWltVSlkzLsPv3CaMfgzNYYYwc719kAM=
Received: by mail-ot1-f41.google.com with SMTP id h16so7285481oti.7
 for <devel@driverdev.osuosl.org>; Mon, 24 Aug 2020 06:38:59 -0700 (PDT)
X-Gm-Message-State: AOAM530cu705d1JUDkU24/WDEypLc/Nx4cXHzMXtn3/S5ezH2cY3Zt3d
 O4y3F05/wjApdxfvbBx+/feGD/6tkIgZ5zP8NdU=
X-Google-Smtp-Source: ABdhPJw1+FTr8NU33NPKN/I6Uh6X3jKuIjoVKrbJNixZCRN6rv3ElWe8BMm5ignE2b4v6a+Idlz15Bx3llj3ETTz3rU=
X-Received: by 2002:a9d:774d:: with SMTP id t13mr3396136otl.108.1598276338681; 
 Mon, 24 Aug 2020 06:38:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200824133001.9546-1-ardb@kernel.org>
 <20200824133001.9546-8-ardb@kernel.org>
 <20200824133448.GA5019@gondor.apana.org.au>
In-Reply-To: <20200824133448.GA5019@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 24 Aug 2020 15:38:47 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFSuFfgYHfD69XQHpGMyA+vg0KqEg-ymix1-Vu=CfDDvQ@mail.gmail.com>
Message-ID: <CAMj1kXFSuFfgYHfD69XQHpGMyA+vg0KqEg-ymix1-Vu=CfDDvQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] crypto: arc4 - mark ecb(arc4) skcipher as obsolete
To: Herbert Xu <herbert@gondor.apana.org.au>
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
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 "open list:BPF JIT for MIPS \(32-BIT AND 64-BIT\)" <netdev@vger.kernel.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 24 Aug 2020 at 15:35, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Mon, Aug 24, 2020 at 03:30:01PM +0200, Ard Biesheuvel wrote:
> >
> > +config CRYPTO_USER_ENABLE_OBSOLETE
> > +     bool "Enable obsolete cryptographic algorithms for userspace"
> > +     depends on CRYPTO_USER
>
> That should be CRYPTO_USER_API which is the option for af_alg.
> CRYPTO_USER is the configuration interface which has nothing to
> do with af_alg.
>

OK, will fix.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
