Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78B6A86D0
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 19:06:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3FAFD8855E;
	Wed,  4 Sep 2019 17:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59iInE40wbzx; Wed,  4 Sep 2019 17:06:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BB0B88541;
	Wed,  4 Sep 2019 17:06:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE721BF3C5
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 17:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3CA2F87AB6
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 17:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXfrCmOZ78bH for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 17:06:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5346187A87
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 17:06:10 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 515453A341; Wed,  4 Sep 2019 19:05:43 +0200 (CEST)
Date: Wed, 4 Sep 2019 19:05:42 +0200
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] staging: exfat: cleanup braces for if/else statements
Message-ID: <20190904170536.GA12633@valentin-vidic.from.hr>
References: <20190903164732.14194-1-vvidic@valentin-vidic.from.hr>
 <20190903173249.GL1131@ZenIV.linux.org.uk>
 <20190903181208.GA8469@valentin-vidic.from.hr>
 <d14cda319c584db9b8aa35b15b542f89@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d14cda319c584db9b8aa35b15b542f89@AcuMS.aculab.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, Al Viro <viro@zeniv.linux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 09:38:55AM +0000, David Laight wrote:
> From: Valentin Vidic
> > Sent: 03 September 2019 19:12
> > On Tue, Sep 03, 2019 at 06:32:49PM +0100, Al Viro wrote:
> > > On Tue, Sep 03, 2019 at 06:47:32PM +0200, Valentin Vidic wrote:
> > > > +			} else if (uni == 0xFFFF) {
> > > >  				skip = TRUE;
> > >
> > > While we are at it, could you get rid of that 'TRUE' macro?
> > 
> > Sure, but maybe in a separate patch since TRUE/FALSE has more
> > calls than just this.
> 
> I bet you can get rid of the 'skip' variable and simplify the code
> by using continue/break/return (or maybe goto).

Seems it is not so simple - the value of skip is used to control the
behavior in the next loop iteration based on the current uni value.
So maybe just replace skip with a less confusing name.

-- 
Valentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
