Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D2E1B85F1
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 13:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 66068204B1;
	Sat, 25 Apr 2020 10:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4vB-x8DsJpVf; Sat, 25 Apr 2020 10:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 22DBC203FB;
	Sat, 25 Apr 2020 10:56:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF7171BF5A6
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C4586203FB
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 10:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dBYh7mpnj6sl for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 10:56:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B29B20021
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 10:56:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6649320714;
 Sat, 25 Apr 2020 10:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587812189;
 bh=5WUhtskZxlE9n338vkgbHZfKEH8M1JzBUBkWJZF/qo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KoTEhf54SHrrXeIMq57jRFSwhq7z8lmvBEhiN2G45IYURC5nB2kO3riLOXxhhVS9i
 86ZuHW9IFyzVOWxsKA2t8qYJTqTPNtB1u4n7T5TkrHfU9F5e7iLfx7i2K1F3q1S714
 f3mV3oAuCkuhdy++lr18EtT4E9i6CFAcsl8vZ0kg=
Date: Sat, 25 Apr 2020 12:56:26 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v3 0/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Message-ID: <20200425105626.GA2071483@kroah.com>
References: <20200423153836.5582-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423153836.5582-1-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, "John B. Wyatt IV" <jbwyatt4@gmail.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 23, 2020 at 05:38:34PM +0200, Oscar Carter wrote:
> This patch series checks the return value of vnt_control_out_* function
> calls.
> 
> The first patch checks the return value and when necessary modify the
> function prototype to be able to return the new checked error code.
> 
> The second patch removes the documentation of functions that their
> prototype has changed as the function names are clear enought. Also,
> the actual documentation is not correct in all cases.
> 
> Changelog v1 -> v2
> - Remove the function's documentation instead of fix them as suggested
>   Malcolm Priestley.
> 
> Changelog v2 -> v3
> - Rebase against the staging-next branch of Greg's staging tree.

Are you sure?  It still doesn't apply :(

Please try again.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
