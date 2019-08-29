Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAAAA11EB
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 08:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A67D88628;
	Thu, 29 Aug 2019 06:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vPMxeGkGCLi; Thu, 29 Aug 2019 06:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5732885B4;
	Thu, 29 Aug 2019 06:42:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29C651BF2B6
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 06:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25388885B4
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 06:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KEJ1PctlIVCD for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 06:42:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C3F9B88586
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 06:42:31 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EC402073F;
 Thu, 29 Aug 2019 06:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567060951;
 bh=LUI4hV71RkxJNICcSpNRgTs4BSj0yh0DSutBWm6dN1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ksQxfqbw0Qo5gH5tpCVTsvpYOcGOlvDWxehZBThWuSiefXxTar0I7MZfPHpewu5fq
 5HagXVeJ4iJsob7R+YXSyr9j9HAA/E5hM0M17kEIpMQWS3PSsMWj5eU3wgihlj4HlC
 MvOqqkqQ4t/ie5gl/iy8jF3gbMWm5siOcwBeUlkQ=
Date: Thu, 29 Aug 2019 08:42:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Peikan Tsai <peikantsai@gmail.com>
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190829064229.GA30423@kroah.com>
References: <20190829054953.GA18328@mark-All-Series>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829054953.GA18328@mark-All-Series>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 01:49:53PM +0800, Peikan Tsai wrote:
> Hi,

No need for that in a changelog text :)

> The allocated size for each binder_thread is 512 bytes by kzalloc.
> Because the size of binder_thread is fixed and it's only 304 bytes.
> It will save 208 bytes per binder_thread when use create a kmem_cache
> for the binder_thread.

Are you _sure_ it really will save that much memory?  You want to do
allocations based on a nice alignment for lots of good reasons,
especially for something that needs quick accesses.

Did you test your change on a system that relies on binder and find any
speed improvement or decrease, and any actual memory savings?

If so, can you post your results?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
