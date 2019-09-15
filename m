Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D5BB3051
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Sep 2019 15:43:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0764587158;
	Sun, 15 Sep 2019 13:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cq6TWj95rut2; Sun, 15 Sep 2019 13:43:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61D0985A1D;
	Sun, 15 Sep 2019 13:43:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A31D61BF3A6
 for <devel@linuxdriverproject.org>; Sun, 15 Sep 2019 13:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9728E816E6
 for <devel@linuxdriverproject.org>; Sun, 15 Sep 2019 13:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6KhGk+F3MkcM for <devel@linuxdriverproject.org>;
 Sun, 15 Sep 2019 13:43:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 458B6815F4
 for <devel@driverdev.osuosl.org>; Sun, 15 Sep 2019 13:43:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89E34214DA;
 Sun, 15 Sep 2019 13:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568554983;
 bh=K2IkYFtvJjpi7oAgR3T2CvTC1SYGP8XAj1GcMabF28c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mjBmx+26gUMDBXZWv2skoKgp7iiWBOHv14UDOZX7DUqFOvkPHe5wavy0w0JI4V8De
 jGMTZLlqE2zhaHaN2vCw/7WJwcKO7RPz+wLb5IgWNQv/22Xn4Mf6J2pCkTMsO9sCQV
 BDKTELwulVTLE269VOpIvSP+NBTnLF6nOAlLapAw=
Date: Sun, 15 Sep 2019 15:43:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Okash Khawaja <okash.khawaja@gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
Message-ID: <20190915134300.GA552892@kroah.com>
References: <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
 <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
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
 Gregory Nowak <greg@gregn.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 14, 2019 at 10:08:35PM +0100, Okash Khawaja wrote:
> On Mon, Sep 9, 2019 at 3:55 AM Gregory Nowak <greg@gregn.net> wrote:
> >
> > On Sun, Sep 08, 2019 at 10:43:02AM +0100, Okash Khawaja wrote:
> > > Sorry, I have only now got round to working on this. It's not complete
> > > yet but I have assimilated the feedback and converted subjective
> > > phrases, like "I think..." into objective statements or put them in
> > > TODO: so that someone else may verify. I have attached it to this
> > > email.
> >
> > I think bleeps needs a TODO, since we don't know what values it accepts, or
> > what difference those values make. Also, to keep things uniform, we
> > should replace my "don't know" for trigger_time with a TODO. Looks
> > good to me otherwise. Thanks.
> 
> Great thanks. I have updated.
> 
> I have two questions:
> 
> 1. Is it okay for these descriptions to go inside
> Documentation/ABI/stable? They have been around since 2.6 (2010). Or
> would we prefer Documentation/ABI/testing/?

stable is fine.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
