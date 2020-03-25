Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46684192BAB
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 16:01:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C25C1252CF;
	Wed, 25 Mar 2020 15:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kDHSHf7+L4GF; Wed, 25 Mar 2020 15:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9EB2F23B9B;
	Wed, 25 Mar 2020 15:01:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCDC91BF399
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 15:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D97F786D4C
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 15:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RYakMjAKHE7F for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 15:01:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C42F86D47
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 15:01:36 +0000 (UTC)
X-Originating-IP: 83.155.44.161
Received: from classic (mon69-7-83-155-44-161.fbx.proxad.net [83.155.44.161])
 (Authenticated sender: hadess@hadess.net)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9D61F240016;
 Wed, 25 Mar 2020 15:01:31 +0000 (UTC)
Message-ID: <5328cab11b0e60fe08b67d27e23eef66b7472c1c.camel@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
From: Bastien Nocera <hadess@hadess.net>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 25 Mar 2020 16:01:30 +0100
In-Reply-To: <20200324173512.GH26299@kadam>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324152040.GA2511658@kroah.com>
 <73723ab7d2c64c7d5ce7e2ae05b857c965824168.camel@hadess.net>
 <20200324173512.GH26299@kadam>
User-Agent: Evolution 3.36.0 (3.36.0-1.fc32) 
MIME-Version: 1.0
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
 linux-wireless@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-24 at 20:35 +0300, Dan Carpenter wrote:
> On Tue, Mar 24, 2020 at 04:21:47PM +0100, Bastien Nocera wrote:
> > On Tue, 2020-03-24 at 16:20 +0100, Greg Kroah-Hartman wrote:
> > > On Tue, Mar 24, 2020 at 11:36:00AM +0100, Bastien Nocera wrote:
> > > > Make it possible to disable the LED, as it can be pretty
> > > > annoying
> > > > depending on where it's located.
> > > > 
> > > > See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
> > > > out-of-tree version.
> > > > 
> > > > Signed-off-by: Bastien Nocera <hadess@hadess.net>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
> > > >  drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
> > > >  drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
> > > >  3 files changed, 13 insertions(+)
> > > 
> > > Why was this resent?  Didn't I just reject this?
> > 
> > It wasn't resent, it's the same mail you already answered.
> 
> It says "resend" in the subject.

This isn't what we were talking about though ;)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
