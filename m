Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA4E6B272C
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Mar 2023 15:41:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F4EA41006;
	Thu,  9 Mar 2023 14:41:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F4EA41006
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZR3OBl__Ag1; Thu,  9 Mar 2023 14:41:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4B4D41005;
	Thu,  9 Mar 2023 14:41:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4B4D41005
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D80D31BF3DF
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 14:41:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BFE4A41005
 for <devel@linuxdriverproject.org>; Thu,  9 Mar 2023 14:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFE4A41005
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9-BPMXVO6Bi for <devel@linuxdriverproject.org>;
 Thu,  9 Mar 2023 14:41:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF16E41006
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF16E41006
 for <devel@driverdev.osuosl.org>; Thu,  9 Mar 2023 14:41:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BBA4AB81E67;
 Thu,  9 Mar 2023 14:41:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11663C433D2;
 Thu,  9 Mar 2023 14:41:18 +0000 (UTC)
Date: Thu, 9 Mar 2023 15:41:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Santosh Mahto <eisantosh95@gmail.com>
Subject: Re: [PATCH] staging: android: ashmem.c: Declared file operation with
 const keyword
Message-ID: <ZAnwDL/GyCSC6xDa@kroah.com>
References: <20230305190057.17482-1-eisantosh95@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230305190057.17482-1-eisantosh95@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1678372879;
 bh=kJ/cQDrVKU2O5jbGyyeonMsCJOSRTfaSPyolev3MCfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tL6J6of6FlJ9PEKCUzzD0Vkx6U+AlUbs4H/274ZyL2qDFfANCQhHG4uawA1Pli0my
 oXarNV1619OuFNScqFpe948ApecfCvKfVIwloMof+VspaoYM/7pcrIfb4ytVD+OZDH
 /yxrSa3Jaj1OgQW4iWyb4UAOpCW7UGqND9wuwnB0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=tL6J6of6
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 06, 2023 at 12:30:57AM +0530, Santosh Mahto wrote:
> Warning found by checkpatch.pl script.
> 
> Signed-off-by: Santosh Mahto <eisantosh95@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-

What kernel did you make this against?  This is not in my tree anymore.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
