Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675F117F419
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 10:50:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE76F886D9;
	Tue, 10 Mar 2020 09:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-rm-2J3UWpX; Tue, 10 Mar 2020 09:50:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2BCC885DE;
	Tue, 10 Mar 2020 09:50:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC4E51BF95C
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 09:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D8EE988662
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 09:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iKI2YMqZlM+x for <devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 09:50:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 56BDC885DE
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 09:50:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C6692467D;
 Tue, 10 Mar 2020 09:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583833814;
 bh=Zu/l5fryMW6NbrP4kqlO7eEbl7l/EtuRNKW9VU2dTOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cZWYPiukgKFacUoodHREbVxDOxigTZzXF4VAOl5wFscRpq7DlS/TVQ+3rNtlWREUO
 k9voy+NeQzCD8D7fAS8va/5qrZZx51k4Ql7uH6EKgkhgbEVgg7BpbxykGGLjxlJ1sQ
 VJMVJ5RXrlc76ZTnuWPjJlVWNSm5bCJXnsdFV5Og=
Date: Tue, 10 Mar 2020 10:50:11 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT_ULL() macro instead of bit
 shift operation
Message-ID: <20200310095011.GC2516963@kroah.com>
References: <20200307104929.7710-1-oscar.carter@gmx.com>
 <20200308065538.GF3983392@kroah.com> <20200308161047.GA3285@ubuntu>
 <561bc968-f88c-40e3-f53c-5c03f74f75ea@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <561bc968-f88c-40e3-f53c-5c03f74f75ea@gmail.com>
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
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 08, 2020 at 07:22:07PM +0000, Malcolm Priestley wrote:
> >>>   */
> >>>  #undef __NO_VERSION__
> >>>
> >>> +#include <linux/bits.h>
> >>>  #include <linux/etherdevice.h>
> >>>  #include <linux/file.h>
> >>>  #include "device.h"
> >>> @@ -802,8 +803,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,
> >>>
> >>>  	netdev_hw_addr_list_for_each(ha, mc_list) {
> >>>  		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
> >>> -
> >>> -		mc_filter |= 1ULL << (bit_nr & 0x3f);
> >>> +		mc_filter |= BIT_ULL(bit_nr);
> >>
> >> Are you sure this does the same thing?  You are not masking off bit_nr
> >> anymore, why not?
> > 
> > My reasons are exposed below:
> > 
> > The ether_crc function returns an u32 type (unsigned of 32 bits). Then the right
> > shift operand discards the 26 lsb bits (the bits shifted off the right side are
> > discarded). The 6 msb bits of the u32 returned by the ether_crc function are
> > positioned in bit 5 to bit 0 of the variable bit_nr. Due to the right shift
> > happens over an unsigned type, the 26 new bits added on the left side will be 0.
> > 
> > In summary, after the right bit shift operation we obtain in the variable bit_nr
> > (unsigned of 32 bits) the value represented by the 6 msb bits of the value
> > returned by the ether_crc function. So, only the 6 lsb bits of the variable
> > bit_nr are important. The 26 msb bits of this variable are 0.
> > 
> > In this situation, the "and" operation with the mask 0x3f (mask of 6 lsb bits)
> > is unnecessary due to its purpose is to reset (set to 0 value) the 26 msb bits
> > that are yet 0.
> 
> The mask is only there out of legacy originally it was 31(0x1f) and the
> bit_nr spread across two mc_filter u32 arrays.
> 
> The mask is not needed now it is u64.
> 
> The patch is fine.

Ok, then the changelog needs to be fixed up to explain all of this and
resent.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
