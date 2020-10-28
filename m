Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7231D29D000
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 14:20:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CD2286A11;
	Wed, 28 Oct 2020 13:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBCnA2OMEeq8; Wed, 28 Oct 2020 13:20:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D95D386896;
	Wed, 28 Oct 2020 13:20:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36AB41BF857
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 13:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 327FE86746
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 13:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M++iWxQZy733 for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 13:20:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBA2B8664E
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 13:20:39 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F378E24745
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 13:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603891239;
 bh=+zcA/6pTJEiqhEIB6b9u13iGz/vyrIiNkbw5+OfR3RU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=G8BbRQyz/59LYY1N42cxCAJhwL18YtebLWmX5CIxnlOO5I2ajUNwDm2lyKa9cslSa
 vQY7OdvwsOhagPj5BoHEV4HJ3tuxYWcLqCNhIwoKiuqVpk4NL3i1jX9p2cUUbEdOPy
 KA+YZ6F+a9vywgLP/ys9YSb7KiyrzgLubZq7l5gU=
Received: by mail-lj1-f172.google.com with SMTP id m20so6286728ljj.5
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 06:20:38 -0700 (PDT)
X-Gm-Message-State: AOAM533mAMwyRKMW/8CldHKvAk+qxAiUewfe/LBNQe/RrgJjDKVrC3me
 Qh7FzIzxWbd4z6lzsBz7H3OHMyGaMHZ3GZdv9Pw=
X-Google-Smtp-Source: ABdhPJwPj+jJVO+NGNXNwzAOQ7QC4CMa7GE7JJfMww785BE/4plVH+2GBu818TRJNl+lheV7rkZknd5yyXXDquGphqE=
X-Received: by 2002:a2e:b8c8:: with SMTP id s8mr3141184ljp.189.1603891237138; 
 Wed, 28 Oct 2020 06:20:37 -0700 (PDT)
MIME-Version: 1.0
References: <20201027212448.454129-1-arnd@kernel.org>
 <20201028103456.GB1042@kadam>
In-Reply-To: <20201028103456.GB1042@kadam>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 28 Oct 2020 14:20:20 +0100
X-Gmail-Original-Message-ID: <CAK8P3a03Oi-hKh9Db95K_ou_Lk5svWAo5HV8ZgxuktJi2RWS2A@mail.gmail.com>
Message-ID: <CAK8P3a03Oi-hKh9Db95K_ou_Lk5svWAo5HV8ZgxuktJi2RWS2A@mail.gmail.com>
Subject: Re: [RFC] wimax: move out to staging
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Networking <netdev@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 28, 2020 at 11:34 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Tue, Oct 27, 2020 at 10:20:13PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > There are no known users of this driver as of October 2020, and it will
> > be removed unless someone turns out to still need it in future releases.
> >
> > According to https://en.wikipedia.org/wiki/List_of_WiMAX_networks, there
> > have been many public wimax networks, but it appears that these entries
> > are all stale, after everyone has migrated to LTE or discontinued their
> > service altogether.
>
> Wimax is still pretty common in Africa.  But you have to buy an outdoor
> antenae with all the software on it and an ethernet cable into your
> house.

Ah, good to know, thanks for the information. I'll include that when
I resend the patch, which I have to do anyway to avoid a small
regression. I did a look at a couple of African ISPs that seemed to
all have discontinued service, but I suppose I should have looked
more carefully.

>  I don't know what software the antennaes are using.  Probably
> Linux but with an out of tree kernel module is my guess.

Right, it seems very unlikely that they would be using the old
Intel drivers, and it's also unlikely that they are updating those
boxes to new kernels. I found a firmware image for Huawei
BM623m, which runs a proprietary kernel module for the wimax
stack on an MT7108 (arm926) phone chip running a
linux-2.6.26.8-rt16 kernel.

       Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
