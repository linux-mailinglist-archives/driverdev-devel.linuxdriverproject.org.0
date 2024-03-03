Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C0986F735
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Mar 2024 22:33:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A29B160AE7;
	Sun,  3 Mar 2024 21:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnWxmDODTCvo; Sun,  3 Mar 2024 21:33:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5C4360AF8
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5C4360AF8;
	Sun,  3 Mar 2024 21:33:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED4DC1BF33D
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 21:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6DFE81F6C
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 21:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJuiA00MzUB3 for <devel@linuxdriverproject.org>;
 Sun,  3 Mar 2024 21:33:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=gregkh@linuxfoundation.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3D26B81F69
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D26B81F69
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D26B81F69
 for <devel@driverdev.osuosl.org>; Sun,  3 Mar 2024 21:33:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E083760BBA;
 Sun,  3 Mar 2024 21:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1376AC433C7;
 Sun,  3 Mar 2024 21:33:16 +0000 (UTC)
Date: Sun, 3 Mar 2024 22:33:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Aman Sharma <210100011@iitb.ac.in>
Subject: Re: [PATCH] Staging: pi433: Updated bitrate range from datasheet
Message-ID: <2024030301-busily-composure-784e@gregkh>
References: <ddbd681a7504ae8b8fd4dc69270e804d@iitb.ac.in>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ddbd681a7504ae8b8fd4dc69270e804d@iitb.ac.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1709501597;
 bh=obTV5TTH9kmE4OBYAyNzzEkwDDH3N9hdBdw2ZrMrDiM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O9CEudH8ybKVRhyQ7SV2qsaVQSsMP9LIWRtHp+COREXp+Xpi+1V7iV3sYaFww3BNC
 EYX0K+d2GRrLnrQUrIaU4i10+9TO+I6dpj1IFBMi8jbI0ZlS+L/yec7yqxzcRW6Ohx
 jVZgHNEiXI5dKjJtt4rQiN7knBeqyRo9QYbQxZls=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=O9CEudH8
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 04, 2024 at 02:28:02AM +0530, Aman Sharma wrote:
> From a0528708b209739f0d566401bdd428e215abf366 Mon Sep 17 00:00:00 2001
> From: Aman Sharma <amansharma612002@gmail.com>
> Date: Mon, 4 Mar 2024 00:44:06 +0530
> Subject: [PATCH] Staging: pi433: Updated bitrate range from datasheet

Why is this all here in the changelog?  Also, please use
scripts/get_maintainer.pl, you have sent this to an obsolete email list.

> 
> Updated bitrate range for FSK and OOK modulation from datasheet.
> 
> Signed-off-by: Aman Sharma<amansharma6122002@gmail.com>
> ---
>  drivers/staging/pi433/Documentation/pi433.txt | 6 ++++--
>  drivers/staging/pi433/TODO                    | 1 -
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/pi433/Documentation/pi433.txt
> b/drivers/staging/pi433/Documentation/pi433.txt
> index 4a0d34b4ad37..9ce7282ef6f8 100644
> --- a/drivers/staging/pi433/Documentation/pi433.txt
> +++ b/drivers/staging/pi433/Documentation/pi433.txt
> @@ -78,7 +78,8 @@ rf params:
>  		Allowed values: 433050000...434790000
>  	bit_rate
>  		bit rate used for transmission.
> -		Allowed values: #####
> +		Allowed values (For FSK): 1200...320000
> +		Allowed values (For OOK): 1200...32768
>  	dev_frequency
>  		frequency deviation in case of FSK.
>  		Allowed values: 600...500000
> @@ -169,7 +170,8 @@ rf params:
>  		Allowed values: 433050000...434790000
>  	bit_rate
>  		bit rate used for transmission.
> -		Allowed values: #####
> +		Allowed values (For FSK): 1200...320000
> +		Allowed values (For OOK): 1200...32768

Where did these values come from?  If you can explain that in the
changelog text when you resend a v2, that would be great.

thanks,
greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
