Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 010A1303A0
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 22:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F9D0203DA;
	Thu, 30 May 2019 20:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a1PLlYuzEvnZ; Thu, 30 May 2019 20:55:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3507C203CC;
	Thu, 30 May 2019 20:55:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDFC31BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA5F686A24
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 20:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5YGIyquoGYIt for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 20:55:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 723E586A01
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 20:55:41 +0000 (UTC)
Received: from localhost (unknown [207.225.69.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3CC4B2618F;
 Thu, 30 May 2019 20:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559249741;
 bh=yDOA7GRN66OKf/HVf3rvvqoJO+w8MLOsyGWqaIIZXrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pVQxZ9OfBotKIjY+BdiEg0GPaJ/L49vuVoM5P9BCsB9uVQpMfo9JEL75Cya0l6T+9
 dqqMYdYrgn5zavUlWbn4yDGHhnWDdrIwRE5Gt2QoopT087/q9X3AkyUrMYSnaJv/BM
 a0JGeh6IAB+LZHYo1ALheQmVF1031YGUrgOEhlOI=
Date: Thu, 30 May 2019 13:55:40 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: media: davinci_vpfe: Remove variable vpfe_dev
Message-ID: <20190530205540.GA5308@kroah.com>
References: <20190530204718.29892-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530204718.29892-1-nishkadg.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, code@wizofe.uk, linux-kernel@vger.kernel.org,
 hans.verkuil@cisco.com, mchehab@kernel.org, ezequiel@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 31, 2019 at 02:17:18AM +0530, Nishka Dasgupta wrote:
> Remove variable vpfe_dev and replace it with its value (since the
> function otherwise uses values directly instead of local variables).

This says _what_ you do.  But we can see that in the patch itself.

You need to say _why_ you are doing this.

There's no need for this change at all.  Again, as I have said before,
we write code for developers to read first, the compiler second.  By
making these types of changes you are making it harder to
read/understand by a developer, and providing absolutely no benifit to
the compiler at all.

So it's actually making the code worse!

not good at all.

Please reconsider this type of change, as I keep asking you to.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
