Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA461DEDF2
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 19:13:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CE7825C94;
	Fri, 22 May 2020 17:13:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfCOd-6+lVYh; Fri, 22 May 2020 17:13:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A81D4203D4;
	Fri, 22 May 2020 17:13:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1204F1BF3BC
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 17:13:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B8FF88731
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 17:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xt0GMhIIfqRE for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 17:13:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F3BCA81C8D
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 17:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 69A153968;
 Fri, 22 May 2020 19:13:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xn3rcvaificZ; Fri, 22 May 2020 19:13:15 +0200 (CEST)
Received: from function (unknown [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 7B3002E76;
 Fri, 22 May 2020 19:13:15 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jcBEO-00HA74-1l; Fri, 22 May 2020 19:13:12 +0200
Date: Fri, 22 May 2020 19:13:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522171312.s2ciifuxozwav2ym@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Joe Perches <joe@perches.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 MugilRaj <dmugil2000@gmail.com>, devel@driverdev.osuosl.org,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 Chris Brannon <chris@the-brannons.com>
References: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
 <20200522103406.GK30374@kadam>
 <6ab4139ec78928961a19e5fdbda139bb8cff9cb5.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ab4139ec78928961a19e5fdbda139bb8cff9cb5.camel@perches.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, MugilRaj <dmugil2000@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Joe Perches, le ven. 22 mai 2020 09:36:05 -0700, a ecrit:
> On Fri, 2020-05-22 at 13:34 +0300, Dan Carpenter wrote:
> > On Fri, May 22, 2020 at 02:46:28PM +0530, MugilRaj wrote:
> > > fix checkpatch.pl warning, which is Use of volatile is usually wrong: see
> > > Documentation/process/volatile-considered-harmful.rst
> > > Signed-off-by: MugilRaj <dmugil2000@gmail.com>
> > 
> > Please put a blank before the Signed-off-by line.
> > 
> > Probably there should be a space between your first and last name.  It's
> > supposed to your legal name like for signing a legal document so use
> > whatever is appropriate legal documents in your country.
> > 
> > Also the Documentation/process/volatile-considered-harmful.rst explains
> > that people often use "volatile" when they should be using locking for
> > synchronization.  That seems to be the case here.  So the correct fix is
> > to add locking.  That's a little bit complicated to do and requires
> > testing.
> > 
> > If we apply this patch, then we have silenced the warning so now someone
> > will have to look for the bug.  But if we leave it as-is, then everyone
> > will know that the code is buggy.  So let's leave it as-is until we are
> > able to fix the bug.
> > 
> > It's always better to have easy to find bugs, than hidden bugs.
> 
> And better still to comment known opportunities to
> improve the code so the next time someone tries to
> remove this volatile, there's a comment right there
> showing what's necessary instead.

Actually I don't think adding the suggestion is a good thing if it's
only a "rule-of-thumb-replace-volatile-with-lock".

Actually possibly volatile might not even be needed because there could
be already a lock protecting this.

Put another way: I don't think putting any hint here would help, on the
contrary, somebody has to really look at what protection is needed,
without getting influenced by rules-of-thumb.

Samuel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
