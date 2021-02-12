Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E2D319BF0
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:37:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0B4186BAE;
	Fri, 12 Feb 2021 09:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5kN7YyyLygd; Fri, 12 Feb 2021 09:37:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 858478651A;
	Fri, 12 Feb 2021 09:37:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4389E1BF372
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:37:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 406D687120
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q6ldCvswGb7a for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A13728711F
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:37:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BFFF564E35;
 Fri, 12 Feb 2021 09:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613122620;
 bh=k+sD9g+C9OoEZjpy98wT9p5d57Ljl1iCOjkEB7l8r5E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VS1dHBF7Y0JLEvlrqgySoazU9r/jeE/VIBjABUsx2juDNgoJdgAKKibxqPsizzToo
 HcU/juhsbiGN9DIVSZJL2DdVrIWLUJBwQRqakSO9mlmUqZ0Ice0NrCnzaWR9rZgc9w
 vOTrhY0+CJI3qbB4EuC/d1U/ddj7rFgo08Px340I=
Date: Fri, 12 Feb 2021 10:36:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <YCZMOQdVDk7mStBy@kroah.com>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
 <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
 <YCZHsMPgyqtRMTII@kroah.com>
 <20210212092130.cxo6tuess6msf4kb@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212092130.cxo6tuess6msf4kb@vireshk-i7>
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

On Fri, Feb 12, 2021 at 02:51:30PM +0530, Viresh Kumar wrote:
> On 12-02-21, 10:17, Greg KH wrote:
> > On Fri, Feb 12, 2021 at 02:39:26PM +0530, Viresh Kumar wrote:
> > > On 12-02-21, 13:48, Pritthijit Nath wrote:
> > > > This change fixes a checkpatch CHECK style issue for "Alignment should match
> > > > open parenthesis".
> > > > 
> > > > Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> > > > ---
> > > >  drivers/staging/greybus/hid.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/greybus/hid.c b/drivers/staging/greybus/hid.c
> > > > index ed706f39e87a..a56c3fb5d35a 100644
> > > > --- a/drivers/staging/greybus/hid.c
> > > > +++ b/drivers/staging/greybus/hid.c
> > > > @@ -221,8 +221,8 @@ static void gb_hid_init_reports(struct gb_hid *ghid)
> > > >  }
> > > > 
> > > >  static int __gb_hid_get_raw_report(struct hid_device *hid,
> > > > -		unsigned char report_number, __u8 *buf, size_t count,
> > > > -		unsigned char report_type)
> > > > +				   unsigned char report_number, __u8 *buf, size_t count,
> > > > +				   unsigned char report_type)
> > > >  {
> > > >  	struct gb_hid *ghid = hid->driver_data;
> > > >  	int ret;
> > > 
> > > I can't even count the number of attempts we have seen in previous
> > > years to make checkpatch --strict happy for greybus.
> > > 
> > > I say we make this change once and for all across greybus, so we don't
> > > have to review or NAK someone afterwards.
> > > 
> > > Should I send a patch for this ?
> > 
> > Sure, but note that over time, checkpatch adds new things so there will
> > always be something to change in here, until we move it out of the
> > drivers/staging/ area :)
> 
> Right, though I wasn't worried about other checkpatch warning but
> specially the "alignment - parenthesis" one. Everyone (specially
> newbies) want to fix that everywhere :)

Sure, fix it up "right" if you want to, I'll take coding style fixes
from anyone :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
