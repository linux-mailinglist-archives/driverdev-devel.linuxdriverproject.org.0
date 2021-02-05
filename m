Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1363107E5
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A5DE2E111;
	Fri,  5 Feb 2021 09:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5+atmePlj4mC; Fri,  5 Feb 2021 09:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C1217203B2;
	Fri,  5 Feb 2021 09:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D198A1BF383
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B589D2E0FD
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTPk+vK-wApi for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:32:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D0C820384
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:32:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5013864F4A;
 Fri,  5 Feb 2021 09:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612517527;
 bh=jgQzZhuJanUyFvcQr/pf0vZbG+herQxEJyaMFM6t8H8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YoOAO7Nhlr9nQ6q72H/0ZYP45xoHs91spyqIrqoJx6yr8RMyyZkym3Sy8guJI5k2D
 aU30TY9u/yc5Gmn9LJBIq4ygboX1AWUiL4CvTeSjYCz9HSbJj7sONQa30xbVEjqPHS
 chcauDLHwRzWhIeICuBFxV+Zjn6J0Rv39D0rwShg=
Date: Fri, 5 Feb 2021 10:32:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Mayank Suman <mayanksuman@live.com>
Subject: Re: [PATCH] staging: fbtft replaced udelay with usleep_range
Message-ID: <YB0QlMk4Gae1IGjd@kroah.com>
References: <PS1PR04MB29341C7117657B1F312444FBD6B29@PS1PR04MB2934.apcprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PS1PR04MB29341C7117657B1F312444FBD6B29@PS1PR04MB2934.apcprd04.prod.outlook.com>
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
Cc: devel@driverdev.osuosl.org, sfr@canb.auug.org.au,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 05, 2021 at 02:41:13PM +0530, Mayank Suman wrote:
> According to Documentation/timers/timers-howto.rst, usleep_range is
> preffered over udelay for >=10us delay.
> 
> Signed-off-by: Mayank Suman <mayanksuman@live.com>

ALWAYS test build your patches before sending them out to the world for
review.  You don't want to make maintainers grumpy by breaking the tree
with changes that can not compile, right?  :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
