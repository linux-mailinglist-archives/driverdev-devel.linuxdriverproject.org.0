Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4E9A06B4
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 17:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 455FA88A81;
	Wed, 28 Aug 2019 15:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D1dNoe0e2F2l; Wed, 28 Aug 2019 15:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8C9D88367;
	Wed, 28 Aug 2019 15:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 657601BF574
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 15:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6279286DB0
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 15:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1HsautHRsbz for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 15:55:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B45D086DA1
 for <devel@driverdev.osuosl.org>; Wed, 28 Aug 2019 15:55:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F18672064A;
 Wed, 28 Aug 2019 15:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567007735;
 bh=tQRFz5FBxST6mtS6MWDtP5QUMOTJLLfdV2N7EFDFc1w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0q0wdtq123IDLqbBXDRtmh296cnujQtyhkRlKSmyYZwvePAI2wB/TwHdUIfKSGED
 FM9INEBsI6NpcyB8QvIMD2vYmkeepr8MMRNhoC0hQXzr1sfBjgc1M13yB1F73zmrEG
 AfHYrO6dcKAdJ5MLdYjni4s2Hic45aIo9NYLsSBk=
Date: Wed, 28 Aug 2019 17:55:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rui Miguel Silva <rui.silva@linaro.org>
Subject: Re: [PATCH v2] staging: greybus: add missing includes
Message-ID: <20190828155532.GB3803@kroah.com>
References: <20190827205917.8308-1-rui.silva@linaro.org>
 <20190828083519.GA29752@kroah.com>
 <0b740eb9-5ef4-8346-aa78-6b07bb060e7b@infradead.org>
 <m3blw9wc81.fsf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3blw9wc81.fsf@linaro.org>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 04:17:50PM +0100, Rui Miguel Silva wrote:
> Hi Randy,
> On Wed 28 Aug 2019 at 16:09, Randy Dunlap wrote:
> > On 8/28/19 1:35 AM, Greg Kroah-Hartman wrote:
> >> On Tue, Aug 27, 2019 at 09:59:17PM +0100, Rui Miguel Silva wrote:
> >>> Before moving greybus core out of staging and moving header files to
> >>> include/linux some greybus header files were missing the necessary
> >>> includes. This would trigger compilation faillures with some example
> >>> errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.
> >>>
> >>> So, add the necessary headers to compile clean before relocating the
> >>> header files.
> >>>
> >>> ./include/linux/greybus/hd.h:23:50: error: unknown type name 'u16'
> >>>   int (*cport_disable)(struct gb_host_device *hd, u16 cport_id); ^~~
> >>> ./include/linux/greybus/greybus_protocols.h:1314:2: error: unknown type name '__u8'
> >>>   __u8 data[0];
> >>>   ^~~~
> >>> ./include/linux/greybus/hd.h:24:52: error: unknown type name 'u16'
> >>>   int (*cport_connected)(struct gb_host_device *hd, u16 cport_id); ^~~
> >>> ./include/linux/greybus/hd.h:25:48: error: unknown type name 'u16'
> >>>   int (*cport_flush)(struct gb_host_device *hd, u16 cport_id); ^~~
> >>> ./include/linux/greybus/hd.h:26:51: error: unknown type name 'u16'
> >>>   int (*cport_shutdown)(struct gb_host_device *hd, u16 cport_id, ^~~
> >>> ./include/linux/greybus/hd.h:27:5: error: unknown type name 'u8'
> >>> u8 phase, unsigned int timeout);
> >>>      ^~
> >>> ./include/linux/greybus/hd.h:28:50: error: unknown type name 'u16'
> >>>   int (*cport_quiesce)(struct gb_host_device *hd, u16 cport_id, ^~~
> >>> ./include/linux/greybus/hd.h:29:5: error: unknown type name 'size_t'
> >>>      size_t peer_space, unsigned int timeout);
> >>>      ^~~~~~
> >>> ./include/linux/greybus/hd.h:29:5: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
> >>> ./include/linux/greybus/hd.h:1:1:
> >>> +#include <stddef.h>
> >>>  /* SPDX-License-Identifier: GPL-2.0 */
> >>> ./include/linux/greybus/hd.h:29:5:
> >>>      size_t peer_space, unsigned int timeout);
> >>>      ^~~~~~
> >>> ./include/linux/greybus/hd.h:30:48: error: unknown type name 'u16'
> >>>   int (*cport_clear)(struct gb_host_device *hd, u16 cport_id); ^~~
> >>> ./include/linux/greybus/hd.h:32:49: error: unknown type name 'u16'
> >>>   int (*message_send)(struct gb_host_device *hd, u16 dest_cport_id, ^~~
> >>> ./include/linux/greybus/hd.h:33:32: error: unknown type name 'gfp_t'
> >>> struct gb_message *message, gfp_t gfp_mask); ^~~~~
> >>> ./include/linux/greybus/hd.h:35:55: error: unknown type name 'u16'
> >>>   int (*latency_tag_enable)(struct gb_host_device *hd, u16 cport_id);
> >>>
> >>> Reported-by: kbuild test robot <lkp@intel.com>
> >>> Reported-by: Gao Xiang <hsiangkao@aol.com>
> >>> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> >>> Acked-by: Alex Elder <elder@kernel.org>
> >>> ---
> >>>
> >>> v1->v2:
> >>> lkp@intel:
> >>>   - added greybus_protocols.h include to svc.h header
> >>> Alex Elder:
> >>>   - remove extra line in operation.h
> >>>
> >>> Looks like lkp can now find missing headers that we can not :),
> >>> it must be the config. but it is right.
> >>>
> >>> Greg please note the new include in svc.h may need to be changed
> >>> when moving headers to include/linux
> >>
> >> As a version of your first patch is already in my tree, this one will
> >> not apply :(
> >>
> >> Can you just send a fix-up patch against my staging-next branch instead?
> >>
> >> thanks,
> >>
> >> greg k-h
> >> _______________________________________________
> >> devel mailing list
> >> devel@linuxdriverproject.org
> >> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> >>
> >
> > linux-next of 20190828 has these warnings:
> >
> > ./../include/linux/greybus/svc.h:91:18: warning: 'struct gb_svc_l2_timer_cfg' declared inside parameter list will not be visible outside of this definition or declaration
> > ./../include/linux/greybus/operation.h:188:34: warning: 'struct gb_host_device' declared inside parameter list will not be visible outside of this definition or declaration
> >
> >
> > Are they fixed by some of these patches?
> >
> 
> Yes, this [0] should fix it.

Which I just queued up, so it should show up in linux-next tomorrow.

thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
