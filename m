Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B79B1793D2
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 16:44:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6A3F86061;
	Wed,  4 Mar 2020 15:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fJULnUpr+QE0; Wed,  4 Mar 2020 15:44:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B633182462;
	Wed,  4 Mar 2020 15:44:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F55C1BF83B
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 15:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4C12E87ABF
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 15:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gXrdKZyRT9mh for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 15:44:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD20787AA1
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 15:44:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24C5D2166E;
 Wed,  4 Mar 2020 15:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583336655;
 bh=z1VXR49TU2jEisQHdemESEry9T1v6Xn80PnEDn16EB8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TPbKJ1BeOt1vDP21LVx3cpaqIiQ5ufldGudnjxJ9cRaoRe/9YBXARjwUJR/Brdcnk
 /rRwqvmOZ1VPO9wHc8y4Yl2aKKt2WupbgVlZMSqmmVJdPwsH8/CDAwINWcFR4yJB3R
 0MbeqdrE4mBN8i9/58bxjeS0vuSuBkdwJGFKBdao=
Date: Wed, 4 Mar 2020 16:44:12 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: "Stahl, Manuel" <manuel.stahl@iis-extern.fraunhofer.de>
Subject: Re: [PATCH 2/2] uio: Prefer MSI(X) interrupts in PCI drivers
Message-ID: <20200304154412.GA1761004@kroah.com>
References: <1507296707.2915.14.camel@iis-extern.fraunhofer.de>
 <1507296804.2915.16.camel@iis-extern.fraunhofer.de>
 <20171006134550.GA1626@kroah.com>
 <1507297826.2915.18.camel@iis-extern.fraunhofer.de>
 <20171006075700.587a5e22@xeon-e3> <20171020125044.GA8634@kroah.com>
 <1508504312.3128.23.camel@iis-extern.fraunhofer.de>
 <9ba3cdd6d330486a91cb5c376f012b5b963c4eae.camel@iis-extern.fraunhofer.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ba3cdd6d330486a91cb5c376f012b5b963c4eae.camel@iis-extern.fraunhofer.de>
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
Cc: "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "hjk@linutronix.de" <hjk@linutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sojkam1@fel.cvut.cz" <sojkam1@fel.cvut.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 04, 2020 at 03:19:55PM +0000, Stahl, Manuel wrote:
> Hi Greg,
> 
> so somehow this discussion stopped without any instructions how to proceed.

What is "this discussion"?

> I think this kind of driver helps every FPGA developer to interface
> his design via PCIe to a Linux PC.
> So if there is any chance to get this code merged, I'm glad to rebase
> this onto the latest kernel release.

Please rebase and resubmit, it's a patch from 2 1/2 years ago, not much
I can even remember about patch sets sent last week...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
