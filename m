Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A05A11A48DD
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 19:17:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E4EA88220;
	Fri, 10 Apr 2020 17:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 42Kq-d1+YfsC; Fri, 10 Apr 2020 17:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5591E88166;
	Fri, 10 Apr 2020 17:17:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38D281BF408
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 17:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3057688177
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 17:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbzEkgIear-d for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 17:17:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57A8D88166
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 17:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586539050;
 bh=OknhL+dWbzP6DoI+4HmmR01y+Q6JNKzHBccrGewbg+Q=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=OUVGMDqOpWObl63V+g4fyTdDqjN+zyXimTh7l/EmnhO399VKex+evYkdpxeWafbXJ
 4t2RG/hqH+8Mcjz7dADWbRX8LR7DKKcxZjUGrWHXzbmka4A01w6a071brI4ypgDedB
 Ds/X6G57GBfUxprPzIypXb32BGaSIb+883Y3goqU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N95iR-1jBbC92uLH-0168wW; Fri, 10
 Apr 2020 19:17:30 +0200
Date: Fri, 10 Apr 2020 19:17:28 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Message-ID: <20200410171728.GB3426@ubuntu>
References: <20200410112834.17490-1-oscar.carter@gmx.com>
 <20200410112834.17490-2-oscar.carter@gmx.com>
 <986e8e5e-245a-cc70-2c6f-8ac3a4a485c9@gmail.com>
 <20200410155911.GA3426@ubuntu>
 <fcc434e9-9da4-4f24-19cc-bac8fc7166ec@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fcc434e9-9da4-4f24-19cc-bac8fc7166ec@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:27q35nxGK3q2xRnJOp8V1guiMD64c05HSKVZUFVsHrBN06g+XxU
 gmed7ieyuTcUN8SocH7KH/wdtl0oRegNqzj+LR62Q28TSjpnvxLU9FZiFoIiLUwGDXi+RCd
 S2x2vpyt28gTK+LW2/Uh7gyvcCIQTznVb1j+q5YLLS3chRJzb8bM7VrOw6gidXyOCPemFxQ
 7fIlu53q0hwhvZOSy740w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:JHeNEQktVis=:DS5il7YFW+VCEYBpd5CTMc
 x/jQIsgaThVTYZGeuoeweM9p+Um73hbo1NDVCL2ZhWebQm787C85e4H0OBmwWY4kfLP8p7cEp
 q8oIcOULG2asKqiX7jXLjA8mnEBku6GcAufTPZhu2ECHUNA81UI4HpQArgwE/1mbVS+0L3Cfy
 bHStxL0chAJklE9MnAfWzBH7BphaEVrOadTfjeViOWuZS+BQwQUr/Xy19/MrvQP0588F5e9uC
 3EzkQf37qx6wbCPXrdnK/1GYLbXsANAahIpPG3TfcEKelabWsCY30GLyZu3ii4mMOECCLqFy2
 DJPKshZ5nxFel+QZ//50C8m9hgKsk0nMkGnGzN1hGszlfMAUJEOEGxET0zodjJWgepUUEcXyw
 f5AjixWy0423ucVdpf2I7JCjLZdrXZEjZVaX33lIpOJ4rmmdjdNToiW78BWtmH6Jel6/AIoEq
 9+yduamGSWOT/bRIirbXntgtgBd4tqv9ANhC/E1NTf+SuDx2QOGZY5cZAs+FZyRS4d0czFLTC
 HniQVBXeNWROukWPxNkHFNpnp1WxNHJPIQBmRQEugOwapKw56VpWLXGeOZi9j0/S3x01H0H2+
 CK7BvnHFtFrw18O4FNUCXkHkRfMZ99/LIlIf6mZJ5qGtJtl8RnmM/75GVa7ptSsIDUcH4IT0G
 /N0f7guFzqzj0bEH3ERXAbcF8dvOPS61g72alZOfeyBNa0sUrN09Y84PowsdsPHxAvPWP0h+l
 /nfeJfV2fzFfVivxHRGWkgl7Zs9Gi+t4ISyLcYdm5lTs26gRwWH3jswhA5L9ieGNfnvYs4u6N
 yBpNPIMKXgqFMo4on9QxvCVHUcFYvUnVIdzTqLffuczAasWpEgT3u/ZsNE+RndtgmOxyPGXGX
 Pm256flWpzQtF449YMSca4I5J02v1OmFOZuSdA+/6N1okG9v99k83ZjVa7zHQPSRCBWwMdd7D
 Nb7/mh0BuEgjxie3zh6qm0HXTDQy/Fhs7eQNrIpdb7UsaRjihKFy9QzHM1Wj2rP72AzM2lD2f
 ggLKYrU6VN5zuEjZFjROuHMd6C7mOeqVWLfMB0jVq7S/QlXcYD81+kIIHq87wnNW704dW2gc6
 yfRrbFQKfwLlWTeQAcg4BrQLHtbZflhvHCzcpQKls/KBB4mJY9IpLW9yMMwCQn8jizjf67Wmr
 DztBRiZIyKm+CrkPTwzg9AkZUB60InBl3YCO7+l8QFh+ESwWqBE8vQaUtiIJVD5wtgWuwsiI9
 FfHMKs+BCbDC1EHXW
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
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 10, 2020 at 05:40:52PM +0100, Malcolm Priestley wrote:
>
>
> On 10/04/2020 16:59, Oscar Carter wrote:
> > On Fri, Apr 10, 2020 at 04:37:59PM +0100, Malcolm Priestley wrote:
> > >
> > >
> > > On 10/04/2020 12:28, Oscar Carter wrote:
> > > > Create a constant array with the values of the "phy->signal" for every
> > > > rate. Remove all "phy->signal" assignments inside the switch statement
> > > > and replace these with a single reading from the new vnt_phy_signal
> > > > array.
> > > >
> > > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > > ---
> > > >    drivers/staging/vt6656/baseband.c | 101 +++++++-----------------------
> > > >    1 file changed, 21 insertions(+), 80 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> > > > index a19a563d8bcc..47f93bf6e07b 100644
> > > > --- a/drivers/staging/vt6656/baseband.c
> > > > +++ b/drivers/staging/vt6656/baseband.c
> > > > @@ -115,6 +115,21 @@ static const u16 vnt_frame_time[MAX_RATE] = {
> > > >    	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
> > > >    };
> > >
> > > Actually you don't need the second values
> >
> > Great.
> > > >
> > > > +static const u8 vnt_phy_signal[][2] = {
> > > > +	{0x00, 0x00},	/* RATE_1M  */
> > > The driver would never attempt use preamble at this rate
> > > so it's safe to include in with the next 3 rates
> Sorry got this wrong the driver is trying to do preamble (short)
> at this rate and it is not working.
>
> So don't apply it to RATE_1M rate.

Ok, I take it into account.
>
> Regards
>
> Malcolm
>
Thanks,

Oscar Carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
