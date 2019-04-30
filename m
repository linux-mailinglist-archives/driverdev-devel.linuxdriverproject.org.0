Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCD3EF35
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 05:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A32486834;
	Tue, 30 Apr 2019 03:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dy2COgZ+trJ5; Tue, 30 Apr 2019 03:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 251B68669E;
	Tue, 30 Apr 2019 03:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2251BF8A8
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 03:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AF518663C
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 03:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L1CZygW7wI4c for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 03:34:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.osadl.at (178.115.242.59.static.drei.at [178.115.242.59])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62165815F5
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 03:34:04 +0000 (UTC)
Received: by mail.osadl.at (Postfix, from userid 1001)
 id DE4EE5C0355; Tue, 30 Apr 2019 05:33:10 +0200 (CEST)
Date: Tue, 30 Apr 2019 05:33:10 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
Message-ID: <20190430033310.GB23144@osadl.at>
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
 <20190430022238.GA22593@osadl.at>
 <20190430030223.GE23075@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430030223.GE23075@ZenIV.linux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, Sven Van Asbroeck <thesven73@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 04:02:23AM +0100, Al Viro wrote:
> On Tue, Apr 30, 2019 at 04:22:38AM +0200, Nicholas Mc Guire wrote:
> > On Mon, Apr 29, 2019 at 10:03:36AM -0400, Sven Van Asbroeck wrote:
> > > On Mon, Apr 29, 2019 at 2:11 AM Nicholas Mc Guire <hofrat@osadl.org> wrote:
> > > >
> > > > V2: As requested by Sven Van Asbroeck <thesven73@gmail.com> make the
> > > >     impact of the patch clear in the commit message.
> > > 
> > > Thank you, but did you miss my comment about creating a local variable
> > > instead? See:
> > > https://lkml.org/lkml/2019/4/28/97
> > 
> > Did not miss it - I just don't think that makes it any more
> > understandable - the __force __be16 makes it clear I believe
> > that this is correct, sparse does not like this though - so tell
> > sparse.
> 
> ... to STFU, 'cause you know better.  The trouble is, how do we
> (or yourself a year or two later) know *why* it is correct?
> Worse, how do we (or yourself, etc.) know if a change about to be
> done to the code won't invalidate the proof of yours?
> 
> > The local variable would need to be explained as it is
> > functionally not necessary - therefor I find it more confusing
> > that using  __force here.
> 
> What's confusing is mixing host- and fixed-endian values in the
> same variable at different times.  Treat those as unrelated
> types that happen to have the same sizeof.
> 
> Quite a few of __force instances in the tree should be taken out
> and shot.  Don't add to their number.

ok - my bad thn - I had assumed that using __force is reasonable
if the handling is correct and its a localized conversoin only 
like var = be16_to_cpu(var) which evaded introducing additinal
variables just to have different types but no different function.
But the long-term issue of hiding bugs by __force makes sesne to
me - will give it another shot at scripting this in coccinelle.

thx!
hofrat
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
