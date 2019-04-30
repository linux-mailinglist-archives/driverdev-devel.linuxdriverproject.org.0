Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40011F963
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 15:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5E5A877E6;
	Tue, 30 Apr 2019 13:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z4O0RDpZ2a+r; Tue, 30 Apr 2019 13:00:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FADB84845;
	Tue, 30 Apr 2019 13:00:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11A0C1BF28F
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 13:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0670284F98
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 13:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4kMvUuYlIII for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 13:00:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.osadl.at (178.115.242.59.static.drei.at [178.115.242.59])
 by hemlock.osuosl.org (Postfix) with ESMTP id 289EB84845
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 13:00:02 +0000 (UTC)
Received: by mail.osadl.at (Postfix, from userid 1001)
 id D097A5C1015; Tue, 30 Apr 2019 14:59:09 +0200 (CEST)
Date: Tue, 30 Apr 2019 14:59:09 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: greybus: use proper return type for
 wait_for_completion_timeout
Message-ID: <20190430125909.GC26274@osadl.at>
References: <1556335645-7583-1-git-send-email-hofrat@osadl.org>
 <20190430095821.GD2269@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430095821.GD2269@kadam>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, David Lin <dtwlin@gmail.com>,
 greybus-dev@lists.linaro.org, Nicholas Mc Guire <hofrat@osadl.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 12:58:21PM +0300, Dan Carpenter wrote:
> On Sat, Apr 27, 2019 at 05:27:25AM +0200, Nicholas Mc Guire wrote:
> > wait_for_completion_timeout() returns unsigned long (0 on timeout or
> > remaining jiffies) not int. 
> > 
> 
> Yeah, but it's fine though because 10000 / 256 fits into int without a
> problem.
> 
> I'm not sure this sort of patch is worth it when it's just a style
> debate instead of a bugfix.  I'm a little bit torn about this.  In
> Smatch, I run into this issue one in a while where Smatch doesn't know
> if the timeout is less than int.  Right now I hacked the DB to say that
> these functions always return < INT_MAX.
> 
> Anyway, for sure the commit message should say that it's just a cleanup
> and not a bugfix.
>
I know its not a functional bug its "only" an API violation - the problem
is more that code is often cut&past and at some point it may be a 
problem or someoe expects a negative return value without that this evef
can occure.

But yes - the commit message should have stated that this non-conformance
in this case has no effect - will resend.

thx!
hofrat
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
