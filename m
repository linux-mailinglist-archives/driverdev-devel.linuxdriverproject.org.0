Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437D71463C1
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 09:45:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC9FE8829A;
	Thu, 23 Jan 2020 08:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id te0lOBWKnU6w; Thu, 23 Jan 2020 08:45:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF63687525;
	Thu, 23 Jan 2020 08:45:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 937701BF3F9
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 08:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8FDDA87120
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 08:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjACAMi3vc7G for <devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 08:45:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F118987048
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 08:45:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4883C2073A;
 Thu, 23 Jan 2020 08:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579769101;
 bh=WGwiLbw2RYeEBF4QqvP2f4Ql8aF8IMEbAzwfkCSdVNM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hx5NbUOphlTzFbzH/H3hS9BXrleVrdJQsHQ/lsEJiJX3HegGPHrhR7oTRh9iFo6Oi
 COXZ00HEFJooejGvMOEjIx+NTnqA3uQguK4Rva3cqt8B7y9BXPe5L2l4bQ+ZqjlZt0
 GqneE37efKf36SkZ3WPk/RnuIy7Iv75BvJJ6c348=
Date: Thu, 23 Jan 2020 09:44:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH v2] staging: exfat: remove fs_func struct.
Message-ID: <20200123084459.GA434861@kroah.com>
References: <20200123083258.118854-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123083258.118854-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 23, 2020 at 05:32:58PM +0900, Tetsuhiro Kohada wrote:
> From: "Tetsuhiro Kohada" <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> 
> Remove 'fs_func struct' and change indirect calls to direct calls.
> 
> The following issues are described in exfat's TODO.
> > Create helper function for exfat_set_entry_time () and
> > exfat_set_entry_type () because it's sort of ugly to be calling the same functionn directly and other code calling through  the fs_func struc ponters ...
> 
> The fs_func struct was used for switching the helper functions of fat16/fat32/exfat.
> Now, it has lost the role of switching, just making the code less readable.
> 
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> ---
>  drivers/staging/exfat/exfat.h       |  79 +++++-----
>  drivers/staging/exfat/exfat_core.c  | 214 +++++++++++-----------------
>  drivers/staging/exfat/exfat_super.c | 119 ++++++++--------
>  3 files changed, 178 insertions(+), 234 deletions(-)

What changed from v1?

Always put that below the --- line, as the documentation asks you to, so
that we know what is happening here.

Please fix that up and send a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
