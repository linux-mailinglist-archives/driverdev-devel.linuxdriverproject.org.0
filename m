Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC49276C5
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 09:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D95658807B;
	Thu, 23 May 2019 07:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6qbxYeUqsDU; Thu, 23 May 2019 07:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73D888803E;
	Thu, 23 May 2019 07:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0862B1BF847
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 02E838654C
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 07:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5OCgSEiyno-x for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 07:17:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7F21686542
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 07:17:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4E1C204FD;
 Thu, 23 May 2019 07:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558595836;
 bh=eiGOOX+EGA1KBiToSWBKualahQfAUa0B+ueJ5NG+3hA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ky26tUWoLRLmc9oFI55i6FmOCFtmJyYaUeQcO/BAX7wMD31mamubA8JN8SepI7iwB
 8nk/5BFfgliPziiTdoy+ulGp6nfazf/kSKFr/0jD6uAP13R6nrPPzTvi/LzG9UQODT
 XXPW6wM0pM/5dkpeE8gmD0enuH3x7lXiFHBwuTPM=
Date: Thu, 23 May 2019 09:17:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: unisys: visornic: Replace GFP_ATOMIC with
 GFP_KERNEL
Message-ID: <20190523071713.GA24998@kroah.com>
References: <20190522170530.GA4331@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522170530.GA4331@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Jann Horn <jannh@google.com>,
 sparmaintainer@unisys.com, linux-kernel@vger.kernel.org,
 David Ahern <dsahern@gmail.com>, Petr Machata <petrm@mellanox.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 10:35:30PM +0530, Hariprasad Kelam wrote:
> As per below information
> 
> GFP_KERNEL  FLAG
> 
> This is a normal allocation and might block. This is the flag to use in
> process context code when it is safe to sleep.
> 
> GFP_ATOMIC FLAG
> 
> The allocation is high-priority and does not sleep. This is the flag to
> use in interrupt handlers, bottom halves and other situations where you
> cannot sleep
> 
> And we can take advantage of GFP_KERNEL , as when system is in low
> memory chances of getting success is high compared to GFP_ATOMIC.
> 
> As visornic_probe is in  process context we can use GPF_KERNEL.

Ah, nice catch!  Will go queue this up now, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
