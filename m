Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B26792287F0
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jul 2020 20:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2371C226D4;
	Tue, 21 Jul 2020 18:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ayj4RjZVK+yB; Tue, 21 Jul 2020 18:05:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 460A0220D6;
	Tue, 21 Jul 2020 18:05:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3B41BF366
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 32A0B20435
 for <devel@linuxdriverproject.org>; Tue, 21 Jul 2020 18:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iGS0oWE9txdg for <devel@linuxdriverproject.org>;
 Tue, 21 Jul 2020 18:05:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id F38172041C
 for <devel@driverdev.osuosl.org>; Tue, 21 Jul 2020 18:05:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4205A2065E;
 Tue, 21 Jul 2020 18:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595354725;
 bh=fFsrRvH6vH90vdqejl6Cyc8tBtcvlT1snsAV4a+o0rM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FtpWLPjn+JQObz9ugegf6tcM50qAU1HAcPmzy4EVU8EYHDLicODPpckceOBxdl0Y9
 hfOLfdOvOs9jw2kdhaUGRwdcmoloK4XSn9Rwh2J83Vv3a24I0UP86td8PyJSxzWBKP
 ZKxO57v6/EOda134+CIY+cZMwsf1AT6m4UtDwrFg=
Date: Tue, 21 Jul 2020 20:05:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rahul Gottipati <rahul.blr97@gmail.com>
Subject: Re: [PATCH] staging: gs_fpgaboot: get bus width input
Message-ID: <20200721180533.GA2570082@kroah.com>
References: <20200721180203.GA16154@rahulg-ThinkPad-T450>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721180203.GA16154@rahulg-ThinkPad-T450>
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
Cc: devel@driverdev.osuosl.org, insop.song@gainspeed.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 21, 2020 at 11:32:03PM +0530, Rahul Gottipati wrote:
> This adds a module parameter to get the program bus width as an
> input rather than hardcoding it, and checks off a TODO item.

Ick, no, module parameters are from the 1990's, please make this dynamic
somehow.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
