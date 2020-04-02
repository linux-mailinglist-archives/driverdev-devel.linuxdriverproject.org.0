Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAAC19C6EE
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 18:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CE4026AE5;
	Thu,  2 Apr 2020 16:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rG7ky2DxlzU4; Thu,  2 Apr 2020 16:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4D0B4203ED;
	Thu,  2 Apr 2020 16:18:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCEE21BF395
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 16:18:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9BFD863FD
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 16:18:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YiOtVoDIoAu2 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 16:18:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A63986382
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 16:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585844318;
 bh=Ha6uhEHP6yt0gDqDKrJoPEb7up/ARPeYWAyiPscmxhk=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=h9U6MBB23/IrRh+hgK8kbV18dQaObah4to1o4DuTrnIGi2axNR6awjSLodkY2F3Qh
 xD+zywErFDEBWcFPIIUVErG9wsTWOXIUAjy3FwtFWxW1vm+NjMd7Az4MY8JtjuVS3W
 ACikdVbsoFBu5vjQTKK0OxL8Z5m4QmJ4YUEodPK8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N4hvR-1jA79F1owR-011ltw; Thu, 02
 Apr 2020 18:18:38 +0200
Date: Thu, 2 Apr 2020 18:18:25 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH] staging: vt6656: Use defines in vnt_mac_reg_bits_*
 functions
Message-ID: <20200402161825.GA3939@ubuntu>
References: <20200328095433.7879-1-oscar.carter@gmx.com>
 <20200331102906.GA2066@kadam> <20200401165537.GC3109@ubuntu>
 <20200402091917.GA17323@jiffies>
 <4e5fc495-9355-02b7-4148-ea4de5370617@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e5fc495-9355-02b7-4148-ea4de5370617@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:zgJ0x0lB71mFFzXhTSJLU6lMqD7zrO7EH6/wEuwXDz9/rmEt9P/
 CK4qnq2WEHU3R+oqaUBz/LJIps5b882EIcJOb20W+Vo8+67qbO1P2oNZ8H7fi9dL675A7v2
 x9VneawAF0TQnBqDtPd1aXkUhB4EA/U7IDdWC8Zt9Q8XiBfgrgkHWhmqQdxWg8+j1CmF7hw
 k+qvq0uBEVtwN0vp4oo9A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:D7pbub1xazs=:+3glSZlpMMy5g2/PRgN+Nz
 djfSv7lj8tdK91yOA+ERI1jYCWMEeyLXeWT5LhGGqSp6M0QXNY+EhzkzHiosxe/YumFF0Ci9G
 frZ8SZXWlUQYj1PQl/0ZQQ5CGQMbbde4BUS+XYEG8+wa42Db5J9YHNmPszcCDbXPcHfr5g1Gw
 c1yi6v5aYQn722wFInobiv7CM5HOU6XFY7MPoHmQLE/Oyz+zwtE6934YuWOV2ZhcJbPbdnYWQ
 i6n8pQFiRrE+KPfFxR6mNhzHzKLSFqqu+tD6oFysYouSjAN8p68BeffvdN2iMM0nT23QRF/Xh
 HYXdhIn8kawRoG6/RUjvPni6Gyn+Z7+u8+XaO5BOBjphXIdtwVWtvYTlQxKfTE9vgvRYrUew5
 8mNhEbvYGEzDiIDM2HJbUlngNJcW6U6LQeAA32qxJdBPLWPzgluDMib2CAqkpP++Q6B3g0yw3
 KuEIlAJg6p4Nblka/iefcdHifpQziKmivAIesEwChSR2dnPfbk5sZ9w/PkKkP01dWd0OnIY7s
 a0KYZJvrTAz3IKbfDbOMGz98F4aKgKWS+nYf4nDUHJfUv1IsJjbzV3JwRuiKkmg3fFrIRfMu2
 T+/twXGAXGIcYHrafoJG2BtfHUwdpAhtfQLM+cESggTJ7FPtAW6us3xEjTgLDzCzIF7Hjh1zx
 bkfk1s/L4w3Cox4gVhUwM9hNpMIXjNtdDAgiD7P+eSahSVtOtFuAqZ7qU7AUomfYRf+69w/S0
 umjUUna1Zx80vxZzgTQ0x/mXRvlmLnCQ7jJMDyRbsvdMF5PmCQSFZ8xJtD8jYcPSora4dR78F
 gJW3EGY+iyTAoiCsO3kf7ZdfHab/SZuYXbQPTZpzcw/wDCc7Bq221avPpT4I7AlpKIp+W+tNJ
 2ClkVNGq3JectmRfq2U2KMs5jbDKtNVnqO3qXf/aA633FrQ674ayIldXEF/ZcPB43gDHEEi1R
 ZVbTgeiAodNys7O3FBcrJXeeCoDvWYqnQTuW3MEUx1ivAn6V5/R1hvIh/exnW8UPEtojJDSHv
 3mxg4KJ871YmQ9AQchyIxnjuHFQKPjRSHBKs7jb6vlCVJqKYwyT2qrFzuJDF2xMIIXkBcj+88
 JiZCNvB5V3Q4dhvAy5pdLjIEafF/TANHXNNPxiORzbVd6NtVxD6xcVbPgJVfaPzdPr1jV+WK+
 YCYz/rY07rjTSdwoRnbyHyWdImdKp992WNX5Wj8HLGuJ7ptH3OxkLJDec40LA/pUrAecsG+ju
 VmRphkGrNsbpFOws8
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 02, 2020 at 11:58:07AM +0100, Malcolm Priestley wrote:
>
>
> On 02/04/2020 10:19, Quentin Deslandes wrote:
> > On 04/01/20 18:55:38, Oscar Carter wrote:
> > > On Tue, Mar 31, 2020 at 01:29:06PM +0300, Dan Carpenter wrote:
> > > > On Sat, Mar 28, 2020 at 10:54:33AM +0100, Oscar Carter wrote:
> > > > > Define the necessary bits in the CHANNEL, PAPEDELAY and GPIOCTL0
> > > > > registers to can use them in the calls to vnt_mac_reg_bits_on and
> > > > > vnt_mac_reg_bits_off functions. In this way, avoid the use of BIT()
> > > > > macros and clarify the code.
> > > > >
> > > > > Fixes: 3017e587e368 ("staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_* functions")
> > > > > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > > > ---
> > > > >   drivers/staging/vt6656/baseband.c |  6 ++++--
> > > > >   drivers/staging/vt6656/card.c     |  3 +--
> > > > >   drivers/staging/vt6656/mac.h      | 12 ++++++++++++
> > > > >   drivers/staging/vt6656/main_usb.c |  2 +-
> > > > >   4 files changed, 18 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> > > > > index a19a563d8bcc..dd3c3bf5e8b5 100644
> > > > > --- a/drivers/staging/vt6656/baseband.c
> > > > > +++ b/drivers/staging/vt6656/baseband.c
> > > > > @@ -442,7 +442,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
> > > > >   		if (ret)
> > > > >   			goto end;
> > > > >
> > > > > -		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
> > > > > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY,
> > > > > +					  PAPEDELAY_B0);
> > > >
> > > > This doesn't clarify anything.  It makes it less clear because someone
> > > > would assume B0 means something but it's just hiding a magic number
> > > > behind a meaningless define.  B0 means BIT(0) which means nothing.  So
> > > > now we have to jump through two hoops to find out that we don't know
> > > > anything.
> > > >
> > > I created this names due to the lack of information about the hardware. I
> > > searched but I did not find anything.
> > >
> > > > Just leave it as-is.  Same for the rest.
> > > Ok.
> > >
> > > >
> > > > There problem is a hardware spec which explains what this stuff is.
> > > >
> > > It's possible to find a datasheet of this hardware to make this modification
> > > accordingly to the correct bit names of registers ?
> >
> > I haven't found any so far, if your researches are luckier than mine, I
> > would be interested too. Even getting your hands on the actual device is
> > complicated.
>
> All I can tell you is it related to command above it MAC_REG_ITRTMSET
> without it the device will not associate with access point is probably TX
> timing/power rated.
>
> Other bits in MAC_REG_PAPEDELAY are related to LED function and defined in
> LEDSTS_* in mac.h.
>
> I think it is some kind of enable so something like ITRTMSET_ENABLE would
> do.
>
I think the best for now is leave it as-is due to the lack of information about
bit names of registers.

> Regards
>
> Malcolm

Thanks,

Oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
