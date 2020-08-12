Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A28242EEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 21:07:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1609A2375C;
	Wed, 12 Aug 2020 19:07:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2vGvkOP2FB0f; Wed, 12 Aug 2020 19:07:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A11E723B44;
	Wed, 12 Aug 2020 19:07:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F7371BF37C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 19:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86FDA8852C
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 19:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Halm6CDN3VgR for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 19:07:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 847B98851D
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 19:07:36 +0000 (UTC)
Received: from onda.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A4E420838;
 Wed, 12 Aug 2020 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597259256;
 bh=+2MX8lMPobxkg5Sd92d2N9QmRdXu/gmf1DtCDwVeNMc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GGJWOUBHdHx6FYBQZUIF1C/maagqop8zENLGUFECJirYqYO7THLnB5L8mL2qZhWMH
 /bk+NJSZeSNSAPBTE/soRkC21ws7Km2DH7YNNb0hBmuuD7LpbJ1Gy8CEzb2UTuWY9G
 9gf8QWZCIv2NIBjtiDYQwSjQsac7gBG5saW6K1Ek=
Date: Wed, 12 Aug 2020 16:07:30 -0300
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 00/44] SPMI patches needed by Hikey 970
Message-ID: <20200812160730.292ae1d4@onda.lan>
In-Reply-To: <81cfca4309624b4f33cace78297872a526aa4763.camel@perches.com>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <305f0df155e89e0c626b8f7366c4ab5f6741aedd.camel@perches.com>
 <20200812154752.3223b9d8@onda.lan>
 <81cfca4309624b4f33cace78297872a526aa4763.camel@perches.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linuxarm@huawei.com,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 mauro.chehab@huawei.com, Lee Jones <lee.jones@linaro.org>, "David
 S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 12 Aug 2020 11:58:55 -0700
Joe Perches <joe@perches.com> escreveu:

> On Wed, 2020-08-12 at 15:47 -0300, Mauro Carvalho Chehab wrote:
> > Em Wed, 12 Aug 2020 10:13:51 -0700
> > Joe Perches <joe@perches.com> escreveu:
> >   
> > > Perhaps these trivial bits on top:  
> > 
> > Sounds fine for me. Feel free to send it with your SOB, adding my reviewed by:
> > 
> > Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>  
> 
> I don't know that your original
> series is going to be applied as-is
> so I think you should carry it.


Ok. I'll then add the hunks you wrote to the affected changesets.
> 
> cheers, Joe
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
