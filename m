Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E37C30DE65
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 16:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1EDF222EE7;
	Wed,  3 Feb 2021 15:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CQTyFsjn1IL4; Wed,  3 Feb 2021 15:40:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2122C22D33;
	Wed,  3 Feb 2021 15:40:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97A481BF842
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 15:40:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 942188711F
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 15:40:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXSUQOD2hpKN for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 15:40:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from knopi.disroot.org (knopi.disroot.org [178.21.23.139])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B64B187120
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 15:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 5B79A50DFC;
 Wed,  3 Feb 2021 16:40:10 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xOFF7CN_se8A; Wed,  3 Feb 2021 16:40:09 +0100 (CET)
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1612366808; bh=572RYnEdZPvTc6uEV7ZbHllb7N1pKqGfyb5MV+yJty0=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References;
 b=Rsl0EoIRhHO+vQXy3KtTUokY8rgFNXDciiZ80ljS1td49X5xkcAU/n68h7VU2Vzuz
 kDK4b/lzJQlyutN2HtI/ordrfAfq6k+Fu9eVUwDB24aw4Tu5homzs/dGyYwGPJcnP8
 9jmcym7MG5w6Qw5GAqrcoNfRDE49iBCIVPPUVpqoeIOz1evQNlpZ6uBhfy3J5Wl7Uf
 NJOObDRLmSS/cKVsZ3cTqs8gZqIOmB8XnBJr31MY+reFiUjMOvAJ/n2aEamyCKUmYi
 U56ms+5TiClI0OUf5GSWbCzWtpYVjwkcr218+5ZN3Ed0rnT32505dER0oS6K7pwWL1
 2T+2CgX+cyC2g==
Date: Wed, 03 Feb 2021 15:40:06 +0000
From: "Ayush" <ayush@disroot.org>
Message-ID: <c6ba066bcb9c2df4715e76539ccf5f67@disroot.org>
Subject: Re: [PATCH] staging: wimax/i2400m: fix coding style issues
To: "Greg KH" <gregkh@linuxfoundation.org>
In-Reply-To: <YBqWSO01Bt2rHHv2@kroah.com>
References: <YBqWSO01Bt2rHHv2@kroah.com>
 <20210203114720.263651-1-ayush@disroot.org>
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
Cc: devel@driverdev.osuosl.org, kuba@kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>
> - Your patch did many different things all at once, making it difficult
> to review. All Linux kernel patches need to only do one thing at a
> time. If you need to do multiple things (such as clean up all coding
> style issues in a file/driver), do it in a sequence of patches, each
> one doing only one thing. This will make it easier to review the
> patches to ensure that they are correct, and to help alleviate any
> merge issues that larger patches can cause.
>

Okay sir, I will break down the patch and send the patch series in v2.
 
> - It looks like you did not use your "real" name for the patch on either
> the Signed-off-by: line, or the From: line (both of which have to
> match). Please read the kernel file, Documentation/SubmittingPatches
> for how to do this correctly.
> 

Actually my legal name is only "Ayush", I do not have a last name.
I use my name as "Ayush Ayush" wherever I need last name.
So for signing off commits, should I use "Ayush Ayush" or "Ayush" will also work?

Regards,
Ayush
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
