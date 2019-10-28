Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD12E7721
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 17:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 202D8838D9;
	Mon, 28 Oct 2019 16:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vzni4xoGAT0A; Mon, 28 Oct 2019 16:59:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82C6182383;
	Mon, 28 Oct 2019 16:59:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 079831BF20D
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 16:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82905810EA
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 16:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vbMx-dKXEV6y for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 16:59:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0FA8810F2
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 16:59:11 +0000 (UTC)
Received: from localhost (100.50.158.77.rev.sfr.net [77.158.50.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4911F208C0;
 Mon, 28 Oct 2019 16:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572281951;
 bh=UYouAhSgD6Ci8zsPE6rdCP7HF2cJHswezxxOQTzMf9k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yqs9XFdFAkSZIlT5PTS4XYl6FpeFgw1NlLwbUkgyqiDIRfL4FbaXiFLxBciPFCsEg
 QlPMhcoiXGwxlACI9zioIW/pJEICg79mqqsTLYbioElb2HIJt/VtjZFJdEpUPqVPLx
 hhKOQV6Pp764XR1ZfW3Tha9FZJzg3OGuyfe48B2E=
Date: Mon, 28 Oct 2019 17:59:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Davidlohr Bueso <dave@stgolabs.net>
Subject: Re: [PATCH] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Message-ID: <20191028165909.GA469472@kroah.com>
References: <20191027221530.12080-1-dave@stgolabs.net>
 <20191028155354.s3bgq2wazwlh32km@linux-p48b>
 <20191028162412.GA321492@kroah.com>
 <20191028163537.b2pspgdl6ceevcxv@linux-p48b>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028163537.b2pspgdl6ceevcxv@linux-p48b>
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, wahrenst@gmx.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 09:35:37AM -0700, Davidlohr Bueso wrote:
> On Mon, 28 Oct 2019, Greg KH wrote:
> > This is obviously not in a format I can apply it in :(
> 
> What are you talking about? I sent you the original patch,
> then Cc'ed the drivers mailing list. So you still have a
> patch you can apply... this is quite a common way of doing
> things (Ccing for future references to someone or another
> ml). I don't understand why you are hairsplitting over this
> patch.

I don't understand what is going on at all.  Is this patch already
applied?  If not, then yes, I need it in a format I can apply it in.  If
it's already applied to my tree/branch, then there's no need to send it
at all.

totally confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
