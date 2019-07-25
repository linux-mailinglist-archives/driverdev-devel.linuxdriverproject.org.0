Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2B174798
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 08:59:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10E1088046;
	Thu, 25 Jul 2019 06:59:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRYGPr-NH-Dy; Thu, 25 Jul 2019 06:59:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 270A487FC9;
	Thu, 25 Jul 2019 06:59:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BFCFC1BF20B
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 06:59:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B74C422011
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 06:59:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dGCJsvD6LXIO for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 06:59:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 63AAF2043B
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 06:59:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEF2D2081B;
 Thu, 25 Jul 2019 06:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564037968;
 bh=miIwFhrxJf4kZI85IfYksV/RrRk2DPZY6j8Ex6+Uzn4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uW5Nu8Ujalj/79GTY/S3WuLs2rVZRW4mYAaQ6Axl2pPqkDMMI5a8lhq4m1l3FRHPO
 n14nrtLICUWIUC3pcLtsV5iGGXHYpxMLLj9iWqjU+m9MeNwhpJ70N682RYKbsLhvgb
 rRkRfDCFSOFgHi/RDgA4WjIYGTpsuIG6nBZMeDTA=
Date: Thu, 25 Jul 2019 08:33:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Willem van der Walt <wvdwalt@csir.co.za>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190725063330.GA6723@kroah.com>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot>
 <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <alpine.DEB.2.21.1.1907250724490.6623@willempc.meraka.csir.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1.1907250724490.6623@willempc.meraka.csir.co.za>
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Christopher Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 08:11:04AM +0200, Willem van der Walt wrote:
> Hi,
> I have added a few things inline in Greg's message, mainly regarding the
> bleeps and cursor_time.

This is a great start, can someone turn this into the correct format
that we need for Documentation/ABI/ ?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
