Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AB5FA9AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 06:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5FAF87447;
	Wed, 13 Nov 2019 05:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJWPcGaLwXlt; Wed, 13 Nov 2019 05:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CC3E86B92;
	Wed, 13 Nov 2019 05:33:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4691BF3CD
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 05:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 612F385EF1
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 05:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xf9HHm7a7TPY for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 05:33:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCAF285EC1
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 05:33:22 +0000 (UTC)
Received: from localhost (unknown [8.46.76.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22471222D0;
 Wed, 13 Nov 2019 05:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573623202;
 bh=cmVkkx8IxTndhMOx7kQdQT7/VHpxz5FOgRZiosp5KpE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x2fJUqoO6VCixekEkHmJiIDqmihNDm8EoYrKvk2KUevLEJ+GYIbx4rscedW6dW5qP
 8lfUs16NrIa1E8BGUief6py52rQmkjXwYwL0tV2E2cHqoQ7HEZT9XuECd2L4eYrv4Q
 MKrvNYM4kDXILdrhtNUsunpdBnwTk1KEgR7eoz2k=
Date: Wed, 13 Nov 2019 06:33:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] vboxsf: move out of staging to fs/
Message-ID: <20191113053311.GB2036664@kroah.com>
References: <20191110154303.GA2867499@kroah.com>
 <20191112063440.GA15951@infradead.org>
 <20191112065629.GA1242198@kroah.com>
 <20191112225427.GA1873491@kroah.com>
 <CAHk-=wiLZpyGyOcymND-Pk7_a_MXHZHJtsT9TryHmZBE7Babiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wiLZpyGyOcymND-Pk7_a_MXHZHJtsT9TryHmZBE7Babiw@mail.gmail.com>
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
Cc: Christoph Hellwig <hch@infradead.org>, Hans de Goede <hdegoede@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 12, 2019 at 03:12:53PM -0800, Linus Torvalds wrote:
> On Tue, Nov 12, 2019 at 2:54 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > Christoph, this is what you mean, right?  If so, I'll send this to Linus
> > later this week, or he can grab it right from this patch :)
> 
> No.
> 
> I was unhappy about a staging driver being added in rc7, but I went
> "whatever, it's Greg's garbage"
> 
> There is no way in hell I will take a new filesystem in rc8.
> 
> Would you take that into stable? No, you wouldn't. Then why is this
> being upstreamed now.
> 
> Honestly, I think I'll just delete the whole thing, since it shouldn't
> have gone in in the first place. This is not how we add new
> filesystems.

Fair enough, sorry for the noise.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
