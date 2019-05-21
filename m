Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D982499D
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 10:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B199387765;
	Tue, 21 May 2019 08:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JUE833B7SzNu; Tue, 21 May 2019 08:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53F07873B6;
	Tue, 21 May 2019 08:00:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8229B1BF310
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6382287860
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 08:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sq1mjVYPD0Cp for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 08:00:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 101E886EB1
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 08:00:02 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58C292173C;
 Tue, 21 May 2019 08:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558425601;
 bh=TFwSkOxIndAaN2K59b4QOaMflwcLifnWjtAOfy4v02M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tvjY78tVwG1qYMv7nmPzcfXi0aXPxL8h8xXkTIWay8hGktjwxkS1kPEfKPcn71NLq
 VoldWl9MvRf6EwpqMUymIKoLveEntuFuZ+MeDQuFogzQ+J2T7KvgMJIVgmXseLzmxr
 7vP8zVBMU9+OIxUkh9nrBZyMTfK6xz0cU7Ej8OM8=
Date: Tue, 21 May 2019 09:59:59 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: TODO advice for octeon-usb?
Message-ID: <20190521075959.GA24848@kroah.com>
References: <20190520230532.GA3621@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520230532.GA3621@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 02:05:32AM +0300, Aaro Koskinen wrote:
> Hi,
> 
> I'm looking for input what should be done next to get
> drivers/staging/octeon-usb out of staging.
> 
> Thousands of checkpatch errors/warnings have been fixed (starting point
> was <https://marc.info/?l=linux-driver-devel&m=137028876225266&w=2>),
> also the size of the driver has shrunken considerably.
> 
> If there are still some other bigger issues with this driver, please
> let me know.

Submit it as a patch that just adds the files to the drivers/usb/host/
directory so we can review it on linux-usb@vger and if it gets accepted,
I can then drop it from the staging directory, or just move it over if
no changes are needed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
