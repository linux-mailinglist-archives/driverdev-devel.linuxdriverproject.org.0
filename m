Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C6810E1EC
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Dec 2019 13:42:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E7EC86CC5;
	Sun,  1 Dec 2019 12:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0DbqCAMplRs; Sun,  1 Dec 2019 12:42:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AC2786CC0;
	Sun,  1 Dec 2019 12:42:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 278271BF397
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 12:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20FA285A4E
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 12:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W+0Ryq4+LwVF for <devel@linuxdriverproject.org>;
 Sun,  1 Dec 2019 12:42:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EFFB584F80
 for <devel@driverdev.osuosl.org>; Sun,  1 Dec 2019 12:41:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 476F22146E;
 Sun,  1 Dec 2019 12:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575204119;
 bh=dw6QpCyxo08pa16wmHwJITs72I9cNl+h81Yux79GtZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RGhlo6wOYelehatHS7M0YI5DZHI8G54FjilkggAQIhqC29J1HvwkJlY5QytQgj+5v
 t+wckkcRKhfctneWtoasxCr/y0uQ460Cx2lyOQdMKhkFuRtoTW6XlhfeD99NxBBZhk
 pssikJYaOlUHIlGU2NdDKBTkdNl3Zh9p/+grINU4=
Date: Sun, 1 Dec 2019 13:41:56 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tilman Schmidt <tilman@imap.cc>
Subject: Re: [PATCH 1/4] staging: gigaset: fix general protection fault on
 probe
Message-ID: <20191201124156.GA3836284@kroah.com>
References: <20191129101753.9721-2-johan@kernel.org>
 <20191201001505.964E72075A@mail.kernel.org>
 <7cfa2ada-d1ea-aafe-6ac1-f407e3bd558d@imap.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cfa2ada-d1ea-aafe-6ac1-f407e3bd558d@imap.cc>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Johan Hovold <johan@kernel.org>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hansjoerg Lipp <hjlipp@web.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 01, 2019 at 01:30:42PM +0100, Tilman Schmidt wrote:
> Hi Johan,
> 
> this is probably caused by the move of the driver to staging in
> kernel release 5.3 half a year ago. If you want your patches to
> apply to pre-5.3 stable releases you'll have to submit a version
> with the paths changed from drivers/staging/isdn/gigaset to
> drivers/isdn/gigaset.

That's trivial for me to do when they get added to the stable tree(s),
no need to worry about it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
