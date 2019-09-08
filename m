Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F24AD077
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 21:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B6CC87371;
	Sun,  8 Sep 2019 19:40:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uJ0ixNxBQbXa; Sun,  8 Sep 2019 19:40:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B5F786CE0;
	Sun,  8 Sep 2019 19:40:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 417C11BF3F2
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 19:40:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 32CB186CE0
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 19:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HigJd+rx68Tn for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 19:40:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7263086C6D
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 19:40:25 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id 4B168214; Sun,  8 Sep 2019 19:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567971623;
 bh=Vd55c8Am4HzVLce0/fah1MmvqNZ1LcggOOpKi92SLsU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jlQNJiAXGoSPD3Gv3UhryuubeenyTJ7bW9tuV6fjpF0Ya86MkuKfo2dgHdlLvox6z
 HO7n/Que7mZTYuaHFfLDX5CGRQXPmXwsYELvRfFKHAuWW2zrHaPGUWsRGTugMLxmRM
 FA7xyVhz17EhD/M2GftvSV+/WgVcu2pDOwt4YEl+kzo0/pV7k0fjecVQ8vfWVOS2UV
 ZM9FJblzxlbnOUYevffii2GAuXXKGlC9vwCDaF18HUKODDei36GzjgVC30Xl+82GA3
 MtZOTxpPBU1WaCjSGZgUyvRAqKwOJWXKqgewm+08eYPjvP6HgjyIP/j98BZHug8yQ+
 E0gA9b7X7dQ6Q==
Date: Sun, 8 Sep 2019 19:40:23 +0000
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 2/4] staging: exfat: drop duplicate date_time_t struct
Message-ID: <20190908194023.GE7664@valentin-vidic.from.hr>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
 <20190908173539.26963-2-vvidic@valentin-vidic.from.hr>
 <20190908185031.GA10011@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908185031.GA10011@kroah.com>
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

On Sun, Sep 08, 2019 at 07:50:31PM +0100, Greg Kroah-Hartman wrote:
> Wait, how are these "duplicate"?  The fields are in different order,
> don't these refer to things on-disk?

On-disk combines the values from these structures in a different form:

          offset  bits
DoubleSeconds  0  5
Minute         5  6
Hour          11  5
Day           16  5
Month         21  4
Year          25  7

> Did you test this?

Just compile tested for now.

> > -struct date_time_t {
> > -	u16      Year;
> > -	u16      Month;
> > -	u16      Day;
> > -	u16      Hour;
> > -	u16      Minute;
> > -	u16      Second;
> > -	u16      MilliSecond;
> > -};
> > -
> >  struct part_info_t {
> >  	u32      Offset;    /* start sector number of the partition */
> >  	u32      Size;      /* in sectors */
> > @@ -289,6 +279,16 @@ struct file_id_t {
> >  	u32      hint_last_clu;
> >  };
> >  
> > +struct timestamp_t {
> > +	u16      millisec;   /* 0 ~ 999              */
> > +	u16      sec;        /* 0 ~ 59               */
> > +	u16      min;        /* 0 ~ 59               */
> > +	u16      hour;       /* 0 ~ 23               */
> > +	u16      day;        /* 1 ~ 31               */
> > +	u16      mon;        /* 1 ~ 12               */
> > +	u16      year;       /* 0 ~ 127 (since 1980) */
> > +};
> 
> They really look "backwards" to me, how are these the same?  What am I
> missing?

date_time_t was only used in a few functions and there was a lot of
copying of the same fields between the two structs. Also some code was
duplicated to do the same thing for each of the structs.

-- 
Valentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
