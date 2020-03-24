Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F5B191423
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 16:22:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDD7E88C7F;
	Tue, 24 Mar 2020 15:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rvdhg-x13Sdm; Tue, 24 Mar 2020 15:22:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B42D882F2;
	Tue, 24 Mar 2020 15:21:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04C611BF3C4
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 15:21:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0159685F77
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 15:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wubw9_EHcRK for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 15:21:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
 [217.70.183.198])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86B9E85F67
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 15:21:53 +0000 (UTC)
X-Originating-IP: 83.155.44.161
Received: from classic (mon69-7-83-155-44-161.fbx.proxad.net [83.155.44.161])
 (Authenticated sender: hadess@hadess.net)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1D8B2C0011;
 Tue, 24 Mar 2020 15:21:47 +0000 (UTC)
Message-ID: <73723ab7d2c64c7d5ce7e2ae05b857c965824168.camel@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
From: Bastien Nocera <hadess@hadess.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 24 Mar 2020 16:21:47 +0100
In-Reply-To: <20200324152040.GA2511658@kroah.com>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324152040.GA2511658@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-24 at 16:20 +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 24, 2020 at 11:36:00AM +0100, Bastien Nocera wrote:
> > Make it possible to disable the LED, as it can be pretty annoying
> > depending on where it's located.
> > 
> > See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
> > out-of-tree version.
> > 
> > Signed-off-by: Bastien Nocera <hadess@hadess.net>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
> >  drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
> >  drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
> >  3 files changed, 13 insertions(+)
> 
> Why was this resent?  Didn't I just reject this?

It wasn't resent, it's the same mail you already answered.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
