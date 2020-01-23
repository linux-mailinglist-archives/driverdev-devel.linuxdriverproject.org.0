Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE438147099
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 19:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B82E0221D9;
	Thu, 23 Jan 2020 18:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hc87LfyCJ4MC; Thu, 23 Jan 2020 18:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35DC422274;
	Thu, 23 Jan 2020 18:18:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AB511BF31A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 18:18:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0498D86B70
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 18:18:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BpzkGSi_yi0e
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 18:18:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31C3986B63
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 18:18:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7729122522;
 Thu, 23 Jan 2020 18:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579803519;
 bh=ykeWht3fPPsuTW5zYWFphWkIqpomvZvnddwXq9mqcHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WX2ar8HG7EUJw/I8XLoAhZUjNE93Hi56Dpw0avAPr7oDI+n2Ppk0Bkx4PdjmqrigZ
 eA1V0yjAMQ7rT9lHnXXn3eDfCCL6/N+5OkWDBzONbyhia1B/WTvTyQ4NmgPrfeCP7Q
 sEtdcO505wI+ApetJawPpJiU3gXV4djPBlnoiqls=
Date: Thu, 23 Jan 2020 19:18:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Message-ID: <20200123181837.GA1927902@kroah.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
 <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
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

On Thu, Jan 23, 2020 at 04:38:17PM +0100, Christian Gromm wrote:
> This patch makes the adapter drivers use their own device structures
> when registering a most interface with the core module.
> With this the module that actually operates the physical device is the
> owner of the device.

Ick, why?  The interface should be part of sysfs, right, and now it
isn't?  Who handles the lifetime rules of these interfaces now?  Why
remove this?

Why isn't the interface dynamically created properly?  That should solve
the lifetime rules here, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
