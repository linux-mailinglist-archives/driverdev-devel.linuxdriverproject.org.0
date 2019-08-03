Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 121BF80495
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 08:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BC9486969;
	Sat,  3 Aug 2019 06:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 05UxwNxyd_QI; Sat,  3 Aug 2019 06:05:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2CFF186920;
	Sat,  3 Aug 2019 06:05:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82A3C1BF401
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:05:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D1EF86920
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 06:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id roh-0DocCT5o for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 06:05:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F8E88691C
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 06:05:32 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l2so68204367wmg.0
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 23:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rNjsuP0ZjDp9jnRQNucz2c5yrrLQk2HCJuqAw6zZVeM=;
 b=LVh4eCRnc+8XPVEiLWCyMApcVszjz2OaYV8RYm0L7XWc3HjY9IwIwOyJEVNiDLIVtM
 MIl9CYrEs3SxyB3KwyjiPhYG2BfGpQKw4BvOODGx2egaLIAawt8MKY/WKTtyo2m0M7U0
 iq3aFs8wi/HbWP6rfo4Vqsq2V+y4bGiW++1SbHvXLb0P/7GAQoMCMIVjXMOi0c6HZKR0
 TdVGbN1fu6rDGl7J3REDkP5glgHsQIg2J/5Q2EMGeZKu/TPKOn5kT1dhZdv/Y/Z2mzgn
 gv1jhd504dTix0h/CwyzkgZmmoKebRS1vMJfNUv3rfkYs44Yry2s3o4KT9jU96OBdLIv
 PDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rNjsuP0ZjDp9jnRQNucz2c5yrrLQk2HCJuqAw6zZVeM=;
 b=oHemoma3OHKwnsjV7eyxWB8jWA1D0BdjIsvqrtSexdpiwtmo1aznmCZ+92mZ5scJPd
 HcQGM9zEnVTdZgIl6rB32lY0baWUUeUx/QIL0yvKXQUNZBEdhLPdZIiYx2g4K47YWPOR
 ZYRGpHAWKspk1gVgTg713TExEYmVt+fpKFjoFueIy5NpTGH+hHhCj7IWFr9c/Mmsf/Il
 /HXkJTdM54GKblZXPhw39ptLCNJQEJarcN9F3bywuUZ2tO44IQmRdL2keSh26m7MqLdN
 HO80wRbY0GgbCaZ1A7zJduh7ZhXvf0gm98m8OOsRtuGsLvXgsAX8byVdDesd+Msj3mrN
 iLIg==
X-Gm-Message-State: APjAAAW1ORkVv+wwy+dIfgS86nROyjLPljOA7xLM/ILZLgOnPmjEn6d2
 xwGEBZEiF9Jrwlnr8utZpnM=
X-Google-Smtp-Source: APXvYqz36zGRvW+EA5Q16NvmRTURlwWo6t5ErfVh/qGFKq4wC1cYjfYdUWL01hQeI+UTjypAPLkC/A==
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr7689994wmg.152.1564812330438; 
 Fri, 02 Aug 2019 23:05:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id r123sm73514728wme.7.2019.08.02.23.05.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 23:05:29 -0700 (PDT)
Date: Fri, 2 Aug 2019 23:05:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH] net: mdio-octeon: Fix build error and Kconfig warning
Message-ID: <20190803060528.GA89737@archlinux-threadripper>
References: <20190731.094150.851749535529247096.davem@davemloft.net>
 <20190731185023.20954-1-natechancellor@gmail.com>
 <20190802.181132.1425585873361511856.davem@davemloft.net>
 <20190803013031.GA76252@archlinux-threadripper>
 <20190803013952.GF5597@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803013952.GF5597@bombadil.infradead.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, gregkh@linuxfoundation.org,
 broonie@kernel.org, linux-next@vger.kernel.org, netdev@vger.kernel.org,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 02, 2019 at 06:39:52PM -0700, Matthew Wilcox wrote:
> On Fri, Aug 02, 2019 at 06:30:31PM -0700, Nathan Chancellor wrote:
> > On Fri, Aug 02, 2019 at 06:11:32PM -0700, David Miller wrote:
> > > The proper way to fix this is to include either
> > > 
> > > 	linux/io-64-nonatomic-hi-lo.h
> > > 
> > > or
> > > 
> > > 	linux/io-64-nonatomic-lo-hi.h
> > > 
> > > whichever is appropriate.
> > 
> > Hmmmm, is that not what I did?
> > 
> > Although I did not know about io-64-nonatomic-hi-lo.h. What is the
> > difference and which one is needed here?
> 
> Whether you write the high or low 32 bits first.  For this, it doesn't
> matter, since the compiled driver will never be run on real hardware.

That's what I figured. I have only seen lo-hi used personally, which is
what I went with here. Thanks for the confirmation!

> 
> > There is apparently another failure when OF_MDIO is not set, I guess I
> > can try to look into that as well and respin into a series if
> > necessary.
> 
> Thanks for taking care of that!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
