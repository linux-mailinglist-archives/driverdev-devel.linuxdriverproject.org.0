Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDEAEF5B
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 06:19:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E233877A0;
	Tue, 30 Apr 2019 04:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Zqw6RTHgTVF; Tue, 30 Apr 2019 04:19:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 267E887627;
	Tue, 30 Apr 2019 04:19:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA56C1BF386
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 04:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D728382494
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 04:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDeblqC_eeOO for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 04:19:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 672BE82154
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 04:19:39 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hLKEw-0007Ls-Ie; Tue, 30 Apr 2019 04:19:34 +0000
Date: Tue, 30 Apr 2019 05:19:34 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Nicholas Mc Guire <der.herr@hofr.at>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
Message-ID: <20190430041934.GI23075@ZenIV.linux.org.uk>
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
 <20190430022238.GA22593@osadl.at>
 <20190430030223.GE23075@ZenIV.linux.org.uk>
 <20190430033310.GB23144@osadl.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430033310.GB23144@osadl.at>
User-Agent: Mutt/1.11.3 (2019-02-01)
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

On Tue, Apr 30, 2019 at 05:33:10AM +0200, Nicholas Mc Guire wrote:

> ok - my bad thn - I had assumed that using __force is reasonable
> if the handling is correct and its a localized conversoin only 
> like var = be16_to_cpu(var) which evaded introducing additinal
> variables just to have different types but no different function.

If compiler can't recognize that in

	T1 v1;
	T2 v2;

	code using v1, but not v2
	v2 = f(v1);
	code using v2, but not v1

it can use the same memory for v1 and v2, file a bug against the
compiler.  Or stop using that toy altogether - that kind of
optimizations is early 60s stuff and any real compiler will
handle that.  Both gcc and clang certainly do handle that.

Another thing they handle is figuring out that be16_to_cpu()
et.al. are pure functions, so

	f(be16_to_cpu(n));
	no modifications of n
	g(be16_to_cpu(n));

doesn't need to have le16_to_cpu recalculated.  IOW, that particular
code could as well have been
	dev_info(dev, "Fieldbus type: %04X", be16_to_cpu(fieldbus_type));
	...
	cd->client->fieldbus_type = be16_to_cpu(fieldbus_type);

... not that there's much sense keeping ->fieldbus_type in host-endian,
while we are at it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
