Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F98319C52
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 11:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E4C186BAE;
	Fri, 12 Feb 2021 10:05:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfJ6kjWzkFiF; Fri, 12 Feb 2021 10:05:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD4D486A0F;
	Fri, 12 Feb 2021 10:05:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 783E41BF2FE
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 10:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73DAF8743A
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 10:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jiABZf7vLBYn for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 10:05:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0688B8719E
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 10:05:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B0F664E6C;
 Fri, 12 Feb 2021 10:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613124346;
 bh=6bki0Au+K2JaECcmUHQQU+dhCdZZhRL3yqcY8rcUtsE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b0iX8pRA6j+ZQ5YeUbwZ2KbYkIJHl4IsI2y/6G4MIDpQtX4GkbCWnnFeRwu8VYubV
 a7KWhIlPzqXtFlsYCce6DGBV+Apj7QKhUiWN+M3s+WDSgAdsDbN58E+yHmcOgBovET
 /C9tfDteHrNwrWy3357JirJUhBmuga2l7c75T6Jg0xAz5EW7SymWUqqZOAIMkZzVnh
 YMOKZPlDbnbGcyGxyuppbAyj32CGqV1sOSXq26Zn4trOTxfScP/9mFj/PsOksYIGYB
 vG2P9nqZeMKcW8430de2uMcc3Hl3s1+YqBXr0QCGHGuGVetWgJqtckpI+93iuEXNDR
 DXyRPqEC0xGOA==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1lAVKs-0002VJ-Ec; Fri, 12 Feb 2021 11:06:02 +0100
Date: Fri, 12 Feb 2021 11:06:02 +0100
From: Johan Hovold <johan@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <YCZTCs7MU2J4F2/r@hovoldconsulting.com>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
 <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
 <YCZHsMPgyqtRMTII@kroah.com>
 <20210212092130.cxo6tuess6msf4kb@vireshk-i7>
 <YCZPzV7KiT/y//m2@hovoldconsulting.com>
 <20210212095529.2nsjc5wacegnd757@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212095529.2nsjc5wacegnd757@vireshk-i7>
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, elder@kernel.org, vireshk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 03:25:29PM +0530, Viresh Kumar wrote:
> On 12-02-21, 10:52, Johan Hovold wrote:
> > But what will the checkpatch crew then work on?
> 
> Lol..
> 
> > Better staging than the rest of the kernel.
> 
> [ /me wondering on who stops them from sending patches for rest of the
> kernel ? ]

Ideally maintainers should at least push back when they do.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
