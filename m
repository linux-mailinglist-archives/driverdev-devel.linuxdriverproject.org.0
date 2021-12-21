Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A26747BDE5
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Dec 2021 11:08:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C414E60E9C;
	Tue, 21 Dec 2021 10:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4pdWszroSurC; Tue, 21 Dec 2021 10:08:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23D4F60E79;
	Tue, 21 Dec 2021 10:08:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E12DE1BF5F6
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 10:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD5644057F
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 10:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWSU0-UFt7Y3 for <devel@linuxdriverproject.org>;
 Tue, 21 Dec 2021 10:08:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 76C234016B
 for <devel@driverdev.osuosl.org>; Tue, 21 Dec 2021 10:08:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 753E0B815AD;
 Tue, 21 Dec 2021 10:08:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABF4FC36AE7;
 Tue, 21 Dec 2021 10:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1640081294;
 bh=8AahsyAAdbIIs+LjbWgpR4ejk9iJEuNEWcPUIzojxBM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z20uJ1tMGoHzR+wy8jlwrdVumtQs6mhmN7asH7LPz70xQwichsTexF+7oKVHL91mB
 wfvnlul/SYAVtRnWtOmEOUyfdbYTtMU1MK96Qs+u5AHpyMlmx6K7X6i7YCNKXbYooI
 VuLNCWG+Z9QtdMVdlB1Jto3yqTdyO3+U0QJFd28U=
Date: Tue, 21 Dec 2021 11:08:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: fix async_free_space accounting for empty parcels
Message-ID: <YcGnizJKAQ9pxGBY@kroah.com>
References: <20211220190150.2107077-1-tkjos@google.com>
 <CAHRSSExTHHOdqEnRF0g435BrO5L-X6M3pxPg3OmLz8xUWDuNKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHRSSExTHHOdqEnRF0g435BrO5L-X6M3pxPg3OmLz8xUWDuNKA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 stable <stable@vger.kernel.org>, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 20, 2021 at 11:06:09AM -0800, Todd Kjos wrote:
> On Mon, Dec 20, 2021 at 11:02 AM Todd Kjos <tkjos@google.com> wrote:
> >
> > In 4.13, commit 74310e06be4d ("android: binder: Move buffer out of area shared with user space")
> > fixed a kernel structure visibility issue. As part of that patch,
> > sizeof(void *) was used as the buffer size for 0-length data payloads so
> > the driver could detect abusive clients sending 0-length asynchronous
> > transactions to a server by enforcing limits on async_free_size.
> >
> > Unfortunately, on the "free" side, the accounting of async_free_space
> > did not add the sizeof(void *) back. The result was that up to 8-bytes of
> > async_free_space were leaked on every async transaction of 8-bytes or
> > less.  These small transactions are uncommon, so this accounting issue
> > has gone undetected for several years.
> >
> > The fix is to use "buffer_size" (the allocated buffer size) instead of
> > "size" (the logical buffer size) when updating the async_free_space
> > during the free operation. These are the same except for this
> > corner case of asynchronous transactions with payloads < 8 bytes.
> >
> > Fixes: 74310e06be4d ("android: binder: Move buffer out of area shared with user space")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> 
> I forgot to CC stable. This applies to all stable branches back to 4.14.
> Cc: stable@vger.kernel.org # 4.14+

Thanks, I've added that to the patch when committing it.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
