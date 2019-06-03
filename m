Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6816C3308C
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 15:05:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9CE8A85135;
	Mon,  3 Jun 2019 13:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GQnSyQmSkz9P; Mon,  3 Jun 2019 13:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33ECD84524;
	Mon,  3 Jun 2019 13:05:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 504C01BF4D6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D75E84547
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fh78C-Ta-8t8 for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 13:05:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD52684524
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 13:05:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36E7C27F5E;
 Mon,  3 Jun 2019 13:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559567115;
 bh=hvxRq+vA9NJlN13fkQsg4UkvRkk5tlRIY54i7UP0W08=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F7REBrsAD78ynBHQ/dAPvj7q58oyGl8zRMPnwBFkThTZX7TVNNJRHOv5JVjgFdzaZ
 gHUEot/83QUyDDCxVeDHP3T98ENuNCQx5dz9Yxl9ecz6Ffrwz79ko1OkNq3OiZ3azZ
 hdB4ltHX4jF4s6BD68IjmUZ2DrKZggSDFU0ywiqU=
Date: Mon, 3 Jun 2019 15:05:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian =?iso-8859-1?Q?M=FCller?= <muellerch-privat@web.de>
Subject: Re: [PATCH 3/3] drivers/staging/rtl8192u: Fix of checkpatch-errors
Message-ID: <20190603130513.GB30732@kroah.com>
References: <20190603122104.2564-1-muellerch-privat@web.de>
 <20190603122104.2564-4-muellerch-privat@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603122104.2564-4-muellerch-privat@web.de>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 03, 2019 at 02:21:04PM +0200, Christian M=FCller wrote:
> Fix issues that lead to multiple checkpatch warnings and errors, most of
> them regarding formatting of code and comments.
> Comments that contain only commented out code are removed as well.
> =

> Signed-off-by: Felix Trommer <felix.trommer@hotmail.de>
> Signed-off-by: Christian M=FCller <muellerch-privat@web.de>


- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
