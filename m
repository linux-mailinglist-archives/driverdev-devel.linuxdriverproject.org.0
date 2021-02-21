Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AFA320A6D
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 939A56F4B4
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSKOEVcf6jVl for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 13:09:10 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id BB8B66F4D4; Sun, 21 Feb 2021 13:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB7546E6E7;
	Sun, 21 Feb 2021 13:08:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6095F1BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:08:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 59C35824EE
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoZ7F_xXFWA0 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:08:33 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id AD0C382FBE; Sun, 21 Feb 2021 13:08:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B3A12824EE
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:08:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D4E9A60238;
 Sun, 21 Feb 2021 13:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613912908;
 bh=vShBavP/ZvJGfxTF4LtPmeATUmF+zCbq/l6boSMYzXg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ai0wRaZ+otq64Ial1tJ+iC+hWflcUKYF3WcKACAGTFRAeEbiv1zYZf3i6vtOVl4bC
 T3/JHbJlHZJan3vWXM3xrIQTtp0rczrJL3pis5HQ3nxa4T4GngQOWflgikyH7i6o2u
 1EijHEnhYFJIFW6fGcppuj7u9wwvPaGBKMuVQXro=
Date: Sun, 21 Feb 2021 14:08:26 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Atul Gopinathan <atulgopinathan@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8192e: Change state information from u16
 to u8
Message-ID: <YDJbSgqTpBpIsbVB@kroah.com>
References: <20210220182154.9457-1-atulgopinathan@gmail.com>
 <20210220182154.9457-2-atulgopinathan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210220182154.9457-2-atulgopinathan@gmail.com>
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
Cc: tiwai@suse.de, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 11:51:55PM +0530, Atul Gopinathan wrote:
> The "CcxRmState" field in struct "rtllib_network" is defined
> as a u16 array of size 2 (so, 4 bytes in total).
> 
> But the operations performed on this array throughout the code
> base (in rtl8192e/) are all in byte size 2 indicating that this
> array's type was defined wrongly.
> 
> There are two situation were u16 type of this field could yield
> incorrect behaviour:
> 
> 1. In rtllib_rx.c:1970:
> memcpy(network->CcxRmState, &info_element->data[4], 2);
> 
> Here last 2 bytes (index 4 and 5) from the info_element->data[]
> array are meant to be copied into CcxRmState[].
> Note that "data" array here is an array of type u8.
> 
> 2. In function "update_network()" in staging/rtl8192e/rtllib_rx.c:
> memcpy(dst->CcxRmState, src->CcxRmState, 2);
> 
> Here again, only 2 bytes are copied from the source state to
> destination state.
> 
> There are no instances of "CcxRmState" requiring u16 data type.
> Here is the output of "grep -IRn 'CcxRmState'" on the rtl8192e/
> directory for reviewing:
> 
> rtllib_rx.c:1970:			memcpy(network->CcxRmState, &info_element->data[4], 2);
> rtllib_rx.c:1971:			if (network->CcxRmState[0] != 0)
> rtllib_rx.c:1975:			network->MBssidMask = network->CcxRmState[1] & 0x07;
> rtllib_rx.c:2520:	memcpy(dst->CcxRmState, src->CcxRmState, 2);
> rtllib.h:1108:	u8	CcxRmState[2];

You just changed the logic in line 1975 in that file, right?  Are you
_SURE_ that is ok?  Do you have a device to test this on?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
