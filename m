Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED9E25814C
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 20:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97E85869FE;
	Mon, 31 Aug 2020 18:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcnIA9pRIMAB; Mon, 31 Aug 2020 18:46:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3FF585A67;
	Mon, 31 Aug 2020 18:46:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC1151BF3C2
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 18:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A81D685F46
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 18:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id okE4p-FM4h_o for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 18:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B4AAC85F44
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 18:46:38 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 8B083ADD5;
 Mon, 31 Aug 2020 18:46:36 +0000 (UTC)
Message-ID: <6071c2947095db72f5357f30f932dfa66442294a.camel@suse.de>
Subject: Re: [PATCH v2 28/47] staging: vchi: Get rid of vchiq_shim's message
 callback
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jacopo Mondi <jacopo@jmondi.org>
Date: Mon, 31 Aug 2020 20:46:33 +0200
In-Reply-To: <20200828143103.2ljdrxk4py35ecu6@uno.localdomain>
References: <20200629150945.10720-1-nsaenzjulienne@suse.de>
 <20200629150945.10720-29-nsaenzjulienne@suse.de>
 <20200828143103.2ljdrxk4py35ecu6@uno.localdomain>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, dave.stevenson@raspberrypi.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 naush@raspberrypi.com, laurent.pinchart@ideasonboard.com,
 kernel-list@raspberrypi.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jacopo, sorry if I'm a little late with my replies but I'm on vacation. I'll
be back Sept 7th, but wanted to reply since I don't want to stop your work.

On Fri, 2020-08-28 at 16:31 +0200, Jacopo Mondi wrote:
> Hi Nicolas,
> 
>    I'm working on a v2 of the bcm2835-isp support which was sent along
> with UNICAM v4l2 driver and some misc changes you have collected in
> this series. Reference to v1:
> https://lore.kernel.org/linux-media/20200504092611.9798-1-laurent.pinchart@ideasonboard.com/
> 
> On Mon, Jun 29, 2020 at 05:09:26PM +0200, Nicolas Saenz Julienne wrote:
> > As vchiq_shim's callback does nothing aside from pushing messages into
> > the service's queue, let's bypass it and jump directly to the service's
> > callbacks, letting them choose whether to use the message queue.
> 
> I admit this patch caused me some pain, as after a few days chasing
> why the ISP got stuck in importing buffers into the VPU through the vc-sm-cma
> driver I realized that this patch removed a significant part of the
> process..

Sorry for the pain, I made my best to keep the downstream code in mind, and
also to keep the amount of functional changes needed in the services minimal.
That said, getting rid of VCHI is, IMO, a necessary step towards making VCHIQ
upstreamable.

> > It turns out most services don't need to use the message queue, which
> > makes for simpler code in the end.
> > 
> > -
> > -	if (reason == VCHIQ_MESSAGE_AVAILABLE)
> > -		vchiq_msg_queue_push(service->handle, header);
> 
> This one '-.-
> 
> I wonder if this was intentional and it is expected all services now
> handle the message queue (it seems so according to your commit
> message).

Indeed, it was intentional. Upstream services (mmal & audio) don't need it and
IIRC vchiq's ioctl interface has it's own queue implementation. So I figured it
would be best to keep its usage optional.

> Fair enough, I could add in the vc-sma-cma callback a call to
> vchiq_msg_queue_push() but I wonder if it wouldn't be better to do so
> in vchiq_core.c:parse_rx_slots(), just before calling the service's
> callback, so that this has not to be re-implemented in all services.
> 
> What would you suggest ?

Actually, in hindsight my suggestion would be to get rid of the vchiq message
queue altogether[1], keeping VCHIQ as simple as possible is a must if we want
to get it upstream, and since vc-sma-cma is the only queue user there is little
benefit to having a generic implementation. Let the service do it's own custom
queueing and just force all services to release the messages when they see fit.
It'll make for a simpler VCHIQ usage.

> And by the way I see mmal-vchiq.c:service_callback() releasing
> messages but never pushing them to the queue. Is this intended as well ?

Yes, sorry, it's pretty confusing. That call, vchiq_release_message(), has
nothing to do with the queue. It's the call that really gets the core to
release the message from its slot and the only mandatory thing to do after
receiving a message.

All in all VCHIQ isn't documented an pretty cryptic in its design. I don't
claim to be an expert. So feel free to contradict me anytime, I'll be happy to
work out something that fits all of us.

Regards,
Nicolas

[1] Here I mean vchiq_msg_queue_push() & vchiq_msg_hold()

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
