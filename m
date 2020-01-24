Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E03F4147A0D
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 10:10:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E11A87780;
	Fri, 24 Jan 2020 09:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2PHHLLIZXE36; Fri, 24 Jan 2020 09:10:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2134687758;
	Fri, 24 Jan 2020 09:10:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1D6B1BF345
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 09:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E0EB22744
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 09:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uh+48K12CEUY
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 09:09:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D41B522739
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 09:09:59 +0000 (UTC)
Received: from localhost (unknown [145.15.244.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D1162071A;
 Fri, 24 Jan 2020 09:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579856999;
 bh=rea3EmV7u2KNNZC1+R4i6Q+h+282zVcY4BBrwF/VSrY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HFnesbcaNXM7IJQlzGdh51VQyXWGwbCKGmVv+fWrw/gypPlbBDK7eedTN/JHHo3N7
 aS0KKtN8kzP3C4GGt0mPLkEHQdlK+9xj4+sUPn2rREioyve0Vv7kcco5v1CilNf75g
 sI7TnYAqaE15QLord8fd3TT5BjN92LPVr1yqX8E0=
Date: Fri, 24 Jan 2020 10:09:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Message-ID: <20200124090955.GA2980450@kroah.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
 <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
 <20200123181837.GA1927902@kroah.com>
 <2dc825b7ff12cf90de21f9f2486952a935401dba.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2dc825b7ff12cf90de21f9f2486952a935401dba.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 24, 2020 at 08:56:56AM +0000, Christian.Gromm@microchip.com wrote:
> On Thu, 2020-01-23 at 19:18 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Thu, Jan 23, 2020 at 04:38:17PM +0100, Christian Gromm wrote:
> > > This patch makes the adapter drivers use their own device
> > > structures
> > > when registering a most interface with the core module.
> > > With this the module that actually operates the physical device is
> > > the
> > > owner of the device.
> > 
> > Ick, why?  The interface should be part of sysfs, right, and now it
> > isn't?
> 
> It still is. What has changed is that the device that actually
> represents the attached hardware is used (see probe function of
> the USB adapter driver for instance).

Ah.  Ick.  odd...

> > Who handles the lifetime rules of these interfaces now?  Why
> > remove this?
> 
> The struct device that is allocated when attaching a MOST device is
> handling the lifetime and the struct most_interface is
> representing this device in the kernel. Hence, registered with sysfs.
> 
> This ensures that the device is present in the kernel until its
> physical stature is being detached from the system.
> The core driver is just the man in the middle that registers the
> bus and itself as the driver and organizes the configfs, sysfs and
> communication paths to user space.
> 
> > 
> > Why isn't the interface dynamically created properly?  That should
> > solve
> > the lifetime rules here, right?
> 
> The interface is dynamically allocated. This happens inside the 
> USB, DIM2, I2C etc. drivers. The struct most_interface is part of
> the container struct there.

Ok, I'll take the first 7 of these patches and see what the end result
looks like after that, it will make reviewing the code easier...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
