Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2442C33C0A0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 16:58:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 377834E51E;
	Mon, 15 Mar 2021 15:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9W-F-LbnIqts; Mon, 15 Mar 2021 15:58:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD1FE4B601;
	Mon, 15 Mar 2021 15:58:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE5181BF338
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 15:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABBAA83661
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 15:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HZfgefU47Huy for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 15:58:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3E6B8355F
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 15:58:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A12764ED2;
 Mon, 15 Mar 2021 15:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615823889;
 bh=3ji+Q6uY/D0rI03EiK2D5j+YzlmQX7UrPD4ibSY9pes=;
 h=Date:From:To:Cc:Subject:From;
 b=ZUqZqoaiH1LEngvzBROnmPz6AH7yewKwWQFfYI5Xgzmf1mui/3BMTl/pLuvh7mo0b
 V/o/iwLYRjONi5xXW8a7B9vC9QOIdLt9/dKVlm9R/23DReUInpVtvObCWYJpvL71W/
 Ezd0jXPzdUdU/hwJbpAayxyBYmyEPpNuOoiP0Emg=
Date: Mon, 15 Mar 2021 16:58:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: driverdev mailing list is moving!
Message-ID: <YE+EDpgrEU35GoNq@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: linux-staging@list.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

After almost 14 years of being hosted by OSUOSL, the driverdev mailing
list is moving to lists.linux.dev.  This should help out with the
occasional mailman issues that driverdev had at times, and is one of the
first lists to help stress-test the new linux.dev mailing lists
infrastructure.

As the scope of this list has changed a lot since it was first created
in 2007, the new name of the list reflects what it has really been for
the past decade or so, a place for patches and development of the
drivers/staging/ subsystem in the Linux kernel.  As such, the new list
address is:
	linux-staging@lists.linux.dev

To sign up for it, go to:
	https://subspace.kernel.org/lists.linux.dev.html
and follow the instructions there.

I'll send a patch to move the list address that is in the MAINTAINERS
file to point to the new list, and this old list will probably be
retired in a month or so after everyone realizes to use the new one.

Thanks so much to OSUOSL for hosting this for so long, and for putting
up with the odd requirements of a tiny mailing list that does not
restrict postings from non-subscribers.  They have done a great job with
this over the years.

If anyone has any questions about this, please let me know.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
