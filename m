Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F5DF3222
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 16:09:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EB5A85951;
	Thu,  7 Nov 2019 15:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYmeCnNHxn1w; Thu,  7 Nov 2019 15:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36E6481E25;
	Thu,  7 Nov 2019 15:09:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F11F1BF340
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 593D785B8D
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 15:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRr5Gkf3JScF for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 15:09:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC5FB85692
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 15:09:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F10C21D6C;
 Thu,  7 Nov 2019 15:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573139358;
 bh=/h8t53roPI/rD/uP7zadW263zkJUzQG8YPGxa8rn2JI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=anqJp2lFyBxbvu8u/SzWDi+z7rQPRJQwmfoN3ZvB1yBHZlHf/veVg86iN31mSKYuB
 1GmDwTCnA4w1Kmh2z/lX0ctooio9LzAt5PXLqDIsS5HfAuDzEf0pw/hyIRYKhOqqBX
 fkYSi6kOVliw/u1hUYNM7KgrrhU1cWIwT9vjKbKE=
Date: Thu, 7 Nov 2019 16:09:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] staging: gasket: gasket_ioctl: Remove unnecessary
 line-breaks in funtion signature
Message-ID: <20191107150916.GB154681@kroah.com>
References: <20191106180821.GA19385@hwsrv-485799.hostwindsdns.com>
 <e3ee9e75d7c25e2d25b74fd1d4709f8dacb79efc.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3ee9e75d7c25e2d25b74fd1d4709f8dacb79efc.camel@perches.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, John Joseph <jnjoseph@google.com>,
 linux-kernel@vger.kernel.org, Simon Que <sque@chromium.org>,
 rspringer@google.com, Valery Ivanov <ivalery111@gmail.com>,
 toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 06, 2019 at 11:12:09AM -0800, Joe Perches wrote:
> On Wed, 2019-11-06 at 18:08 +0000, Valery Ivanov wrote:
> > 	This patch fix the function signature for trace_gasket_ioctl_page_table_data
> > 	to avoid the checkpatch.pl warning:
> > 
> > 		CHECK: Lines should not end with a '('
> > 
> > Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
> 
> All of this stuff is no-op and could just as easily be removed
> completely as GASKET_KERNEL_TRACE_SUPPORT is not #defined anywhere.
> 
> Is the actual trace #include file supposed to be available somewhere?
> 
> #ifdef GASKET_KERNEL_TRACE_SUPPORT
> #define CREATE_TRACE_POINTS
> #include <trace/events/gasket_ioctl.h>
> #else
> #define trace_gasket_ioctl_entry(x, ...)
> #define trace_gasket_ioctl_exit(x)
> #define trace_gasket_ioctl_integer_data(x)
> #define trace_gasket_ioctl_eventfd_data(x, ...)
> #define trace_gasket_ioctl_page_table_data(x, ...)
> #define trace_gasket_ioctl_config_coherent_allocator(x, ...)
> #endif
> 
> trace file not found...

I'm thinking the whole gasket driver should be deleted as there has not
been any effort done to fix it up and get it out of staging.  I'll give
it until 5.5 before I drop it...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
