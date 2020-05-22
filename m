Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F96E1DEE2C
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 19:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECB5588332;
	Fri, 22 May 2020 17:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbVckcD3XPmm; Fri, 22 May 2020 17:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E402D8793D;
	Fri, 22 May 2020 17:25:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 596451BF3BC
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 17:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55C8D88C7E
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 17:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rW6140AduX8Z for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 17:25:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BBFC88C45
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 17:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 9D2733BA9;
 Fri, 22 May 2020 19:25:33 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7N5Eo55GPMW; Fri, 22 May 2020 19:25:32 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 6214F3B89;
 Fri, 22 May 2020 19:25:32 +0200 (CEST)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1jcBQJ-00HAVN-9Y; Fri, 22 May 2020 19:25:31 +0200
Date: Fri, 22 May 2020 19:25:31 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522172531.va2hi6jqog3a6473@function>
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
 <20200522171312.s2ciifuxozwav2ym@function>
 <162676bb69044efadd31daa9ea49fc6fb9664297.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162676bb69044efadd31daa9ea49fc6fb9664297.camel@perches.com>
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

Joe Perches, le ven. 22 mai 2020 10:22:03 -0700, a ecrit:
> > Put another way: I don't think putting any hint here would help, on the
> > contrary, somebody has to really look at what protection is needed,
> > without getting influenced by rules-of-thumb.
> 
> checkpatch newbies/robots will submit this change again otherwise.

Ah, ok, right.

I don't think removing volatiles is a thing for newbies, 

> Comment wording can always be improved.

I'd then suggest

/* TODO: determine what proper synchronization "volatile" should be
 * replaced with.  */

Samuel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
