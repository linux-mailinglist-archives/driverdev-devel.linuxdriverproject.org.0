Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8F229AC01
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 13:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 309C9866D1;
	Tue, 27 Oct 2020 12:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUEtTKFh6LJY; Tue, 27 Oct 2020 12:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D312855D2;
	Tue, 27 Oct 2020 12:23:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 875171BF84C
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E8CF855D2
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwaGaOjPnEy5 for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 12:23:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 05E888555A
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 12:23:45 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13CF022450;
 Tue, 27 Oct 2020 12:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603801424;
 bh=KEn1p/EFbKzzIhU4vN1pyAkXI5buPFNnZeWdmfkrF58=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rB+G0feEu0i5T//isXvB3sut+XuwdE2QXicbFGfKfVJXDzBSrSRin2ULWOvJvevFh
 4+QhdXe62QOEW10D6DOnOq7BBk1JVHCepT2OuP8gw0q1pqHIa5Zq7VxuKpKvdoKQtm
 nDVqMIivRwQXENPVRm+eE+ZapU3HpvypI7vXlqWc=
Date: Tue, 27 Oct 2020 13:24:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: avoid uninitialized variable use
Message-ID: <20201027122439.GA670469@kroah.com>
References: <20201026160243.3705030-1-arnd@kernel.org>
 <1716365.mxtkSTacob@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1716365.mxtkSTacob@pc-42>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 26, 2020 at 05:11:11PM +0100, J=E9r=F4me Pouiller wrote:
> On Monday 26 October 2020 17:02:22 CET Arnd Bergmann wrote:
> > =

> > From: Arnd Bergmann <arnd@arndb.de>
> > =

> > Move the added check of the 'band' variable after the
> > initialization. Pointed out by clang with
> > =

> > drivers/staging/wfx/data_tx.c:34:19: warning: variable 'band' is uninit=
ialized when used here [-Wuninitialized]
> >         if (rate->idx >=3D band->n_bitrates) {
> =

> Hello Arnd,
> =

> This patch has already been submitted[1]. I think it is going to be
> applied to staging very soon.
> =

> Sorry for the disturbing.
> =

> [1] https://lore.kernel.org/driverdev-devel/20201019160604.1609180-1-Jero=
me.Pouiller@silabs.com/

Sorry for the delay, had to wait until -rc1 was out.

Now queued up in my tree.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
