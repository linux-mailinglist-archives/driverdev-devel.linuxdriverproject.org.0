Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AF1B8BBA
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 09:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C97384A0D;
	Fri, 20 Sep 2019 07:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XTgnYXCyRo95; Fri, 20 Sep 2019 07:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FD57844C9;
	Fri, 20 Sep 2019 07:46:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 321EE1BF3D4
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 07:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EFFD86B17
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 07:46:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJzHmYqaSP9Q for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 07:46:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B99FD86B11
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 07:46:14 +0000 (UTC)
Received: from localhost (unknown [89.205.140.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDC6F2054F;
 Fri, 20 Sep 2019 07:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568965574;
 bh=1yZ0DYSLh5xqAj+fIasPisqFTh/IWQdz6nmgz7HE5EA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P31Qlo4gk7+HByBoI78w0V5DQl5SxrCwc6l7P5lLN6+n2vTplKynBMFkBQddGveup
 lWrlCn9QH8uFozfKqY86Z069nY3e3NlXvqtjS6msuEZVMfRDUeGgFxchMKtirA2df9
 K6Qz7cph8oqRc/puWtBc73kMw2TEJaBn0ZhtJwWQ=
Date: Fri, 20 Sep 2019 09:46:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gregory Nowak <greg@gregn.net>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190920074611.GB518462@kroah.com>
References: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
 <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
 <20190916134727.4gi6rvz4sm6znrqc@function>
 <20190916141100.GA1595107@kroah.com>
 <20190916223848.GA8679@gregn.net>
 <20190917080118.GC2075173@kroah.com>
 <20190918010351.GA10455@gregn.net>
 <20190918061642.GB1832786@kroah.com>
 <20190918203032.GA3987@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918203032.GA3987@gregn.net>
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
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 okash.khawaja@gmail.com, Didier Spaier <didier@slint.fr>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 01:30:33PM -0700, Gregory Nowak wrote:
> > Extra line between each attribute (before the "What:" line) would be
> > nice.
> 
> In a previous post above, you wrote:
> On Mon, Sep 16, 2019 at 04:11:00PM +0200, Greg Kroah-Hartman wrote:
> > Anyway, please put the Description: lines without a blank after that,
> > with the description text starting on that same line.
> 
> I understood that to mean that the description text should start on
> the same line, and the blank lines after the description text should
> be removed. I've put them back in. Someone more familiar with the
> speakup code will have to dig into it to resolve the TODO items I
> suppose.

No problem, this looks good to me.  If someone wants to turn this into a
patch adding it to the drivers/staging/speakup/ directory, I'll be glad
to take it and it will allow others to fill in the TODO entries easier.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
