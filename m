Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B18F1855E1
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 16:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6D0F878C7;
	Sat, 14 Mar 2020 15:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u3D3KLWdo9aW; Sat, 14 Mar 2020 15:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C8868651D;
	Sat, 14 Mar 2020 15:06:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 938CC1BF47A
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 15:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8DDEB87765
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 15:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLEZhvt-Rnpu for <devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 15:06:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 142C087749
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 15:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584198385;
 bh=C8oAC+ephMsyHFHAO7X3i49cAhiXb0eeDtczwsGpuBY=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=X0bfji3Ag7ntgnU1jP5MbvUy15OywE9nxm+kruRLzj8Xb8MNugc37vF7HCherswoK
 hy9I/gb1ldkeMI8qJPetvJ/0BxulOPzaPS2r/zPFAg0HzryBeQNxaaiApEyAKkL2z8
 MnHX6LmCgzrI9OHz7QLfFV9FF0EQYkcXBdm0QEOs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MIMbU-1j7aRo3fVc-00EOx6; Sat, 14
 Mar 2020 16:06:25 +0100
Date: Sat, 14 Mar 2020 16:06:13 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: Use BIT_ULL() macro instead of bit
 shift operation
Message-ID: <20200314150612.GA3153@ubuntu>
References: <20200307104929.7710-1-oscar.carter@gmx.com>
 <20200308065538.GF3983392@kroah.com> <20200308161047.GA3285@ubuntu>
 <561bc968-f88c-40e3-f53c-5c03f74f75ea@gmail.com>
 <20200310095011.GC2516963@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310095011.GC2516963@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:G+I101FTrb9L8V0q7JzFuevV31mO2bV7RWoMbDwOukp6UUeCKq9
 +tlYqu3jGMXEhMHEHIEsXsbz4IdRepEVTgZIvRVn9cpSusRzjJ78TveUhvQJBDdeWOoa4ig
 ToC3HrPK54JvPJ/AEIj+o1XYeNy7M2DtvAJMw0kLgZz1Gd96la3yOBsEARVrGE1DF7/36LJ
 I/aA6sB1JwFyTZq4kYyiA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PzB98S/cDts=:cqzKzxBBaelaaO+fJFPBOw
 YQH97IGcpGThKtwrFTRzG3Z2OiCTzNVK1kGMx4xIuV/ZOaf9hrAJTAs3bmUMaYNF2Y8RqqVIX
 0GSgCYSYk4dzR6+3DD/YgFiT9MgWXig8IbGrf4sKE0huDe7SANS+HVNFrpxb9av/Ghpn0Ebkd
 hNTxUAMeLfw1Kek0mVM50BAwyIzdwL8jCQnQ8XFo9fgZjZ3RfRgc+UUgHRASnl3Ci3v+co2kf
 MWN4kSPO3EK0VuCMGZ+p7dAYDl6fx/Y/h6+o1eiQVJgMmDzhSILfKVOvvOMFNfKWpoPE3F+Wt
 fMOWLUn56XpjNoPJcBKPdPr/GE+/XtfIguHvJOEuJ7bTi+/iWe55TKmNkzNMa9g+dTckGP0vZ
 fE580RUst7/Pdn1QKf/9mzbg2zL6yRp4ukD/pvSw65OvYRiFfH2S/14lGr+jH5vL32TMnxxO1
 F8LyiBQSMageC+Sy6ViMP27Zh+ABRtO5lG9gKR0iQJ1TDnpfXt/e/lOk7ifspRrzA8zWyd/J/
 1PfNBOzbuIKAr9GX0hlOMCBcTM79JqhnOtmnmMK77mJL2ydRv3Diic6XblnDmRd4AGXCxEDEy
 C8QuuApOCr0wFbS4YWzxVTh2M17c9AhTuqerQYW5PpCekChBn85IWRocouhB/22tnZLKQKWNd
 Pu7XbfofDWSt5q0Q1ed69QrP7R16etXb/u8cRXAqwACaDuF98zg21vB3Db5gHTNfFqqwDQR2e
 zxBLgRuNpvdDQV+DMU+vXxPwMoyZmlFg139l4RG4kVL4thkTlyERIDtYuwZC39FOztQe2g6R9
 zvEkRx+PQ5lbllCeZNqcSkQ4RT6z8ppY3/7tlBEGUM6JiGT6ZfjhkFCIVUSp/DGlCMHfcZdBx
 M+JeFje4Beh1DdCc1jtdewTqyARfgew4jhFZBdxrH/cst3q6RcA5RtQ5UJBFXFRSAoMsCY6Ob
 iWsmZaOn+xkNUVbwV0RJlqwuexIf1Xk7U2IJ/Dg3WuihpJxkQJboGXSlyOS2GiwFCQSHSBku3
 SI0LHfL7U145lCAm+Ia2+yFLQxwvtbeEdFHe4e4218x82NXpm7p6NmxDEb5iz47oqIRsAm8D1
 FUpAblvWWqyK1onXY/ECIi3fNryfaVIdHAfPp7s3F04pMNA6C2yexgspNtEo+no02IiiH86gC
 oim+okUTaqKjDW6wrZqfyng0wnLN9lreSq3pB5k0ohtYIQWMEID4gcmM4gOTYf7cgZHc2fpgi
 cOk9ZpFSECYNkKgpx
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 10, 2020 at 10:50:11AM +0100, Greg Kroah-Hartman wrote:
> On Sun, Mar 08, 2020 at 07:22:07PM +0000, Malcolm Priestley wrote:
> > >>>   */
> > >>>  #undef __NO_VERSION__
> > >>>
> > >>> +#include <linux/bits.h>
> > >>>  #include <linux/etherdevice.h>
> > >>>  #include <linux/file.h>
> > >>>  #include "device.h"
> > >>> @@ -802,8 +803,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,
> > >>>
> > >>>  	netdev_hw_addr_list_for_each(ha, mc_list) {
> > >>>  		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
> > >>> -
> > >>> -		mc_filter |= 1ULL << (bit_nr & 0x3f);
> > >>> +		mc_filter |= BIT_ULL(bit_nr);
> > >>
> > >> Are you sure this does the same thing?  You are not masking off bit_nr
> > >> anymore, why not?
> > >
> > > My reasons are exposed below:
> > >
> > > The ether_crc function returns an u32 type (unsigned of 32 bits). Then the right
> > > shift operand discards the 26 lsb bits (the bits shifted off the right side are
> > > discarded). The 6 msb bits of the u32 returned by the ether_crc function are
> > > positioned in bit 5 to bit 0 of the variable bit_nr. Due to the right shift
> > > happens over an unsigned type, the 26 new bits added on the left side will be 0.
> > >
> > > In summary, after the right bit shift operation we obtain in the variable bit_nr
> > > (unsigned of 32 bits) the value represented by the 6 msb bits of the value
> > > returned by the ether_crc function. So, only the 6 lsb bits of the variable
> > > bit_nr are important. The 26 msb bits of this variable are 0.
> > >
> > > In this situation, the "and" operation with the mask 0x3f (mask of 6 lsb bits)
> > > is unnecessary due to its purpose is to reset (set to 0 value) the 26 msb bits
> > > that are yet 0.
> >
> > The mask is only there out of legacy originally it was 31(0x1f) and the
> > bit_nr spread across two mc_filter u32 arrays.
> >
> > The mask is not needed now it is u64.
> >
> > The patch is fine.
>
> Ok, then the changelog needs to be fixed up to explain all of this and
> resent.

Ok, I will create a new version patch with all of this information and I will
resend it.

>
> thanks,
>
> greg k-h

thanks,

Oscar
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
