Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F6CE224A
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Oct 2019 20:05:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C705876EF;
	Wed, 23 Oct 2019 18:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kOCtz41VJRiE; Wed, 23 Oct 2019 18:05:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FFC4876C9;
	Wed, 23 Oct 2019 18:05:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B2BFF1BF48D
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 18:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A87B2863BB
 for <devel@linuxdriverproject.org>; Wed, 23 Oct 2019 18:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KON49LNkAY0u for <devel@linuxdriverproject.org>;
 Wed, 23 Oct 2019 18:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E3EE856E8
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 18:05:33 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k7so10479272pll.1
 for <devel@driverdev.osuosl.org>; Wed, 23 Oct 2019 11:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tBfEWV8k73MV4Qw3DAmfxqW3sxBZePe885VokyL+kFI=;
 b=XWHGBEjZONbK9+JQ40gwN6YVXCRHMMzdlxxNu9JFSKH+O0LdlUyrZ1J9HxXGzbPdRW
 UDpsyBDLJHHvNx9x7qlmPdYbgbgJLrAGaJ8oOhp+3L3Zk5qaGQQCLPVMu88NfVw2L8aB
 nbuY2rgGUYTX7RNLwlGNfPZ9o2G8FRYhBAh6fLvuLzJVXoUg/nDQWNEAniYYSMJ2wGjg
 rRHNObfKrqxrrx+EAlPuxs0jd3PaWcA+7ApQcUVGCU75aCMTtTY5RcIzYJYH+C+2dw0I
 xr7J7YH6pc4jRa6lb97Sv5EyaRIslGU/UhWEQ4PmyGrf6rxqTkeXzCtzJz+rxmyohyBU
 Mitw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=tBfEWV8k73MV4Qw3DAmfxqW3sxBZePe885VokyL+kFI=;
 b=aGS1wQH6z++Z2fSkRU70B1zFGvgBiU2df9nybD9Hyu43+wIxaOp2AaxeO+AolewGsa
 vwJPNFD4CzuxeCADuz6zxSNyqoGyL16cZFSmJGhRzeiwjtlm8SMG1rvZzyWBx3tbEoA4
 qWS/32oHHwEeOyx+QAYjz/qtzWMHkADUEqiMlGJ78A2+M/OFK8phVYsPbVGYI5Wepxbj
 KSDf/JPd8jDvAsDciuSP2mP/afKcWE/Vol602u0Pmib3rckid6UgxPKKoWs5Z4UsGaio
 yeUU1ci7Zsz7yusuh27/SWuynyYxqeVyocqH2B5dsPE3rRUvT61XdlbFqLJ9lXe6bVyB
 GuKw==
X-Gm-Message-State: APjAAAV7zMGShJyulAqQDceRRJWPYnWBO+3vhZ6uYy8d7S5J4BDUogJN
 flAg7d5mQujM4VbjZh+ai/U=
X-Google-Smtp-Source: APXvYqyCMGw0T2zCZa6pHPm8qUAqG0zHuEiZ9EUqlMTNIBUNJv5pgfDK9+JEj31tAbaTq9O9zFUsYw==
X-Received: by 2002:a17:902:8348:: with SMTP id
 z8mr11343624pln.12.1571853932584; 
 Wed, 23 Oct 2019 11:05:32 -0700 (PDT)
Received: from wambui ([197.254.95.2])
 by smtp.gmail.com with ESMTPSA id d20sm25278968pfq.88.2019.10.23.11.05.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 11:05:31 -0700 (PDT)
Date: Wed, 23 Oct 2019 21:05:21 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] Remove typedef declarations in
 staging: octeon
Message-ID: <20191023180521.GA5220@wambui>
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122034390.3049@hadrien>
 <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023174304.GD18977@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: 20191023174304.GD18977@darkstar.musicnaut.iki.fi
Cc: devel@driverdev.osuosl.org, Julia Lawall <julia.lawall@lip6.fr>,
 outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 23, 2019 at 08:43:04PM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Sat, Oct 12, 2019 at 08:35:19PM +0200, Julia Lawall wrote:
> > On Sat, 12 Oct 2019, Wambui Karuga wrote:
> > > This patchset removes the addition of new typedefs data types in octeon,
> > > along with replacing the previous uses with the new declaration format.
> > >
> > > v2 of the series removes the obsolete "_t" notation in the named types.
> > >
> > > Wambui Karuga (5):
> > >   staging: octeon: remove typedef declaration for cvmx_wqe
> > >   staging: octeon: remove typedef declaration for cvmx_helper_link_info
> > >   staging: octeon: remove typedef declaration for cvmx_fau_reg_32
> > >   staging: octeon: remove typedef declartion for cvmx_pko_command_word0
> > >   staging: octeon: remove typedef declaration for cvmx_fau_op_size
> > >
> > >  drivers/staging/octeon/ethernet-mdio.c   |  6 +--
> > >  drivers/staging/octeon/ethernet-rgmii.c  |  4 +-
> > >  drivers/staging/octeon/ethernet-rx.c     |  6 +--
> > >  drivers/staging/octeon/ethernet-tx.c     |  4 +-
> > >  drivers/staging/octeon/ethernet.c        |  6 +--
> > >  drivers/staging/octeon/octeon-ethernet.h |  2 +-
> > >  drivers/staging/octeon/octeon-stubs.h    | 56 ++++++++++++------------
> > >  7 files changed, 43 insertions(+), 41 deletions(-)
> > 
> > For the series:
> > 
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
> This series breaks the build on MIPS/OCTEON (the only actual HW using this
> driver):
> 
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu- cavium_octeon_defconfig
> $ make ARCH=mips CROSS_COMPILE=mips64-linux-gnu-
> [...]
>   CC      drivers/staging/octeon/ethernet.o
> In file included from drivers/staging/octeon/ethernet.c:22:
> drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
>       union cvmx_helper_link_info li);  
>             ^~~~~~~~~~~~~~~~~~~~~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_free_work':
> drivers/staging/octeon/ethernet.c:177:21: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
>   int segments = work->word2.s.bufs;
>                      ^~
> drivers/staging/octeon/ethernet.c: In function 'cvm_oct_common_open':
> drivers/staging/octeon/ethernet.c:463:30: error: storage size of 'link_info' isn't known
>   union cvmx_helper_link_info link_info;
>                               ^~~~~~~~~
> 
> etc.
> 
> Probably all these patches need to be reverted.
> 
> A.

Aaro, thanks for the heads up - I can try cross-compiling to see if I
can fix the errors.
wambui karuga.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
