Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E82785446E0
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jun 2022 11:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E0E760BDF;
	Thu,  9 Jun 2022 09:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MH3Qb4Y8trKP; Thu,  9 Jun 2022 09:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F30B860C1C;
	Thu,  9 Jun 2022 09:06:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F06221BF2FD
 for <devel@linuxdriverproject.org>; Thu,  9 Jun 2022 09:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DEE9B60BDF
 for <devel@linuxdriverproject.org>; Thu,  9 Jun 2022 09:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awzgWatNbWuh for <devel@linuxdriverproject.org>;
 Thu,  9 Jun 2022 09:06:44 +0000 (UTC)
X-Greylist: delayed 00:07:25 by SQLgrey-1.8.0
Received: from smtp65.iad3b.emailsrvr.com (smtp65.iad3b.emailsrvr.com
 [146.20.161.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1719860B15
 for <devel@driverdev.osuosl.org>; Thu,  9 Jun 2022 09:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1654765158;
 bh=In6RdT6x1r/mPtfSfwq7LpTZ4jynKueaqKBZ7l1DSOQ=;
 h=Date:Subject:To:From:From;
 b=WRisZWnAWmy5VZbG4UaMxAnt/sDYJ+sY34w/21kRn6uMYu+LQpcQxR9+AaLEXUiuP
 dxnQgzXUjKe437B1xLsdo04TojxqfJUYnmdmZ8laXslwx9wOF99ukjpwCnWyscs8l3
 XgTP80xIAcStxOKxMfRlnuVZmpgzI7pt5ZK1dppY=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp17.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id D8849A00A6; 
 Thu,  9 Jun 2022 04:59:17 -0400 (EDT)
Message-ID: <04fe1a93-29a6-3c22-1046-00add4755055@mev.co.uk>
Date: Thu, 9 Jun 2022 09:59:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] Staging: comedi: comedi_fops: fixed a spacing coding
 style issue
Content-Language: en-GB
To: Agam Kohli <agamkohli9@gmail.com>, gregkh@linuxfoundation.org
References: <20220609045334.93266-1-agamkohli9@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20220609045334.93266-1-agamkohli9@gmail.com>
X-Classification-ID: d18b51b2-f877-4e58-8e48-03c7348855e5-1-1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/06/2022 05:53, Agam Kohli wrote:
> Fixed a coding style issue.
> 
> Signed-off-by: Agam Kohli <agamkohli9@gmail.com>
> ---
>   drivers/staging/comedi/comedi_fops.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index e85a99b68f31..3f70e5dfac39 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c

comedi moved out of "drivers/staging" in the 5.13 kernel.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
