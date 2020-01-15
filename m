Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A963213C09C
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:20:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63D6285F75;
	Wed, 15 Jan 2020 12:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iqVkGHjuxkCa; Wed, 15 Jan 2020 12:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A08E85FA3;
	Wed, 15 Jan 2020 12:20:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 559331BF5A0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E32787A6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94HMmsaJw3sE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:20:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 49B7A87A77
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:20:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8083F222C3;
 Wed, 15 Jan 2020 12:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579090815;
 bh=36E6V2V3kWe9Ye4OSFzWT4uw1UXgi4nOEFnG1MljaEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0G7leo01VfVsTAsOWfZ0LtidfCDJI1EhVU0prloK0k6sxnYeHD33K+9eL1/WY0ny2
 bYCsIyuNWsTx+7sKodprMZ/1QrISInn82cBq+fFK6WYsiJCqEHHmSLNNhhSBQJ9qPR
 lOM21OVuno58lZWQUcwbi0fZCfQGj5ivwjXbO6Pc=
Date: Wed, 15 Jan 2020 13:20:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC v3 0/9] staging: most: move core module out of staging
Message-ID: <20200115122012.GD3394319@kroah.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 14, 2020 at 04:57:49PM +0100, Christian Gromm wrote:
> The MOST driver was pushed to the staging area with kernel 4.3. Since then
> it has encountered many refinements by the community and should be ready
> for an upstream audit and to be moved out of the staging area. Since the
> driver consists of multiple modules the core module is about to go first
> and the other modules will follow subsequently. This patchset executes the
> necessary steps to move the core module out of staging.
> 
> v2:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 	- use -M option to create patches
> v3:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 	- fix date range in comment section of core.c
> 	- move code to free up memory to release funtions
> 	- remove noisy log messages
> 	- use dev_* functions for logging

I applied the first 3 patches in this series, and commented on a few
others that I wouldn't take.  Please work on that, rebase, and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
