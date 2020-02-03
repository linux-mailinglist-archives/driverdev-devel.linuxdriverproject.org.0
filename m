Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9887F15025D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 09:16:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 605EA877B1;
	Mon,  3 Feb 2020 08:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VmS9IWyxt4Ix; Mon,  3 Feb 2020 08:16:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CD7287598;
	Mon,  3 Feb 2020 08:16:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6AE1BF354
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 08:16:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47B1885C98
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 08:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5SLLTBAFMp6 for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 08:16:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BAF6585C28
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 08:16:01 +0000 (UTC)
Received: from localhost (unknown [83.216.75.91])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 088BF2070A;
 Mon,  3 Feb 2020 08:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580717761;
 bh=rG8mHjMai7mwuySARFt6RxcCm4lcKPvI6i8XuZ6E/jA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YvGR5Tw1EXbAf1mwCNUwPXgDJibXQp71boP4fREe/GT+59ybJcCGQxBe+RO/IKKr8
 xPTS9pxxHqIOYConRhoTdXEoXDk6ZLttkIi51HqVqiDIz9H0yEeG/1TVZehbgNNiZ+
 NTHbHIpWmRzpnJJmzYdnLaE719iqK3XB18u6fZdY=
Date: Mon, 3 Feb 2020 08:15:59 +0000
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 1/2] staging: exfat: remove DOSNAMEs.
Message-ID: <20200203081559.GA3038628@kroah.com>
References: <20200203163118.31332-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200203080532.GF8731@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203080532.GF8731@bombadil.infradead.org>
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
Cc: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>,
 devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 03, 2020 at 12:05:32AM -0800, Matthew Wilcox wrote:
> On Tue, Feb 04, 2020 at 01:31:17AM +0900, Tetsuhiro Kohada wrote:
> > remove 'dos_name','ShortName' and related definitions.
> > 
> > 'dos_name' and 'ShortName' are definitions before VFAT.
> > These are never used in exFAT.
> 
> Why are we still seeing patches for the exfat in staging?

Because people like doing cleanup patches :)

> Why are people not working on the Samsung code base?

They are, see the patches on the list, hopefully they get merged after
-rc1 is out.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
