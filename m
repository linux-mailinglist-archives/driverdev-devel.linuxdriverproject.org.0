Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E74C02B5980
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 07:00:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 715F020422;
	Tue, 17 Nov 2020 06:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBI-Iey-BJHV; Tue, 17 Nov 2020 06:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10AA820418;
	Tue, 17 Nov 2020 06:00:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD711BF391
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 06:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1884486710
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 06:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pa6WIVQTqJE1 for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 06:00:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85CE184EED
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 06:00:22 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CFBA2463D;
 Tue, 17 Nov 2020 06:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605592822;
 bh=kMZHHDjUySEDPq//3kNlI7T93WIhbBIN2atyzZGyvCQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zysQwQBimXuItd8u21k5FOxtsiJdZS6mXAmejoNwT5Wt2xa9l2WtL58E1moVM+7so
 wnxOxR0fjfe4YQggrNyjidRkxuavJ4clgCEY7YfqcAa2KGkOVafalFgMeyc8UHV5SQ
 iIG0oqnfs0rehyB6cesSVFlFL4LiEyWUDvI6NBnM=
Date: Tue, 17 Nov 2020 07:01:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Emmanouil Perselis <perselis.e@gmail.com>
Subject: Re: [PATCH] Fix warning for static const char * array in
 audio_manager_module.c
Message-ID: <X7NnJqKKvK1JfEHG@kroah.com>
References: <66314332-e66d-9b34-52f9-ae005df2be15@ieee.org>
 <20201116204322.2122-1-perselis.e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201116204322.2122-1-perselis.e@gmail.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vaibhav.sr@gmail.com,
 linux-kernel@vger.kernel.org, mgreer@animalcreek.com, johan@kernel.org,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 16, 2020 at 09:43:23PM +0100, Emmanouil Perselis wrote:
> On 11/15/20 9:17 AM, Greg Kroah-Hartman wrote:
> > On Sun, Nov 15, 2020 at 03:53:16PM +0100, Emmanouil Perselis wrote:
> >> This patch fixes the warning "static const char * array should
> >> probably be static const char * const" in
> >> drivers/staging/greybus/audio_manager_module.c
> 
> >> I think Greg's patch bot is telling you that you need
> >> to carbon-copy the mailing list on your patch submission,
> >> not just address it to the maintainers.
> 
> Added addresses to carbon copy.

Do you think this is the correct way to submit a patch that doesn't have
to be hand-edited in order to apply it?

Please make it match other submitted patches, but most importantly,
actually test-build your changes to ensure that they are correct.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
