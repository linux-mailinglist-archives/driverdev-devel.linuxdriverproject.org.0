Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C20B46A7
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 06:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D6DE879F5;
	Tue, 17 Sep 2019 04:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BTnwcT+U+SKn; Tue, 17 Sep 2019 04:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 264C1878A5;
	Tue, 17 Sep 2019 04:56:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FD061BF317
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 04:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 69C0E87918
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 04:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IVEqIVuG3-ok for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 04:56:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E7A2878A5
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 04:56:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F490216C8;
 Tue, 17 Sep 2019 04:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568696204;
 bh=Deta3mLDOjrS9MA60qe/1+TynhvYp3GzPvxWWxB81ZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BrxoadVByuVpgM40BAinFxCJkZ6eNEBhWtJ1X/FBcFtfRuOaHFxqD8UOlzzsySvee
 Ur++qDaVoLWg9Rv/AzTPiXIKDmmtFzs44ba/4vGgYgYkNPEXPUFOt1tk1wp+jIZjHm
 o762u14M0QLQ19CCnKYc3R7QGjXqqHJu3I4elIn0=
Date: Tue, 17 Sep 2019 06:56:40 +0200
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Namjae Jeon <namjae.jeon@samsung.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190917045640.GA2055638@kroah.com>
References: <CGME20190917025738epcas1p1f1dd21ca50df2392b0f84f0340d82bcd@epcas1p1.samsung.com>
 <003601d56d03$aa04fa00$fe0eee00$@samsung.com>
 <003701d56d04$470def50$d529cdf0$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <003701d56d04$470def50$d529cdf0$@samsung.com>
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
Cc: devel@driverdev.osuosl.org, Namjae Jeon <linkinjeon@gmail.com>,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 17, 2019 at 12:02:01PM +0900, Namjae Jeon wrote:
> We are excited to see this happening and would like to state that we appreciate
> time and
> effort which people put into upstreaming exfat. Thank you!
> 
> However, if possible, can we step back a little bit and re-consider it? We
> would prefer to see upstream the code which we are currently using in
> our products - sdfat - as this can be mutually benefitial from various
> points of view.

What is "different" in it from the code that is currently in linux-next?
What is supported "better"?  The code we have today seems to work for
people, so what are we missing here?

Also, submitting patches for this codebase to bring it up to the level
of functionality you need would be wonderful, can you do that?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
