Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E40F35A59A
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 20:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99D784060F;
	Fri,  9 Apr 2021 18:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQk0ewW5cmyq; Fri,  9 Apr 2021 18:17:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70371405F4;
	Fri,  9 Apr 2021 18:17:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31C161BF371
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:17:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1AB3B6082B
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 18:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m-kuFRsA10Rq for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 18:17:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4075607B9
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 18:17:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 49BF46115B;
 Fri,  9 Apr 2021 18:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617992241;
 bh=zmrVd+l2mMe5hkZ4P4/qZQa4cYl7igYv1cGkRi2zb2U=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=asGV210OGo7+rgQWEeo26xOTxL03bInrB102ksDXxXABaqU/cNLDHTm7OwyPgKF1Q
 3LqZQv/bbv7QzCEXwcY3AE3KCs8nSDTH3Jk9Fr36my6VeRI5+MVASKsea1zKq/xtqX
 lvAwuawBihdldfovzXJ+MVKuU1sbzhxPYxYE4jtc6inRSutAqmOuRQwDGdzo3U1lXt
 8TUd0n4wCHjpGcsF2WghRmo9RaNyMacq6w88m43AhdPKS518tLTT3KF8U1TWS/qTLc
 SmLaKsu7qQHaZTTiZchDksn3syu7A0EASs+byDYOzjZjmjZpcuxhOnZCqOQ35G571N
 eTFGDLX2Qi45g==
MIME-Version: 1.0
In-Reply-To: <CAMhs-H_zBqe_+dKV4KT3QyOaONErmnCKME4-7ey2CnWJfUVseg@mail.gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
 <CAMhs-H_zBqe_+dKV4KT3QyOaONErmnCKME4-7ey2CnWJfUVseg@mail.gmail.com>
Subject: Re: [PATCH v11 0/6] MIPS: ralink: add CPU clock detection and clock
 driver for MT7621
From: Stephen Boyd <sboyd@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 09 Apr 2021 11:17:20 -0700
Message-ID: <161799224004.3790633.10957084716451758402@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: STAGING SUBSYSTEM <devel@driverdev.osuosl.org>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Greg KH <gregkh@linuxfoundation.org>, MIPS <linux-mips@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 COMMON CLK FRAMEWORK <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Sergio Paracuellos (2021-03-23 01:13:22)
> On Tue, Mar 9, 2021 at 6:22 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > Changes in v11:
> >  - Collect Rob's Reviewed-by in bindings documentation patch.
> >  - Fix MAINTAINERS patch using file 'mediatek,mt7621-sysc.yaml'
> >    for documentation bindings.
> 
> Something still missing or something that is needed to be fixed to get
> this series applied through your tree?
> 
> Thanks in advance for your time.
> 

Sorry I missed this series. I thought it was going through another tree.
It can merge through clk tree. Just a few nits on the clk driver patch
but otherwise I've merged the first two patches. If you resend in the
next few days it would be great. Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
