Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FF033A1BC
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 23:42:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82A4F4D4E0;
	Sat, 13 Mar 2021 22:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UWh5xByzRx81; Sat, 13 Mar 2021 22:42:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 511A94A5F2;
	Sat, 13 Mar 2021 22:42:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40CD21BF418
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 22:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E8C140102
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 22:42:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ar7qNlCRAVad for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 22:42:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF5DB400F2
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 22:42:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25FC964ECC;
 Sat, 13 Mar 2021 22:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615675331;
 bh=BpMQLkhOmUy9SuPUTQ7hdseZoFh1p1xwYMwTVxtiVtI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZpAusPkbRx8QGatD97kpvnhS7XxMqDjJXgdo/JHnKhAL59Kt4+WDCZkDAKwXrsXob
 blrsFnPPEqN+C07H+9YycmXNmkOc2jrzBJsiMvfp+WIyJtSkjePryxWlXcBE0neC1l
 BHLL+dJwMRatmrxNteHqT2ELcYrUslNwpoBRdh6DecFILzaeRRG0tauWGnn7fHC6OY
 oQY2XDnmh+w8LNDialk+NEksEJBTuqtldLqjCmmsPMExaeMuniC6P6wlvMjeJnvb34
 P+xWTvvxBZG0nHxakbT1VBaBWtfVecwprnBuIBJl4K1puS78LHPLsURF7xkdiYUO2b
 Qo8xG10L0ZfQA==
Date: Sat, 13 Mar 2021 15:42:05 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH] staging: andriod: ashmem: Declared file operation with
 const keyword
Message-ID: <20210313224205.ubnwecxyyas5qtvk@archlinux-ax161>
References: <20210313172636.18234-1-namrata.janawade@gmail.com>
 <CAAhDqq31B6ZJmmrUeqTD7u9znrCNScc37SBR_4N=DBthu3iajA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhDqq31B6ZJmmrUeqTD7u9znrCNScc37SBR_4N=DBthu3iajA@mail.gmail.com>
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
Cc: namratajanawade <namrata.janawade@gmail.com>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, anupamakpatil123@gmail.com,
 LKML <linux-kernel@vger.kernel.org>, Suren Baghdasaryan <surenb@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 13, 2021 at 10:59:43PM +0530, B K Karthik wrote:
> On Sat, Mar 13, 2021 at 10:57 PM namratajanawade
> <namrata.janawade@gmail.com> wrote:
> >
> > Warning found by checkpatch.pl script.
> 
> That doesn't tell what you did or why you did it. Please write an
> appropriate commit description and resend the patch.
> 
> karthik

This patch will not even build, it has been sent several times before...

https://lore.kernel.org/r/20201016051111.1947-1-kirank.suren@gmail.com/
https://lore.kernel.org/r/20200328151523.17516-1-sandeshkenjanaashok@gmail.com/
https://lore.kernel.org/r/20201128121627.GA27317@worker-node1/
https://lore.kernel.org/r/20201227112645.256943-1-senguptaangshuman17@gmail.com/
https://lore.kernel.org/r/20201228051301.14983-1-jovin555@gmail.com/
https://lore.kernel.org/r/20210214023136.8916-1-thaiscamachoo@gmail.com/
https://lore.kernel.org/r/20210219101338.2670-1-amritkhera98@gmail.com/
https://lore.kernel.org/r/20210306063817.674041-1-nabil.ibn.mahmud@gmail.com/

I once considered adding a comment above it saying that it should not be
marked const but it is a good benchmark for seeing if people compile
their patches before sending them out.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
