Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2904255E91
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Aug 2020 18:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05A7186F8F;
	Fri, 28 Aug 2020 16:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L15jfNwgBvEU; Fri, 28 Aug 2020 16:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBD2886F89;
	Fri, 28 Aug 2020 16:06:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5381BF277
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 16:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87E4C88007
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 16:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M+MxdBC7vXlL for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 16:06:43 +0000 (UTC)
X-Greylist: delayed 01:26:00 by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 291AA87FFE
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 16:06:42 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (unknown [217.70.183.194])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id 209D63B08CC
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 14:27:26 +0000 (UTC)
X-Originating-IP: 93.34.118.233
Received: from uno.localdomain (93-34-118-233.ip49.fastwebnet.it
 [93.34.118.233]) (Authenticated sender: jacopo@jmondi.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 8FD584000D;
 Fri, 28 Aug 2020 14:27:17 +0000 (UTC)
Date: Fri, 28 Aug 2020 16:31:03 +0200
From: Jacopo Mondi <jacopo@jmondi.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 28/47] staging: vchi: Get rid of vchiq_shim's message
 callback
Message-ID: <20200828143103.2ljdrxk4py35ecu6@uno.localdomain>
References: <20200629150945.10720-1-nsaenzjulienne@suse.de>
 <20200629150945.10720-29-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200629150945.10720-29-nsaenzjulienne@suse.de>
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

Hi Nicolas,

   I'm working on a v2 of the bcm2835-isp support which was sent along
with UNICAM v4l2 driver and some misc changes you have collected in
this series. Reference to v1:
https://lore.kernel.org/linux-media/20200504092611.9798-1-laurent.pinchart@ideasonboard.com/

On Mon, Jun 29, 2020 at 05:09:26PM +0200, Nicolas Saenz Julienne wrote:
> As vchiq_shim's callback does nothing aside from pushing messages into
> the service's queue, let's bypass it and jump directly to the service's
> callbacks, letting them choose whether to use the message queue.

I admit this patch caused me some pain, as after a few days chasing
why the ISP got stuck in importing buffers into the VPU through the vc-sm-cma
driver I realized that this patch removed a significant part of the
process..

>
> It turns out most services don't need to use the message queue, which
> makes for simpler code in the end.
>
> -
> -	if (reason == VCHIQ_MESSAGE_AVAILABLE)
> -		vchiq_msg_queue_push(service->handle, header);

This one '-.-

I wonder if this was intentional and it is expected all services now
handle the message queue (it seems so according to your commit
message).

Fair enough, I could add in the vc-sma-cma callback a call to
vchiq_msg_queue_push() but I wonder if it wouldn't be better to do so
in vchiq_core.c:parse_rx_slots(), just before calling the service's
callback, so that this has not to be re-implemented in all services.

What would you suggest ?

And by the way I see mmal-vchiq.c:service_callback() releasing
messages but never pushing them to the queue. Is this intended as well ?

Thanks
  j

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
