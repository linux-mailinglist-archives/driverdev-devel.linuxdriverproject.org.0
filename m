Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C60B5BBF
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 08:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 676CD203F6;
	Wed, 18 Sep 2019 06:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZmIR9hdGWetQ; Wed, 18 Sep 2019 06:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4C104203DB;
	Wed, 18 Sep 2019 06:16:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F7511BF5F6
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C0D18523B
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSDO45sSkxWS for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 06:16:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1818A850DC
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:16:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7426720678;
 Wed, 18 Sep 2019 06:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568787405;
 bh=Yrmf/8Q3o0dao3sNh0zfCYToe0BxGZHFhPymplQQt+s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1qpbCEyJTkKm/RO046p3/FT3nK06iQwI4utc74tQk7NLDvxMdvZLnClPyyo8QzMJK
 AUUgSre9MPD4niFi+Nck1MUT/iMXtYgUWVK3Z/+CMcu1jos6ppVbsiYZqevZf4PKj+
 0/zmLhDf6kqERoF8UgLORf8BZU3wBDk1N97AKiFQ=
Date: Wed, 18 Sep 2019 08:16:42 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gregory Nowak <greg@gregn.net>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190918061642.GB1832786@kroah.com>
References: <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
 <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
 <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
 <20190916134727.4gi6rvz4sm6znrqc@function>
 <20190916141100.GA1595107@kroah.com>
 <20190916223848.GA8679@gregn.net>
 <20190917080118.GC2075173@kroah.com>
 <20190918010351.GA10455@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918010351.GA10455@gregn.net>
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
 okash.khawaja@gmail.com,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 17, 2019 at 06:03:53PM -0700, Gregory Nowak wrote:
> On Tue, Sep 17, 2019 at 10:01:18AM +0200, Greg Kroah-Hartman wrote:
> > On Mon, Sep 16, 2019 at 03:38:48PM -0700, Gregory Nowak wrote:
> > > On Mon, Sep 16, 2019 at 04:11:00PM +0200, Greg Kroah-Hartman wrote:
> > > > On Mon, Sep 16, 2019 at 03:47:28PM +0200, Samuel Thibault wrote:
> > > > > Okash Khawaja, le dim. 15 sept. 2019 19:41:30 +0100, a ecrit:
> > > > > > I have attached the descriptions.
> > > > > 
> > > > > Attachment is missing :)
> > > > 
> > > > I saw it :)
> > > > 
> > > > Anyway, please put the Description: lines without a blank after that,
> > > > with the description text starting on that same line.
> > > > 
> > > > thanks!
> > > > 
> > > > greg k-h
> > > 
> > > It's attached. Hope the indentation is OK.
> > 
> > Alignment is a bit off, you forgot a tab after "Description:"
> > 
> > And you have some trailing whitespace in the document :(
> > 
> > thanks,
> > 
> > greg k-h
> > 
> 
> I put in the tabs after "Description:" and did the best I could to fix
> the alignment, and to find and get rid of the white space. If the
> alignment is still off, or if there is still white space I missed,
> could someone else please correct that? Thanks.

Extra line between each attribute (before the "What:" line) would be
nice.

Also fixing the TODO items :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
