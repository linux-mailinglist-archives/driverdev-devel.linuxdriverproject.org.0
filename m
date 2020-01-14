Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EF713AD87
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:23:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05DCF8601E;
	Tue, 14 Jan 2020 15:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBBMM6K+U75p; Tue, 14 Jan 2020 15:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1065F85629;
	Tue, 14 Jan 2020 15:22:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1594B1BF574
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 15:22:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0FB7184ADE
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 15:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EqfFZoT70Rq9 for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:22:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 29689820C9
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 15:22:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C73E2467D;
 Tue, 14 Jan 2020 15:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579015372;
 bh=9ONsXseL7vnPhow6rBf8Rwy7QYNR2g1suzafCfQHXSk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XkObdN6QZyL7qMxqhY0CAJQQ0sjY3N8DpwRxUhEzAeC7xnJ3/Iug79uQYo3uwuU2F
 ogbuVetlDLA9ETMJDdIEW15hjtaUpveO5gU2AkrPMIAtSFZQV0xcfV5k0D+TnjJay5
 w4tfgTsqJb8Rc02Ry5a8qZSK7Y8zwKKeTusf244A=
Date: Tue, 14 Jan 2020 16:22:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Martin Fuzzey <martin.fuzzey@flowbird.group>
Subject: Re: [PATCH] binder: fix log spam for existing debugfs file creation.
Message-ID: <20200114152249.GA2041689@kroah.com>
References: <1578671054-5982-1-git-send-email-martin.fuzzey@flowbird.group>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578671054-5982-1-git-send-email-martin.fuzzey@flowbird.group>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 10, 2020 at 04:44:01PM +0100, Martin Fuzzey wrote:
> Since commit 43e23b6c0b01 ("debugfs: log errors when something goes wrong")
> debugfs logs attempts to create existing files.
> 
> However binder attempts to create multiple debugfs files with
> the same name when a single PID has multiple contexts, this leads
> to log spamming during an Android boot (17 such messages during
> boot on my system).
> 
> Fix this by checking if we already know the PID and only create
> the debugfs entry for the first context per PID.
> 
> Do the same thing for binderfs for symmetry.
> 
> Signed-off-by: Martin Fuzzey <martin.fuzzey@flowbird.group>

Does this need a "Fixes:" and cc: stable tag?

And it would be good to get a review from the binder maintainer(s) to
see if this is sane or not...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
