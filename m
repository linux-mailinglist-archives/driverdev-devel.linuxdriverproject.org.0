Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3860DB5F4D
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 10:34:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1400E84E5A;
	Wed, 18 Sep 2019 08:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhlOk4GyUVHI; Wed, 18 Sep 2019 08:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B313845CB;
	Wed, 18 Sep 2019 08:34:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9E81BF48D
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 08:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38C1985BE4
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 08:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjFtgdZI9Rgd for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 08:33:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B517F851AA
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 08:33:22 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0600621907;
 Wed, 18 Sep 2019 08:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568795602;
 bh=NqU0W2Yzv3UbIZ/LoZ5afKn1xMHhi3IOmFcr8fQlT/E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0Bi1ciZS8CADVRReo5sJsAAq3cfNvE7TBoaPAUcDiz5vLuo5ufwdRY30aDUrPbKGB
 UKIetcpxGcOJ1IfpmBLOb8J5VqnbOSjPRkKFpfuB6e9Fh6OGgL1uE6aeeSwmhd1g2B
 k4IScLKYJHA5uV8wlAwGZfsHGokNYE/Y2pNxwcgY=
Date: Wed, 18 Sep 2019 10:26:58 +0200
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190918082658.GA1861850@kroah.com>
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918063304.GA8354@jagdpanzerIV>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>, sergey.senozhatsky@gmail.com,
 Namjae Jeon <namjae.jeon@samsung.com>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, 'Ju Hyung Park' <qkrwngud825@gmail.com>,
 linux-fsdevel@vger.kernel.org, sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 03:33:04PM +0900, Sergey Senozhatsky wrote:
> On (09/18/19 08:16), 'Greg KH' wrote:
> [..]
> > > Note, that Samsung is still improving sdfat driver. For instance,
> > > what will be realeased soon is sdfat v2.3.0, which will include support
> > > for "UtcOffset" of "File Directory Entry", in order to satisfy
> > > exFAT specification 7.4.
> >
> [..]
> > If Samsung wishes to use their sdfat codebase as the "seed" to work from
> > for this, please submit a patch adding the latest version to the kernel
> > tree and we can compare and work from there.
> 
> Isn't it what Ju Hyung did? He took sdfat codebase (the most recent
> among publicly available) as the seed, cleaned it up a bit and submitted
> as a patch.

He did?  I do not see a patch anywhere, what is the message-id of it?

> Well, technically, Valdis did the same, it's just he forked a slightly
> more outdated (and not anymore used by Samsung) codebase.

He took the "best known at the time" codebase, as we had nothing else to
work with.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
