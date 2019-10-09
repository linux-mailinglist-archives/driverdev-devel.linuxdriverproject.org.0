Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0E4D0C6C
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 12:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E52FE868C4;
	Wed,  9 Oct 2019 10:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JBguNx6kQ1o; Wed,  9 Oct 2019 10:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA3E286892;
	Wed,  9 Oct 2019 10:17:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B38FE1BF3C6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB1108809E
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QtR4iMZySZqn for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 10:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E11B58807B
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 10:17:27 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b9so2177762wrs.0
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 03:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rjaYpkcdgVq1Ytww3HoMud9TI2f6caXQj6YPGdN+e0k=;
 b=aelG5uB3AoOyuYYLVuEOd6mTjlOgUG3CjynlOPLQq2P72KPv8JIXV+BBqk0FZtKrKK
 FJy9iIwkfpxYYI32HGbmOY8RqnHVS4ZbM/fWfl9gRQmuAACBkeZoQOA/UKwYqigOUzCC
 vAxZw0dhn6LMFiismlHuDTJEYMo4cD1gCAQdunMdLsx+jiIfL1vevEqbe1KkL8xhU+AF
 euv6cfD+QeAKZnCrHYU6c1cQMp19hFwJ0kHJV53qtRh7fxQNHZxIcJada7WoMVInCUHH
 nziY97TNDM9GL625orHdpEP1XbUZPMV2hc98H1DFkIeYRiFMnrybkIkMr3vlzK25kKa8
 tZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rjaYpkcdgVq1Ytww3HoMud9TI2f6caXQj6YPGdN+e0k=;
 b=cTQC3FzS5o8JibW5CBqBQCJzAIjyzFcGcBH4mw02ehZL82ULOx4YEXzwqFvM+3jhNX
 3fI21qvvBsF9kNfD8Jf2JE27WMCyzJIjmgiLuD//E1fnbKGrG98blrKr5KIenBKjtmGf
 2QyYA0NfsKsvfpdLZ5JQ659Q/exmf1mullz2HlcSZP5bhRqH/4FYLtD5a6IadxFcIFwX
 Lg1KZctga8q0UnapWt4LQN8zwnO2p81F6xNZra3NXLq7r/WV2y8mGjGHAPld5I0AjqE0
 Kh9dohZamVPziTUTMQr6j6KQh+vtWYE9e6My8wub1yzXRpt0RLq1Rh8Vy7qRrAvrGpdb
 Fdhw==
X-Gm-Message-State: APjAAAVNYODmzBwpcKyeGH9cm4i1pJ0treBxhOErJvs7kgmSuyVsRbO3
 HQfbUMFG3isKMx5LdOHt8rc=
X-Google-Smtp-Source: APXvYqzQReCxE67VrpcC+uJwGYwSVOvO7oEJ3cvsFoI8C7MbuuFXycy49ZeIN5ZdITK9ljRbXcNnmA==
X-Received: by 2002:adf:e3cc:: with SMTP id k12mr2266353wrm.176.1570616246460; 
 Wed, 09 Oct 2019 03:17:26 -0700 (PDT)
Received: from AlexGordeev-DPT-VI0092 ([213.86.25.14])
 by smtp.gmail.com with ESMTPSA id g3sm2561692wro.14.2019.10.09.03.17.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 09 Oct 2019 03:17:25 -0700 (PDT)
Date: Wed, 9 Oct 2019 12:17:24 +0200
From: Alexander Gordeev <a.gordeev.box@gmail.com>
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH RFC 0/2] staging: Support Avalon-MM DMA Interface for PCIe
Message-ID: <20191009101720.GA15462@AlexGordeev-DPT-VI0092>
References: <cover.1568817357.git.a.gordeev.box@gmail.com>
 <20190919113708.GA3153236@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919113708.GA3153236@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Michael Chen <micchen@altera.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 01:37:08PM +0200, Greg KH wrote:
> Why is this being submitted for drivers/staging/ and not the "real" part
> of the kernel tree?

Hi Greg!

I sent v2 of the patchset, but it does not need to be part of the
staging tree. I CC-ed devel@driverdev.osuosl.org for reference.

Thanks!

> All staging code must have a TODO file listing what needs to be done in
> order to get it out of staging, and be self-contained (i.e. no files
> include/linux/)
> 
> Please fix that up when resending this series.
> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
