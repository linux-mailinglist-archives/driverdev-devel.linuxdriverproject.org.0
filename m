Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 706483124DC
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 15:55:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A0882042C;
	Sun,  7 Feb 2021 14:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ndBTZsWiO5HL; Sun,  7 Feb 2021 14:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35F4720468;
	Sun,  7 Feb 2021 14:55:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20D011BF3F4
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D40C86DD6
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oVlLTpaxif0g for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 14:55:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A64DC85C92
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 14:55:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B15FE64E42;
 Sun,  7 Feb 2021 14:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612709707;
 bh=Wt9cjdwSLRzxXcychd1Z79SJy+jAFVnftbg1gVSar24=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eCM83IFX2LU1xrujsZe/0UxiWeKrZFGJO39/E/FowxMbokxCGvRoEsp48HVLkQ59B
 oY59k2lTJHBVkWhoaFXpher3PEhkasmDar6RqHuJVp7FmKprsqhdxCte8sYTHIo15y
 xYNl+3o4JG8JROMXqYZDQ88EkcrDBKthiMKgFdTc=
Date: Sun, 7 Feb 2021 15:55:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: Re: [PATCH] staging: octeon: convert all uses of strlcpy to strscpy
 in ethernet-mdio.c
Message-ID: <YB//SDQJEsHwewFb@kroah.com>
References: <20210207144804.88330-1-phil@philpotter.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210207144804.88330-1-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, linux-kernel@vger.kernel.org,
 chris.packham@alliedtelesis.co.nz, alexander.sverdlin@nokia.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 02:48:04PM +0000, Phillip Potter wrote:
> Convert three calls to strlcpy inside the cvm_oct_get_drvinfo function
> to strscpy calls. Fixes a style warning.

Is it really safe to do this type of conversion here?  If so, you need
to provide evidence of it in the changelog, otherwise we could just do a
search/replace across the whole kernel and be done with it :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
