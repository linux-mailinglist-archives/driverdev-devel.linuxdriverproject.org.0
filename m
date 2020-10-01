Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C687627FC0D
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 10:56:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D122686CF4;
	Thu,  1 Oct 2020 08:56:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2YrTr-l-I4N; Thu,  1 Oct 2020 08:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCA9D86B9E;
	Thu,  1 Oct 2020 08:56:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF6F21BF4E6
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 08:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9E0386B30
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 08:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CpOhmxZat9z4 for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 08:56:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9971186B0B
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 08:56:49 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F09B20B1F;
 Thu,  1 Oct 2020 08:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601542609;
 bh=+J+qcQm1lylyAZj+XzZr4MSDB+AbjdvfaTxhoz7fEV0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H+R048pzi27LF30Xg+VMXG6eoTkCkZicDUvSYvFPl8Zbvf8S4lTEIidwYFJ6vt6Qz
 vXyYNfd4p89PTgO32X4jQi+pgznVI/vYqBQRbc38aZrYlrCSUhXdyPRUOXLc06IN/j
 7G+ehx7ExGqhtI9oyAotdN3IhJR1a4zL9QoMykmA=
Date: Thu, 1 Oct 2020 10:56:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vchiq: Fix list_for_each exit tests
Message-ID: <20201001085650.GA1832570@kroah.com>
References: <20200928091103.GC377727@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928091103.GC377727@mwanda>
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>, Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 kernel-janitors@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 28, 2020 at 12:11:03PM +0300, Dan Carpenter wrote:
> This code code here used to be list_for_each() and after the loop then
> the "entry" pointer was non-NULL if we found the correct entry or NULL
> if we couldn't find it.  Then we changed the code to use list_for_each_entry()
> and so now the "entry" pointer is always non-NULL when we exit the loop.
> 
> I have introduced a new "found" variable to say if we found the correct
> enty or not.  I fixed one test by making it an else statement because
> that was more readable than testing "if (!found)".
> 
> Fixes: 46e4b9ec4fa4 ("staging: vchiq_arm: use list_for_each_entry when accessing bulk_waiter_list")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

This doesn't apply against my tree, what branch did you make it against?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
