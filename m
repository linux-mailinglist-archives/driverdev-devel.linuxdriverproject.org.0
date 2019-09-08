Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A1AACFD8
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:51:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 974938715D;
	Sun,  8 Sep 2019 16:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bVzxUWV7xeRY; Sun,  8 Sep 2019 16:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 052BA870A9;
	Sun,  8 Sep 2019 16:51:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C09C1BF2BD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 555BC8562D
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qc2cw619g28r for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:51:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15F2A85618
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:51:35 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 94489214; Sun,  8 Sep 2019 16:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567961491;
 bh=mF+4NLAhuyJUGqzq9vSqZm83S4VIa0cpRhn2ECd2y4A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o3OMR4q61kLV0E7oGS9ZGieXIIxu3qYyIlhFWo3OXmO73+qb8cGqTR96bm8K/WYTM
 aV7BbUA/n4mid/lYQJi+YJgrO8o4tTf/b2Te5FUiS6UVhNfoapq8c9cInhhIoBlPVB
 QdevGiXPsFeODOkwTHoH8Hn3kw3jI5agSyoDzCt7RxbmCFHTQlVgPMwQfsC7VT1DNV
 zp9QxVGaUsUsL1m3EnT1Oz+yeD1NOFnzIADxeF5E5UnY8j/VuCQBxz7qGe3A5AvGey
 uO79kDLHzWuyXCacbj3Z8sETEafbUYnKXY3G+xT8uVa35wSUeFv0t5+Hh1XEsN+H26
 Q1MeawsruR0dA==
Date: Sun, 8 Sep 2019 16:51:31 +0000
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 3/3] staging: exfat: add millisecond support
Message-ID: <20190908165131.GC7664@valentin-vidic.from.hr>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
 <20190908161015.26000-3-vvidic@valentin-vidic.from.hr>
 <20190908164040.GA8362@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908164040.GA8362@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 05:40:40PM +0100, Greg Kroah-Hartman wrote:
> On Sun, Sep 08, 2019 at 04:10:15PM +0000, Valentin Vidic wrote:
> >  void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
> >  			u8 mode)
> >  {
> > +	u8 ms;
> >  	u16 t, d;
> >  	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
> >  
> >  	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
> >  	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
> >  
> > +	ms = tp->millisec;
> > +	if (tp->sec & 1) {
> > +		ms += 1000;
> > +	}
> 
> checkpatch didn't complain about this { } not being needed?
> 
> Same in other parts of this patch, please fix up.

No warnings from checkpatch here, will update the code.

-- 
Valentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
