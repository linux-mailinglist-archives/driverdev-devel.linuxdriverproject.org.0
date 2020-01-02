Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EDD12E8BE
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 17:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 056DD20551;
	Thu,  2 Jan 2020 16:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O2S2C4OfQNrA; Thu,  2 Jan 2020 16:34:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0F9120413;
	Thu,  2 Jan 2020 16:34:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A27331BF593
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 16:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9854C85540
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 16:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eYI4sLmzx18 for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 16:34:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24441845A0
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 16:34:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81FBF20866;
 Thu,  2 Jan 2020 16:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577982885;
 bh=5Kp8ap/Tk/z4Hh1HhvEz36l6SkechDXcwS4trGtvr7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HELp7UlBrA0UawPyBI2eVrqWC3tbDaC78xoJIA7hR5PvuKjVXDS7wMmOt4MfVqyLW
 oavFwxm7t+DQA9zK10Cqq0rwtcWTB1G11B0VdsJZCfKK4hgCI603DjgxoDAOMEDDBa
 FSPUxymJVgn9oid/rIgVI+1kKdHPIi8bibUnU2v4=
Date: Thu, 2 Jan 2020 17:34:42 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcelo827@gmail.com>
Subject: Re: minor bug report in staging/vc04_services/
Message-ID: <20200102163442.GA177909@kroah.com>
References: <CA+saATVwyungoYC2WTZf7j=kp8YXbDGJ44DOWNePiK9VeLOETQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+saATVwyungoYC2WTZf7j=kp8YXbDGJ44DOWNePiK9VeLOETQ@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 02, 2020 at 11:24:09AM -0500, Marcelo Diop-Gonzalez wrote:
> Hi, I noticed couple minor bugs while looking around in
> drivers/staging/vc04_services/*:
> 
> 1. When opening "/dev/vchiq", vchiq_debugfs_add_instance() adds a debugfs
> directory named after the tgid of the process who opened the file. But
> there will be collisions if you try opening it multiple times from the same
> process.

Odd, but shouldn't cause any problems as no code paths should care if
debugfs works or not, it's only for debugging :)

> 2. In vchiq_dump_platform_instances(), called from vchiq_read(), each
> instance's ->mark member is used to track whether it's been printed
> already, but two concurrent readers could stomp on each other (causing one
> of them to see fewer instances than actually exist), since a field in the
> vchiq_instance struct itself is being modified with no
> locking/synchronization
> 
> I didn't want to send any patches out since I'm not sure if/how people
> would want to fix these, but thought I'd point them out.

Patches are always best, please feel free to submit to help resolve
these.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
