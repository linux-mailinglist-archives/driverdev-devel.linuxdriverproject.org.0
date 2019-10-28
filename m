Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C9DE753D
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 16:33:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 279FE86DD3;
	Mon, 28 Oct 2019 15:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkncpnvI5aiN; Mon, 28 Oct 2019 15:33:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14E9E8667B;
	Mon, 28 Oct 2019 15:33:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04C601BF35C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:33:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE852204A7
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 15:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xyO20P9O9hY1 for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 15:33:49 +0000 (UTC)
X-Greylist: delayed 00:11:14 by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 11002204A2
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 15:33:49 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B320CB20E;
 Mon, 28 Oct 2019 15:22:32 +0000 (UTC)
Date: Mon, 28 Oct 2019 08:21:08 -0700
From: Davidlohr Bueso <dave@stgolabs.net>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] staging: vc04_services: replace g_free_fragments_mutex
 with spinlock
Message-ID: <20191028152108.bjliafudxn3llysv@linux-p48b>
References: <20191027221530.12080-1-dave@stgolabs.net>
 <576df522-f012-9dd1-9dcc-b7e444e82ac6@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <576df522-f012-9dd1-9dcc-b7e444e82ac6@gmx.net>
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 28 Oct 2019, Stefan Wahren wrote:

>Hi Davidlohr,
>
>Am 27.10.19 um 23:15 schrieb Davidlohr Bueso:
>> There seems no need to be using a semaphore, or a sleeping lock
>> in the first place: critical region is extremely short, does not
>> call into any blocking calls and furthermore lock and unlocking
>> operations occur in the same context.
>>
>> Get rid of another semaphore user by replacing it with a spinlock.
>>
>> Signed-off-by: Davidlohr Bueso <dave@stgolabs.net>
>> ---
>> This is in an effort to further reduce semaphore users in the kernel.
>>
>thanks for this. Could please also send this to devel@driverdev.osuosl.org?

Ccing.

>
>I only need to know, has this been tested on the Raspberry Pi?

No testing has been done, I have no hardware to test this.

Thanks,
Davidlohr
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
