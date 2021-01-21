Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 525BD2FE3F1
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:29:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B1B686D21;
	Thu, 21 Jan 2021 07:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f2T7uMJbrOYE; Thu, 21 Jan 2021 07:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69E5E86CD1;
	Thu, 21 Jan 2021 07:29:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C3121BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 54F6820763
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4V3CBIBX1mEC for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:29:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id AA91620788
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:29:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A864F23877;
 Thu, 21 Jan 2021 07:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611214193;
 bh=dy3L1jica4WKQF+cqZ7I7ZgMXPtsT1Sr6ANeEUfQwX8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bv9OhMzw4yJN0xbTN/LSuN/8rePwqbTc3yqZk8Wz0gFn8MYQ8OZradvHW/dz/m1Nm
 LZrPRQxhU2ZNwVUloNaYBABNtMAUkcYHT/NC8zisx3MyVUqGqmUWbV46reAO2jEv1a
 Aq+d9DNdPrEf0M8TRk6Ey9gcayANRlEQisz7W8JqAoA+02lpm1D08QS+M+Sj6tf1aK
 4JljzraYtuP18TsE5pXQoRQHK98yMrz52rWXdWO/R6JLpwb9mOFTZwYxo3+Pbgo+kS
 m/uDg4EuDg/rUQy9n3UoW/1Ow/5DVsAmElHUzh9Y4GWh/fuNnoCrfPcUQSHp4JT2Hl
 DVZyHOL6kOSSQ==
Date: Thu, 21 Jan 2021 08:29:47 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 19/21] regulator: hi6421v600-regulator: move it from
 staging
Message-ID: <20210121082947.633213ad@coco.lan>
In-Reply-To: <20210120170744.GD6794@sirena.org.uk>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <8000252dfd10677c5eb52d498e68de9c65304cf4.1611072387.git.mchehab+huawei@kernel.org>
 <20210119161950.GC4478@sirena.org.uk>
 <20210120000244.2f1862d6@coco.lan>
 <20210120170744.GD6794@sirena.org.uk>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 20 Jan 2021 17:07:44 +0000
Mark Brown <broonie@kernel.org> escreveu:

> On Wed, Jan 20, 2021 at 12:02:44AM +0100, Mauro Carvalho Chehab wrote:
> > Mark Brown <broonie@kernel.org> escreveu:  
> 
> > > Now that the driver has been converted to regmap these are just
> > > duplicates of the regmap helpers.  You may also be able to use them for
> > > the disable() and is_enabled() operations, I didn't confirm that that's
> > > OK with the device using multi-bit enable controls for some reason IIRC.  
> 
> > True.  
> 
> > In order to avoid re-submitting 21 patches, I sent such change as
> > patch 22/21 .  
> 
> Unfortunately I can't actually apply the regulator bits as things are as
> the MAINTAINERS changes are incremental against the prior patches in the
> series.  What's the plan for getting these merged?

I submitted the USB3 PHY patch series to Vinod on Jan, 19. There's also a 
second series with 3 dts patches, submitted to Rob on Jan, 15 which is
needed by the USB3 PHY dts file, but this doesn't affect the regulator
series. I'm currently waiting for review on such series.

In any case, just sent you a v5 of this patch series that doesn't depend
on the USB3 PHY related patches. As they'll be applied on a different
tree, it is expected a conflict at linux-next when both gets merged,
which will be trivial: the fix would be to simply remove all lines
from drivers/staging/hikey9xx/Makefile and 
drivers/staging/hikey9xx/Kconfig.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
