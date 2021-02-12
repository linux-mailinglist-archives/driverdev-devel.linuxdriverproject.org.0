Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E730A319C23
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:52:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D3886F5D6
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:52:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGUaz0bOG6-f for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 09:52:27 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 620876F5CE; Fri, 12 Feb 2021 09:52:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45AA56F5E1;
	Fri, 12 Feb 2021 09:52:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 835871BF372
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:51:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80058869F7
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:51:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H2hRnOyCXMdh for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:51:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07532869C9
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:51:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B43264DC3;
 Fri, 12 Feb 2021 09:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613123517;
 bh=n2Vxmj6dT4i51SBCbbozTF7UHhNkZ4QoGcnjYMiJQFw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ok4noK6B7ZR0NuiFx2CwXUyKcRChvIeMSPKpQKlxJ4HJrzcadHnkfiko6qGCgZMrp
 zAhnb967jULYFO5+PPImz78Z9FIBRkNU/KMwfU00YkYh1o+sPiufsWUAQRbMv0dA8N
 MB2Y2DaNbkIM/k1JTKv4vlzo1UGRMqurxqRz5RDtHo5WEXZUgK05lonXg3S1f5nW2U
 y7xx2eiKaDN0tVtF6iVXGGIJdM4VcNQSnPkEpD5gdbpLBggLZMDlL4QkeKSMIhWpLv
 21d33sqtXPiW9WbtcIvRFB4O53U5KW+f/gnsf9aSf/Cb8nT5alBtZNwjotbeGYVu1u
 CjdxY1t87NF7A==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1lAV7V-0001mH-76; Fri, 12 Feb 2021 10:52:13 +0100
Date: Fri, 12 Feb 2021 10:52:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <YCZPzV7KiT/y//m2@hovoldconsulting.com>
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, elder@kernel.org, vireshk@kernel.org
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

But what will the checkpatch crew then work on? Better staging than the
rest of the kernel.

Perhaps just let them keep at it until we move the rest out (the price
we pay for taking this through staging apparently).

But there can't be that many instances left of this alignment
"violation" in staging/greybus (~4 it seems) if you want to get it over
with.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
