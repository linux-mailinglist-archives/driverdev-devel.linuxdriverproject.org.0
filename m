Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 530B3190DE0
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 13:44:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 922F287F0A;
	Tue, 24 Mar 2020 12:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNgBUWQb0ugH; Tue, 24 Mar 2020 12:44:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5721187DC8;
	Tue, 24 Mar 2020 12:44:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 633E41BF280
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5FD6C8834C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wm9Gbj81kjFm
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:44:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA3D788345
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:44:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5645D20714;
 Tue, 24 Mar 2020 12:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585053870;
 bh=H309dYqoN4EDUiai5Jzeui6Hu4F0Rvyqc4m+2ayNzvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P9ewLyg2WDALNrL9JxWek8KkWIlagjrtc654fG7amjI10VV0hERPI6LROq+xu0v9t
 j19b21BcO6qKsb5QNHZQbDnzHsdscj+sv7wgPfWIuJVSaiIN5156btJfDT6/rs/g1Q
 cxeyCUMlkFQzBdhoSUGdJzvhxIZnIPCGGGgQYKH4=
Date: Tue, 24 Mar 2020 13:44:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [RESEND PATCH v5 0/3] staging: most: move core module out of
 staging
Message-ID: <20200324124428.GA2388007@kroah.com>
References: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
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

On Tue, Mar 10, 2020 at 02:02:39PM +0100, Christian Gromm wrote:
> v2:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>         - use -M option to create patches
> v3:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>         - fix date range in comment section of core.c
>         - move code to free up memory to release funtions
>         - remove noisy log messages
>         - use dev_* functions for logging
> v4:
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 	- change owner of struct device that is registered with kernel's
> 	  device/driver model
> 	- fix linked list race condition
> 	- fix logging behaviour
> 	- fix possible NULL pointer dereference
> v5:
> 	rebased and adapted

Sorry for the long delay on this, looks good, thanks for sticking with
this.

All now queued up.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
