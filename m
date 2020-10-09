Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88253288996
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 15:09:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CB428771B;
	Fri,  9 Oct 2020 13:09:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3MYMRP7kPx9; Fri,  9 Oct 2020 13:09:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 261F3876BB;
	Fri,  9 Oct 2020 13:09:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 372511BF282
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 13:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 339F786F8E
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 13:09:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2cGUeISGXkz for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 13:09:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E63DA86F78
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 13:09:08 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 014CE22248;
 Fri,  9 Oct 2020 13:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602248948;
 bh=ejH4/M/EizUhjeSZw6xoFj4GATeaO+40kyLfg+D7Q8o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=khDhoIxbNGatlrsao6AvN/CZSy94L5RPyguYmbW2i4V7GQ+5pyepbcw15TmnRBwMh
 2w5MkONXZXBC12hMx0tSMdh0oK+FRRlOPi87OnaWhnPKCmdFTtPl3VDFeSfVIzFtDd
 S+6HoarwfUbtZKoMpAFwzSUv69iywjMeQ5kQuSIk=
Date: Fri, 9 Oct 2020 15:09:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander A Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH] staging: octeon: repair "fixed-link" support
Message-ID: <20201009130954.GA538323@kroah.com>
References: <20201009094739.5411-1-alexander.sverdlin@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009094739.5411-1-alexander.sverdlin@nokia.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Ralf Baechle <ralf@linux-mips.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 09, 2020 at 11:47:39AM +0200, Alexander A Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> 
> The PHYs must be registered once in device probe function, not in device
> open callback because it's only possible to register them once.
> 
> Fixes: a25e278020 ("staging: octeon: support fixed-link phys")
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>

Looks like it breaks the build, please fix up and test your patches when
sending them out next time.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
