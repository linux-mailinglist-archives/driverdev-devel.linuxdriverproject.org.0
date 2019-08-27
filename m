Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B1E9E9D3
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 15:46:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A0FB8697E;
	Tue, 27 Aug 2019 13:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ermLo4e2tUoc; Tue, 27 Aug 2019 13:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA96683470;
	Tue, 27 Aug 2019 13:46:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E97C1BF85D
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 13:46:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A50A83470
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 13:46:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0uQAF5Mv1yR for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 13:46:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C5A281E4D
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 13:46:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB0172070B;
 Tue, 27 Aug 2019 13:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566913561;
 bh=307JSPdR4XjDhGEKX+iQOa/+57opZHEvbdDEfTYLKt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I0KKSZwBaJHvzJYQm3Y9mvqLwtlhAU8bAfl0DJ5MR64xYBdFWqonshX/LgfvxSKgs
 KMxJLf8OFoCLZOUg045PE1Vv2GVjO1HMHQgotlgQbydEEk5URXiWtMM/RisLmbMj/y
 8VNj1H1zKsbgLZBQoEKG/6SwUJMNHjaZt0IXpSP4=
Date: Tue, 27 Aug 2019 15:45:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 0/9] staging: move greybus core out of staging
Message-ID: <20190827134557.GA25038@kroah.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190827133611.GE23584@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827133611.GE23584@kadam>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 04:36:11PM +0300, Dan Carpenter wrote:
> I can't compile greybus so it's hard to run Smatch on it...  I have a
> Smatch thing which ignores missing includes and just tries its best.
> It mostly generates garbage output but a couple of these look like
> potential issues:

Why can't you compile the code?

> drivers/staging/greybus/operation.c:379 gb_operation_message_alloc() warn: check 'message_size' for integer overflows 'kzalloc()'

That should be checked on line 368, right?

> drivers/staging/greybus/light.c:1256 gb_lights_request_handler() warn: 'light->channels' double freed
> drivers/staging/greybus/light.c:1256 gb_lights_request_handler() warn: 'light->name' double freed

I don't understand this warning, how are these potentially double freed?

And the light.c file isn't moving out of drivers/staging/ just yet :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
