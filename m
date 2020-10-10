Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB7F289ECE
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 09:00:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6D1B86FDE;
	Sat, 10 Oct 2020 07:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRzfV2EGUHjf; Sat, 10 Oct 2020 07:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1817886FEE;
	Sat, 10 Oct 2020 07:00:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 955211BF84C
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:00:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 925C487773
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:00:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5eSIsmCBcRXS for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 07:00:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F9AA87498
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 07:00:11 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34B76207E8;
 Sat, 10 Oct 2020 07:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602313210;
 bh=pe+4amqH5ukXnmBdCIgLvkVQzzJBofYyjsBk6c7UY18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CfnpH+QDa+0haYKPm4ZDZpqqK2ywi8pwQm5jJfbJgTcdnzRQZnH5/HJ6dDF7Q/MZA
 pnRhMrdi9IBl6F8PjxY4qk5zBEOOFGlhBM+e7CGRPgw65vIW0nOHcWuBYcn1naZp5P
 oAJed6uVvEeg4gOlEYdcsi5tsz0/ZLwAYkxq0yzw=
Date: Sat, 10 Oct 2020 09:00:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Anant Thazhemadam <anant.thazhemadam@gmail.com>
Subject: Re: [PATCH] staging: comedi: check validity of wMaxPacketSize of usb
 endpoints found
Message-ID: <20201010070007.GB132110@kroah.com>
References: <20201009162030.293781-1-anant.thazhemadam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009162030.293781-1-anant.thazhemadam@gmail.com>
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

On Fri, Oct 09, 2020 at 09:50:29PM +0530, Anant Thazhemadam wrote:
> While finding usb endpoints in vmk80xx_find_usb_endpoints(), check if 
> wMaxPacketSize = 0 for the endpoints found.
> 
> Some devices have isochronous endpoints that have wMaxPacketSize = 0
> (as required by the USB-2 spec).
> However, since this doesn't apply here, wMaxPacketSize = 0 can be
> considered to be invalid.
> 
> Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> Tested-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com
> Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
> ---

You sent 2 patches with the same subject, which one is the "latest" one?
Please always version your patches and put below the --- line what
changed from the previous version, so that maintainers have a chance to
know which to accept...

Can you fix this up and send a v3?

thanks,
greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
