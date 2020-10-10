Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFA8289F28
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 10:09:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7750487788;
	Sat, 10 Oct 2020 08:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hSVxmZ2erqOz; Sat, 10 Oct 2020 08:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2129186CEE;
	Sat, 10 Oct 2020 08:09:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B565D1BF30D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9B2487835
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 08:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kD8BbKcw6EK1 for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 08:09:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 207FC87805
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 08:09:07 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C808207E8;
 Sat, 10 Oct 2020 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602317346;
 bh=UPcr+Ibg07POMWxl1HvL2IeGuaIGl6soETIqzkJhXjA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HMwOBN4IbvGaEGnave/74riINOP0cR6MsHA3Ytl9Ej1+bHp3WLTtGXHkTC/T6Ur/h
 vsuKBIZ6Oo94MAOIGD0BdsudPZN58FgsJUf/zRySLGmTEnhz+mI1rO8cz0lbnaKTYL
 A6MjC3dIF2CncvSx0CKawexv5Z4LWXzbsIhRFvkM=
Date: Sat, 10 Oct 2020 10:09:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Subject: Re: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
Message-ID: <20201010080904.GA140279@kroah.com>
References: <20201009162030.293781-1-anant.thazhemadam@gmail.com>
 <20201010070007.GB132110@kroah.com>
 <b84879e9-425e-6354-d21a-cd7c5d237be5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b84879e9-425e-6354-d21a-cd7c5d237be5@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com,
 Ian Abbott <abbotti@mev.co.uk>, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 07:29:13AM +0530, Anant Thazhemadam wrote:
> Hi,
> 
> On 10-10-2020 12:30, Greg Kroah-Hartman wrote:
> > On Fri, Oct 09, 2020 at 09:50:29PM +0530, Anant Thazhemadam wrote:
> >> While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
> >> wMaxPacketSize = 0 for the endpoints found.
> >>
> >> Some devices have isochronous endpoints that have wMaxPacketSize = 0
> >> (as required by the USB-2 spec).
> >> However, since this doesn't apply here, wMaxPacketSize = 0 can be
> >> considered to be invalid.
> >>
> >> Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> >> Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> >> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> >> ---
> > You sent 2 patches with the same subject, which one is the "latest" one?
> 
> This patch (that you have replied to) is the "latest" one.
> 
> > Please always version your patches and put below the --- line what
> > changed from the previous version, so that maintainers have a chance to
> > know which to accept...
> 
> The other patch (with the same subject line) wasn't supposed to be sent out.
> I realized there was a coding style error in that while sending, and cancelled
> sending it, but it got sent nonetheless.
> I would have included a v2 tag in this patch itself, but I didn't realize that the
> previous one got sent until afterwards. :(
> I'm sorry for that.
> 
> > Can you fix this up and send a v3?
> 
> Shouldn't I resend this patch as a v2 instead? Since there wouldn't be any
> changes from v2 (this patch) to v3 otherwise (unless of course, somebody could
> suggest some more changes that could be made to this patch itself).

The change would be that you are correctly listing the version
information, so it would be v3 :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
