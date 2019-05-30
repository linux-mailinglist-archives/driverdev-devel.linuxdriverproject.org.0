Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5199E3041C
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11745877AB;
	Thu, 30 May 2019 21:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2KmIOnCxnA3; Thu, 30 May 2019 21:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96714877B3;
	Thu, 30 May 2019 21:25:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 951FE1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9200586A88
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o04ogvf-m5mR for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:25:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16D4685D72
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:25:20 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D466D261CE;
 Thu, 30 May 2019 21:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559251519;
 bh=8MgfUmuzxK42VbrpBBlF+a1Qa90gCAfIPee+BPMwH0g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bTrx5JrjxtNwuKsaVAT9K/1RrgMVFBIenItMO5BOMSzvJU9P1CAz/WBuRx5AfdZSH
 wX2LpcE0cIxf5inzF8M5ObUtMjHuoydajrV41G7huwSI/xBHKSHQdXe4/ftXs/i1p0
 Kn5DQsClgmyWtlFYfFBX3OpkCZRX9udwzlWgOQ3c=
Date: Thu, 30 May 2019 14:25:19 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: media: davinci_vpfe: Remove variable vpfe_dev
Message-ID: <20190530212519.GB18779@kroah.com>
References: <20190530204718.29892-1-nishkadg.linux@gmail.com>
 <20190530205540.GA5308@kroah.com>
 <9b870baa-4d15-cb72-0579-6bb6ca57cadd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b870baa-4d15-cb72-0579-6bb6ca57cadd@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, code@wizofe.uk, linux-kernel@vger.kernel.org,
 hans.verkuil@cisco.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:39:23AM +0530, Nishka Dasgupta wrote:
> On 31/05/19 2:25 AM, Greg KH wrote:
> > On Fri, May 31, 2019 at 02:17:18AM +0530, Nishka Dasgupta wrote:
> > > Remove variable vpfe_dev and replace it with its value (since the
> > > function otherwise uses values directly instead of local variables).
> > 
> > This says _what_ you do.  But we can see that in the patch itself.
> > 
> > You need to say _why_ you are doing this.
> > 
> > There's no need for this change at all.  Again, as I have said before,
> > we write code for developers to read first, the compiler second.  By
> > making these types of changes you are making it harder to
> > read/understand by a developer, and providing absolutely no benifit to
> > the compiler at all.
> > 
> > So it's actually making the code worse!
> > 
> > not good at all.
> > 
> > Please reconsider this type of change, as I keep asking you to.
> 
> Okay. In this case I thought it wouldn't make it worse since the function is
> low on local variables anyway? Clearly I was wrong, so I won't count this
> case as an exception in future.

Did you check the object file output to verify this?  Try it and see :)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
