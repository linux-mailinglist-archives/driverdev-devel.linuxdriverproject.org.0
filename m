Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 886DB230CCA
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 16:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37246885F1;
	Tue, 28 Jul 2020 14:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXkgBjstdW9x; Tue, 28 Jul 2020 14:54:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5916F885CD;
	Tue, 28 Jul 2020 14:54:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C36E1BF284
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 14:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 96A7388020
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 14:54:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0jf5Se3atlt3 for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 14:54:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA0A587E7D
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 14:54:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C8C3206D8;
 Tue, 28 Jul 2020 14:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595948067;
 bh=V730kMX6gi4l1JTsK5YD4Pcw9JkPjjfnLeUGTsYVpI8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gmsLm8bW6XaI3S6LnzgvA/AjnfeP7OWLiE2gEkQ95Klip682iJNjZA21gHEeUb9w1
 Pq/3dS4Q4mDDf77FOANH1L0X4r6Ac8keeQq1gWUdsBrnXwvBhvs7NTzYqpj3Pur2cE
 kRnnGzu42k2xc64R8Z87uMYz/HYsoXw1U92e4HnY=
Date: Tue, 28 Jul 2020 16:54:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Subject: Re: [PATCH] media: usbvision: fixed coding style
Message-ID: <20200728145419.GA3537020@kroah.com>
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 hverkuil@xs4all.nl, stern@rowland.harvard.edu, jrdr.linux@gmail.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 28, 2020 at 08:00:04PM +0530, Dhiraj Sharma wrote:
> As per eudyptula challenge task 10 I had to fix coding styles.

That is not needed in a changelog text.

> Thus I
> used checkpatch.pl script and fixed a chunk of warnings and few errors.

Neither is this, please be specific about what you have fixed.  My bot
should kick in soon with more specifics...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
