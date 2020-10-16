Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFD128FFF5
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Oct 2020 10:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9829D2E70F;
	Fri, 16 Oct 2020 08:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IuC3XvHnKllL; Fri, 16 Oct 2020 08:29:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F9432E697;
	Fri, 16 Oct 2020 08:29:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF0B51BF327
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 08:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E911488127
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 08:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOXiTrrWKx7j for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 08:29:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D9E488123
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 08:29:14 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 557D720848;
 Fri, 16 Oct 2020 08:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602836954;
 bh=gfZRHfiV80AkMKP13njGzfHmEMvVJhxSpHJPlsKp1c0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M99FiJnEjdsc3CNdrjTG2ze4YE+/WGGIya7iMnIJ2VJM/C48P8VP8gGVqGmjMQLgI
 7qJdGyKvgKAmGLUAhXsyRdkeTUX4EybvdBq0WNvZQFpQsEexH8YzwD7Ha5pbTjcA5s
 /JpgKN2bLBqm0vwfX6OownE57unxVBFlCa2ng6Rc=
Date: Fri, 16 Oct 2020 10:29:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Laura Abbott <laura@labbott.name>
Subject: Re: [PATCH] staging: ion: remove from the tree
Message-ID: <20201016082945.GA1722359@kroah.com>
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 kernel-team@android.com, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>, john.stultz@linaro.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Shuah Khan <shuah@kernel.org>, sumit.semwal@linaro.org,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 27, 2020 at 09:31:27AM -0400, Laura Abbott wrote:
> On 8/27/20 8:36 AM, Greg Kroah-Hartman wrote:
> > The ION android code has long been marked to be removed, now that we
> > dma-buf support merged into the real part of the kernel.
> > =

> > It was thought that we could wait to remove the ion kernel at a later
> > time, but as the out-of-tree Android fork of the ion code has diverged
> > quite a bit, and any Android device using the ion interface uses that
> > forked version and not this in-tree version, the in-tree copy of the
> > code is abandonded and not used by anyone.
> > =

> > Combine this abandoned codebase with the need to make changes to it in
> > order to keep the kernel building properly, which then causes merge
> > issues when merging those changes into the out-of-tree Android code, and
> > you end up with two different groups of people (the in-kernel-tree
> > developers, and the Android kernel developers) who are both annoyed at
> > the current situation.  Because of this problem, just drop the in-kernel
> > copy of the ion code now, as it's not used, and is only causing problems
> > for everyone involved.
> > =

> > Cc: "Arve Hj=F8nnev=E5g" <arve@android.com>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: Christian Brauner <christian@brauner.io>
> > Cc: Christoph Hellwig <hch@infradead.org>
> > Cc: Hridya Valsaraju <hridya@google.com>
> > Cc: Joel Fernandes <joel@joelfernandes.org>
> > Cc: John Stultz <john.stultz@linaro.org>
> > Cc: Laura Abbott <laura@labbott.name>
> > Cc: Martijn Coenen <maco@android.com>
> > Cc: Shuah Khan <shuah@kernel.org>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: Suren Baghdasaryan <surenb@google.com>
> > Cc: Todd Kjos <tkjos@android.com>
> > Cc: devel@driverdev.osuosl.org
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: linaro-mm-sig@lists.linaro.org
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> =

> We discussed this at the Android MC on Monday and the plan was to
> remove it after the next LTS release.

As 5.10 will be the next LTS release, I have now merged it to my
"testing" branch to go into 5.11-rc1.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
