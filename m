Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFC02D17C5
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 18:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1EAF2E261;
	Mon,  7 Dec 2020 17:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pl-gw-AUJhO7; Mon,  7 Dec 2020 17:48:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74B522E208;
	Mon,  7 Dec 2020 17:48:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB1C1BF951
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 17:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1CD62868D1
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 17:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rjRoxDasubEJ for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 17:48:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF646868CB
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 17:48:40 +0000 (UTC)
Date: Mon, 7 Dec 2020 18:49:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607363320;
 bh=E6mQRdkp4M9fKASCllFzqjafRLchQrIO/lAn7I8I8Qs=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=AWa5bCU92omcGjb6o+l36xUfPHMUxRL91GnXwojMI3rcICUVM+L7J2n/9UwHuMn5T
 j1B2iX6Nynpk0qz8cEdIpsmq/r84hFNXJOJhcgulXJJXEB/KH3mVxeGsn/cZUMOSRj
 F6DON1WUfnYx6SyTgSj00V5m4IqSjHRhg1PXJ2gY=
From: Greg KH <gregkh@linuxfoundation.org>
To: Ferdinand Schober <ferdinand.schober@fau.de>
Subject: Re: [PATCH] staging: ks7010: Enclose macros in parentheses
Message-ID: <X85rPlW6Z9s7DCQy@kroah.com>
References: <20201207165646.8306-1-ferdinand.schober@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201207165646.8306-1-ferdinand.schober@fau.de>
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
Cc: devel@driverdev.osuosl.org, Philipp Bruegmann <philipp.bruegmann@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 07, 2020 at 05:56:46PM +0100, Ferdinand Schober wrote:
> Enclose macros in parentheses to ensure correct casting behaviour as
> suggested by checkpatch.

checkpatch is wrong here :)

always use your brain when making changes like this, checkpatch is just
a perl script, and while it is quite smart, it does have limitations.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
