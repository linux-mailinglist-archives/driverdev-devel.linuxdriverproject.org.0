Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB2BE768D
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 17:37:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27FE2204D5;
	Mon, 28 Oct 2019 16:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AgWDhzaEmOdS; Mon, 28 Oct 2019 16:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 869F1204BA;
	Mon, 28 Oct 2019 16:37:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CA601BF330
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 16:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A88286303
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 16:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id peTV2SbaPHnQ for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 16:37:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B22DB862B1
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 16:37:04 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8042CAD08;
 Mon, 28 Oct 2019 16:37:02 +0000 (UTC)
Date: Mon, 28 Oct 2019 09:35:37 -0700
From: Davidlohr Bueso <dave@stgolabs.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Message-ID: <20191028163537.b2pspgdl6ceevcxv@linux-p48b>
References: <20191027221530.12080-1-dave@stgolabs.net>
 <20191028155354.s3bgq2wazwlh32km@linux-p48b>
 <20191028162412.GA321492@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028162412.GA321492@kroah.com>
User-Agent: NeoMutt/20180716
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, wahrenst@gmx.net,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 28 Oct 2019, Greg KH wrote:
>This is obviously not in a format I can apply it in :(

What are you talking about? I sent you the original patch,
then Cc'ed the drivers mailing list. So you still have a
patch you can apply... this is quite a common way of doing
things (Ccing for future references to someone or another
ml). I don't understand why you are hairsplitting over this
patch.

Thanks,
Davidlohr
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
