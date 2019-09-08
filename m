Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 487A0AD072
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 21:32:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19A0885534;
	Sun,  8 Sep 2019 19:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ii4o5Be8D_lV; Sun,  8 Sep 2019 19:32:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EADC584E24;
	Sun,  8 Sep 2019 19:31:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F70F1BF3F2
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 19:31:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9CD1186FAD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 19:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWVHAuq81MQ4 for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 19:31:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from valentin-vidic.from.hr (valentin-vidic.from.hr [94.229.67.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9EEA386F3F
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 19:31:57 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at valentin-vidic.from.hr
Received: by valentin-vidic.from.hr (Postfix, from userid 1000)
 id A3653214; Sun,  8 Sep 2019 19:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=valentin-vidic.from.hr; s=2017; t=1567971109;
 bh=CxPKTjvXFh/sMGEUjANehOfpQ0XuIiMOouyRvsLS4YI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8SQWK8hQ696VqsOJ5xZ4Yu1jAfLv/DY1zQ13ItbpLR0FTyJPYpjQSa7Hqek7fr4i
 Az5hz+ie82ZvCpZ0bLuOxwOuc+JJbQIFl+xjI0emRUW7ycGwcXgmr+hy6frtBuhS12
 5uZUa4ZN38YHoMWbBISpU6vLj7z0d9/k+lmX1+hTiEa1cA1736x6O0IWZZbYbmH0CN
 Qgvc3yXXDSlWy3Fp1W/BF+255yqUNB7ymY4Ow0A0LkymuhWGTLRBoJXgnz8qDJRIYu
 x5ErRns5+KaX9mlbCQT3Je0VbccbrkUTfgwpxSFVeX636bkTiXDRy7hnOC1QElBxdq
 OuGP6YQYKyvHA==
Date: Sun, 8 Sep 2019 19:31:49 +0000
From: Valentin =?utf-8?B?VmlkacSH?= <vvidic@valentin-vidic.from.hr>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 2/4] staging: exfat: drop duplicate date_time_t struct
Message-ID: <20190908193149.GD7664@valentin-vidic.from.hr>
References: <20190908173539.26963-1-vvidic@valentin-vidic.from.hr>
 <20190908173539.26963-2-vvidic@valentin-vidic.from.hr>
 <20190908185424.GB10011@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908185424.GB10011@kroah.com>
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

On Sun, Sep 08, 2019 at 07:54:24PM +0100, Greg Kroah-Hartman wrote:
> On Sun, Sep 08, 2019 at 05:35:37PM +0000, Valentin Vidic wrote:
> > +struct timestamp_t {
> > +	u16      millisec;   /* 0 ~ 999              */
> 
> You added this field to this structure, why?  You did not document that
> in the changelog text above.  Are you _sure_ you can do this and that
> this does not refer to an on-disk layout?

Both date_time_t and timestamp_t were used in memory only, but
date_time_t had the additional MilliSecond field. To keep the
functionality I added the millisec field to timestamp_t and
replaced all usages of date_time_t with timestamp_t.

For storing on disk the values from timestamp_t get shifted
and combined (exfat_set_entry_time).

-- 
Valentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
