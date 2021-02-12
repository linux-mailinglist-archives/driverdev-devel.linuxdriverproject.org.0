Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 072C4319BB2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:17:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EC8287229;
	Fri, 12 Feb 2021 09:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPX+edlp5st4; Fri, 12 Feb 2021 09:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 283DB871DA;
	Fri, 12 Feb 2021 09:17:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF42B1BF372
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC2FC87433
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RpG1t9eKCT-s for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:17:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3A79487428
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:17:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89D4664DE3;
 Fri, 12 Feb 2021 09:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613121458;
 bh=nx2t2Rhxo+mIa8vXQ7tFMumzY+Z/RjMflfQJ9Of/Y10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zqgm3NCRGXK9oa/oeBU8VAQQf6f1NpX7j4U7xuM9kgllYOAv2QoSWBuSmSCz3drPW
 PAtHg2WKZawEk7Ik+/18sZ05WJ1QobAZw9HQMTd4ScbOBPY549XikHdV/khDDOHpQw
 N+hqolVWEuMj2yeHfukPnkElB+3zwDUAjlGSyLGM=
Date: Fri, 12 Feb 2021 10:17:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <YCZHsMPgyqtRMTII@kroah.com>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
 <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
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
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Pritthijit Nath <pritthijit.nath@icloud.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 02:39:26PM +0530, Viresh Kumar wrote:
> On 12-02-21, 13:48, Pritthijit Nath wrote:
> > This change fixes a checkpatch CHECK style issue for "Alignment should match
> > open parenthesis".
> > 
> > Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> > ---
> >  drivers/staging/greybus/hid.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> > index ed706f39e87a..a56c3fb5d35a 100644
> > --- a/drivers/staging/greybus/hid.c
> > +++ b/drivers/staging/greybus/hid.c
> > @@ -221,8 +221,8 @@ static void gb_hid_init_reports(struct gb_hid *ghid)
> >  }
> > 
> >  static int __gb_hid_get_raw_report(struct hid_device *hid,
> > -		unsigned char report_number, __u8 *buf, size_t count,
> > -		unsigned char report_type)
> > +				   unsigned char report_number, __u8 *buf, size_t count,
> > +				   unsigned char report_type)
> >  {
> >  	struct gb_hid *ghid = hid->driver_data;
> >  	int ret;
> 
> I can't even count the number of attempts we have seen in previous
> years to make checkpatch --strict happy for greybus.
> 
> I say we make this change once and for all across greybus, so we don't
> have to review or NAK someone afterwards.
> 
> Should I send a patch for this ?

Sure, but note that over time, checkpatch adds new things so there will
always be something to change in here, until we move it out of the
drivers/staging/ area :)

I need to go fix up the greybus vibrator patch which was my first
attempt at getting back into that effort...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
