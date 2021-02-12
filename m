Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D1319B83
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:55:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 566BF86A24;
	Fri, 12 Feb 2021 08:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wtBQiSX5EVZN; Fri, 12 Feb 2021 08:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A6F786A0F;
	Fri, 12 Feb 2021 08:55:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DF6E1BF3F6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A0C06F477
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DYfRUyemMMt for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:55:03 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B29FA6F5C7; Fri, 12 Feb 2021 08:55:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D6116F477
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 08:55:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 610BB64DEA;
 Fri, 12 Feb 2021 08:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613120102;
 bh=5DdrQt2I6f4i7iwHXUZo7yH9lSLs4JCO3DtBvITNDV8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bgrfFRaTAKOAraq8MRjygYLI5URHjbf/7X9eVH5pyfAyOakFf6zKzEMJgphQIkLWg
 G6mXTN5Gps6vvV9ePXzRzb8UhxMRPavEKi/EntE2U3CkwrGskRZfDxXaPBUY0khHax
 ggamO3W/YuUniWcWYIbn2x0vkSFMHOyB6xbZCMbc=
Date: Fri, 12 Feb 2021 09:54:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 2/2] staging: greybus: Fixed a misspelling in hid.c
Message-ID: <YCZCY+UlzdwGU6pw@kroah.com>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
 <20210212081835.9497-2-pritthijit.nath@icloud.com>
 <YCY/1LCP404AZxhm@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCY/1LCP404AZxhm@hovoldconsulting.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vireshk@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Pritthijit Nath <pritthijit.nath@icloud.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 09:44:04AM +0100, Johan Hovold wrote:
> On Fri, Feb 12, 2021 at 01:48:35PM +0530, Pritthijit Nath wrote:
> > Fixed the spelling of 'transfered' to 'transferred'.
> > 
> > Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> > ---
> >  drivers/staging/greybus/hid.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> > index a56c3fb5d35a..6b19ff4743a9 100644
> > --- a/drivers/staging/greybus/hid.c
> > +++ b/drivers/staging/greybus/hid.c
> > @@ -254,7 +254,7 @@ static int __gb_hid_output_raw_report(struct hid_device *hid, __u8 *buf,
> > 
> >  	ret = gb_hid_set_report(ghid, report_type, report_id, buf, len);
> >  	if (report_id && ret >= 0)
> > -		ret++; /* add report_id to the number of transfered bytes */
> > +		ret++; /* add report_id to the number of transferrid bytes */
> 
> You now misspelled transferred in a different way.

Oops, will go revert this, I need more coffee...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
