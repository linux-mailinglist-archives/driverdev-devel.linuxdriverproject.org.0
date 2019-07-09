Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6767B639A8
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 18:46:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80BC9868E7;
	Tue,  9 Jul 2019 16:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZtbPCbPs0Ke; Tue,  9 Jul 2019 16:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 14E9086354;
	Tue,  9 Jul 2019 16:46:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A04D1BF576
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1768A2157D
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 16:46:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMFOGeacehZu for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 16:46:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C37D21F6F
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 16:46:07 +0000 (UTC)
Received: from callcc.thunk.org ([199.116.118.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x69Gk3nw014432
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 9 Jul 2019 12:46:05 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id EDC7742002E; Tue,  9 Jul 2019 12:46:02 -0400 (EDT)
Date: Tue, 9 Jul 2019 12:46:02 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: exfat filesystem
Message-ID: <20190709164602.GA8127@mit.edu>
Mail-Followup-To: Theodore Ts'o <tytso@mit.edu>,
 Matthew Wilcox <willy@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kys@microsoft.com,
 Sasha Levin <sashal@kernel.org>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
 <20190709154834.GJ32320@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709154834.GJ32320@bombadil.infradead.org>
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <sashal@kernel.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 09, 2019 at 08:48:34AM -0700, Matthew Wilcox wrote:
> 
> Interesting analysis.  It seems to me that the correct forms would be
> observed if someone suitably senior at Microsoft accepted the work from
> Valdis and submitted it with their sign-off.  KY, how about it?

It might be that the simplest way to do this is just to have someone
from Microsoft send the pull request (with a signed tag) to Linus.
There are any number ways to arrange this but the PGP-signed tag might
be sufficient.  Alternatively, some kind of declaration from a
Microsoft lawyer to OIN might be sufficient.  This is where asking the
LF if they can bring together a meeting of the minds of LF, OIN, and
Microsoft lawyers might make things much easier.

						- Ted
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
