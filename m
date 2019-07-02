Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F2E5CF69
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jul 2019 14:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA95586C53;
	Tue,  2 Jul 2019 12:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sfVo9Sy7MN2H; Tue,  2 Jul 2019 12:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82F0385C20;
	Tue,  2 Jul 2019 12:28:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 712511BF25B
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 12:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B90485C20
 for <devel@linuxdriverproject.org>; Tue,  2 Jul 2019 12:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8Sj-WqqdngP for <devel@linuxdriverproject.org>;
 Tue,  2 Jul 2019 12:28:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D058F85BA9
 for <devel@driverdev.osuosl.org>; Tue,  2 Jul 2019 12:28:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28E1820836;
 Tue,  2 Jul 2019 12:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562070505;
 bh=FjfBIbH0kOz+SGRfOSJPjKHyfuRjSgiXO29xImynHtk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yg5rAW8umxtBwHAFKsPutjGbD0dNDqsLY9NnYntkRsCQCYPZM+vdr63gMfN15/Mk/
 SYb4D5UwWIdi0jrAS9Vkyg+3dvMUV8ri3VhD5UcmuNs9yok5HuGkaDxAkpJ4La/e9F
 lXGuR12uiwR3rx1sZkKBfvWeMUXxcoHC5mJp0rV0=
Date: Tue, 2 Jul 2019 14:28:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriel Beauchamp <beauchampgabriel@gmail.com>
Subject: Re: [PATCH v4] Staging: most: fix coding style issues
Message-ID: <20190702122822.GA12794@kroah.com>
References: <20190630165604.2452-1-beauchampgabriel@gmail.com>
 <20190702122403.4557-1-beauchampgabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702122403.4557-1-beauchampgabriel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gustavo@embeddedor.com,
 linux-kernel@vger.kernel.org, colin.king@canonical.com, joe@perches.com,
 christian.gromm@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 02, 2019 at 05:24:03AM -0700, Gabriel Beauchamp wrote:
> This is a patch for the core.[ch] files that fixes up warnings
> found with the checkpatch.pl tool.
> 
> Signed-off-by: Gabriel Beauchamp <beauchampgabriel@gmail.com>

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

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
