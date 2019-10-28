Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AABF9E7550
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8335285ADB;
	Mon, 28 Oct 2019 15:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YI9fUHRMV06u; Mon, 28 Oct 2019 15:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C7B883E0F;
	Mon, 28 Oct 2019 15:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 449201BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3ABB1853C5
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pg47Qs-BfDaB for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:37:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 844E483E0F
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:37:06 +0000 (UTC)
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1B3520578;
 Mon, 28 Oct 2019 15:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572277026;
 bh=g38VoI5LJrASchwjNi5RYmGYL3WYNwPkOBYh7bPUb0k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t5r3BrfQocbPBwDmaCn9MKFT3W2EIB4MOStdx0SbBZnhjQxU2GHUBKULWWAFmWjsh
 NsF0fy2NObcHK1HCgor/E5h9mWr0eI4WSNx9MgbyTbULxXNR1uC6AWntxV4/xcPwpE
 GeK6HaAVVJyabCZHsCWszG3TW3RY04zrY8bpkhJQ=
Date: Mon, 28 Oct 2019 16:37:04 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Message-ID: <20191028153704.GA134005@kroah.com>
References: <20191027221530.12080-1-dave@stgolabs.net>
 <576df522-f012-9dd1-9dcc-b7e444e82ac6@gmx.net>
 <20191028152108.bjliafudxn3llysv@linux-p48b>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028152108.bjliafudxn3llysv@linux-p48b>
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net,
 Stefan Wahren <wahrenst@gmx.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 08:21:08AM -0700, Davidlohr Bueso wrote:
> On Mon, 28 Oct 2019, Stefan Wahren wrote:
> 
> > Hi Davidlohr,
> > 
> > Am 27.10.19 um 23:15 schrieb Davidlohr Bueso:
> > > There seems no need to be using a semaphore, or a sleeping lock
> > > in the first place: critical region is extremely short, does not
> > > call into any blocking calls and furthermore lock and unlocking
> > > operations occur in the same context.
> > > 
> > > Get rid of another semaphore user by replacing it with a spinlock.
> > > 
> > > Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
> > > ---
> > > This is in an effort to further reduce semaphore users in the kernel.
> > > 
> > thanks for this. Could please also send this to devel@driverdev.osuosl.org?
> 
> Ccing.

I don't see a patch here :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
