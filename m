Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBA22914A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:50:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BE3D4318EF;
	Fri, 24 May 2019 06:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Lwsq+f0Xczz; Fri, 24 May 2019 06:50:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EE0A22661;
	Fri, 24 May 2019 06:50:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20D941BF3C6
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:50:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1DE0A87F81
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:50:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbXplwfOoaTl for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:50:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0513A87F79
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:50:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F56120868;
 Fri, 24 May 2019 06:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558680608;
 bh=WV44JEQSQ0CuYg1kG7RwIo8UhJkCJkDk7xaiwRIEI3E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UCehN0Dk0j9fxhNuxue/OmsgtXGIH9p+dKXCsa9l1VkfZP+uaHy/KM854gtcXxCuz
 Vkh5813EEqS9BPBlGs7BhN7y5J5fD9ttHfML7rj5/5pNnqRPWjoL2vutp+cBYolfny
 rNRIvnZ3XOA2oZ+kRplCd91/x2fAuoobaLB+DWRk=
Date: Fri, 24 May 2019 08:50:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH v2] staging: kpc2000: Add dependency on MFD_CORE to
 kconfig symbol 'KPC2000'
Message-ID: <20190524065006.GB3194@kroah.com>
References: <20190523053643.GA14465@kroah.com>
 <20190524023639.6773-1-gneukum1@gmail.com>
 <CA+T6rvH0M2jy_FscF4RMseBKDpLMG8yukzzLjZuys_LY4SbOGA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+T6rvH0M2jy_FscF4RMseBKDpLMG8yukzzLjZuys_LY4SbOGA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 03:02:48AM +0000, Geordan Neukum wrote:
> On Fri, May 24, 2019 at 2:38 AM Geordan Neukum <gneukum1@gmail.com> wrote:
> > +       depends on MFD_CORE
> 
> In order for this to work in menuconfig, this either needs to be a
> select or I need to
> add a prompt to MFD_CORE. I don't have strong feelings either way, but all other
> Kconfig options which are related to the MFD_CORE appear to do a straight
> selection. Let me know what you think and I'll go that route.

Yeah, you are right, sorry about that.  Let me just go hand edit-this
patch and queue it up as this was my fault...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
