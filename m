Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4FE10E1FD
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Dec 2019 14:04:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23C3E85C37;
	Sun,  1 Dec 2019 13:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIlRiYMrCtAY; Sun,  1 Dec 2019 13:04:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0A1C685B25;
	Sun,  1 Dec 2019 13:04:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BD481BF2FB
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 13:04:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67C922001C
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 13:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WlWAqbcbcCCa for <devel@linuxdriverproject.org>;
 Sun,  1 Dec 2019 13:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E1532001A
 for <devel@driverdev.osuosl.org>; Sun,  1 Dec 2019 13:04:36 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e28so12602987ljo.9
 for <devel@driverdev.osuosl.org>; Sun, 01 Dec 2019 05:04:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6oQ9pFt2y/HOgvjM6zb3KOxNIUI97tDsrOEUXJyqzuE=;
 b=mXjlS70j5vJY9UTCoHkqwvI07Gd0cPVrEKfEOF3EJWjrkfTJx8/qShQshhaLi1ueyF
 PVIXz1gX3tMvKhErrMqJDEkToVFz1MaESX+mjmYMzUZqbwyp4sI4z1W3/isfHTdnY96d
 MCKbDLR5+6yncW28Hm1Kfdm7NZqgSnkuBCC8qyx418BvArWYpLtffePfzZ+CAf7MkD9g
 U5MACmvMLSfRenxuCgvX0bOw4oTCBcy4wYkNbJgh/YR5Wsvg0XuuNxxBfnjmcl2og1Kl
 tC5BV6mEowaqQs4i3J4rGdeZIB/XacYJOVOcVY3lGLu2So6Td4k9SpbPjq/gGDoRYnPD
 NZdw==
X-Gm-Message-State: APjAAAVoMJT5JyyT0RJ+/Xt2ifQBDjGTAG7N5wFP3LB2OgdKY/It0V0w
 8v5BUG/LqYZfXDOMGCPdefU=
X-Google-Smtp-Source: APXvYqx64w8NIjl4a4DfQBwm2fcHd47pW5Yqi0KA2o7sRCfSt6UeE4zBCgl7nEZxvAaO8yeXH9nhSQ==
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr30841886ljm.218.1575205474691; 
 Sun, 01 Dec 2019 05:04:34 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id n19sm12926938lfl.85.2019.12.01.05.04.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Dec 2019 05:04:33 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1ibOtx-0001z4-Vl; Sun, 01 Dec 2019 14:04:38 +0100
Date: Sun, 1 Dec 2019 14:04:37 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/4] staging: gigaset: fix general protection fault on
 probe
Message-ID: <20191201130437.GB23996@localhost>
References: <20191129101753.9721-2-johan@kernel.org>
 <20191201001505.964E72075A@mail.kernel.org>
 <7cfa2ada-d1ea-aafe-6ac1-f407e3bd558d@imap.cc>
 <20191201124156.GA3836284@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191201124156.GA3836284@kroah.com>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Johan Hovold <johan@kernel.org>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tilman Schmidt <tilman@imap.cc>,
 Hansjoerg Lipp <hjlipp@web.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 01, 2019 at 01:41:56PM +0100, Greg Kroah-Hartman wrote:
> On Sun, Dec 01, 2019 at 01:30:42PM +0100, Tilman Schmidt wrote:
> > Hi Johan,
> > 
> > this is probably caused by the move of the driver to staging in
> > kernel release 5.3 half a year ago. If you want your patches to
> > apply to pre-5.3 stable releases you'll have to submit a version
> > with the paths changed from drivers/staging/isdn/gigaset to
> > drivers/isdn/gigaset.
> 
> That's trivial for me to do when they get added to the stable tree(s),
> no need to worry about it.

I'll be sending a v2 of this series shortly. Somehow I managed to
overlook usb_endpoint_is_bulk_in() and friends so patch 4/4 should no
longer be needed either.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
