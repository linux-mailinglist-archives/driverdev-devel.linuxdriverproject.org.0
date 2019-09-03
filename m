Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FEAA724C
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 20:12:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C29B98695E;
	Tue,  3 Sep 2019 18:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rIEStFJ9219i; Tue,  3 Sep 2019 18:12:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CB1B8693D;
	Tue,  3 Sep 2019 18:12:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA4A1BF5A6
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 18:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 18E6A8693B
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 18:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ORjgeUiE2H93 for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 18:12:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2E7586901
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 18:12:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id E35E13A32A; Tue,  3 Sep 2019 20:12:08 +0200 (CEST)
Date: Tue, 3 Sep 2019 20:12:08 +0200
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH] staging: exfat: cleanup braces for if/else statements
Message-ID: <20190903181208.GA8469@valentin-vidic.from.hr>
References: <20190903164732.14194-1-vvidic@valentin-vidic.from.hr>
 <20190903173249.GL1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903173249.GL1131@ZenIV.linux.org.uk>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 03, 2019 at 06:32:49PM +0100, Al Viro wrote:
> On Tue, Sep 03, 2019 at 06:47:32PM +0200, Valentin Vidic wrote:
> > +			} else if (uni == 0xFFFF) {
> >  				skip = TRUE;
> 
> While we are at it, could you get rid of that 'TRUE' macro?

Sure, but maybe in a separate patch since TRUE/FALSE has more
calls than just this.

-- 
Valentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
