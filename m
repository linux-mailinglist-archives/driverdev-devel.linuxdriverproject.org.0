Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D925FBBCC
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Oct 2022 22:06:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEBE960FC1;
	Tue, 11 Oct 2022 20:06:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEBE960FC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKw1z-A3E67m; Tue, 11 Oct 2022 20:06:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76E0660BC6;
	Tue, 11 Oct 2022 20:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76E0660BC6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 04B0D1BF365
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 20:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E14FA81443
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 20:05:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E14FA81443
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PA4rWEkFGNMb for <devel@linuxdriverproject.org>;
 Tue, 11 Oct 2022 20:05:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6B6F8142A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6B6F8142A
 for <devel@linuxdriverproject.org>; Tue, 11 Oct 2022 20:05:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D3204612B9;
 Tue, 11 Oct 2022 20:05:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E962BC433D6;
 Tue, 11 Oct 2022 20:05:54 +0000 (UTC)
Date: Tue, 11 Oct 2022 21:54:24 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: Re: Missing patch for Partial crash when loading driver rtl8192e
Message-ID: <Y0XJ8El2jdZsVvxi@kroah.com>
References: <13a3f198-2ed1-df35-844d-9f7465de9f0c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13a3f198-2ed1-df35-844d-9f7465de9f0c@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1665518755;
 bh=/e8XvDH1UC5P+g33HZZvY0vKZgtqFhPRf22XN1G4fOQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dp56UPIrNAAZLhopyeFYq/3pQrOnEVtknekc0VQ1QBEu/iT8pOcx+vMa31w3xSyvG
 a3lMrUDxrgiTvRG6zmbgQwkz4SJ7S/8rYMBVEgEW1Hh35/mM1zILpIq5vZy6tfMvIu
 VTgqiqUYSh1AWYZfA9rphxINxnzwc/fBRYxTz+S0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=dp56UPIr
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
Cc: devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 11, 2022 at 09:43:46PM +0200, Philipp Hortmann wrote:
> Hi,
> 
> yesterday I did a git pull.
> 
> when I tried to load the driver rtl8192e I had the below partial crash.
> 
> I was able to fix it with this patch:
> 
> https://lore.kernel.org/netdev/20220926233458.5316-1-yin31149@gmail.com/
> 
> Thanks for your support.
> 
> Bye Philipp
> 
> 
> This has worked before. But now I get this in my dmesg
> [  224.792852] ------------[ cut here ]------------
> [  224.792856] memcpy: detected field-spanning write (size 8) of single
> field "&compat_event->pointer" at net/wireless/wext-core.c:623 (size 4)

Turn this option off, or apply the above patch :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
