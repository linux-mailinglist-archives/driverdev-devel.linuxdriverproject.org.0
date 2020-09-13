Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6B8267E35
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Sep 2020 08:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C748520495;
	Sun, 13 Sep 2020 06:52:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iW4txL0FcgVt; Sun, 13 Sep 2020 06:52:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F5152034B;
	Sun, 13 Sep 2020 06:52:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B20DB1BF5AD
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 06:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83CE4203B2
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 06:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJIRL0YubreD for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 06:52:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C9E432034B
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 06:52:33 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 360FB20758;
 Sun, 13 Sep 2020 06:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599979953;
 bh=QYxREwuDAmQft3utqpHUZWUl1/sO/MnfcFBotp09uMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SSiv3SlCHvXqrRD+4mHXIyycAUKcmDOAyonfvyBMOjHdeMBV6FaDm6WCZobPNhqBH
 acSia+4CxwrCA7vtPBJ8kvg0gzlXqlEzL/AMF1NupwbDP0t3iokPxpsDwmhSNwOv9o
 TVYLGTdGU+JAsIPKPNSWjos9mt9dQuioZO01FXbQ=
Date: Sun, 13 Sep 2020 08:52:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sohom Datta <sohom.datta@learner.manipal.edu>
Subject: Re: [RESEND PATCH] staging: rtl8188eu: Fix else after return WARNING
 (checkpatch)
Message-ID: <20200913065229.GA605627@kroah.com>
References: <230f781dcaadfc797a016cc6036d63efe6542062.camel@learner.manipal.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <230f781dcaadfc797a016cc6036d63efe6542062.camel@learner.manipal.edu>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 13, 2020 at 12:19:50PM +0530, Sohom Datta wrote:
> >From 4c8c8f3ff7f4d711daea4ac3bb987fcecc7ef1ed Mon Sep 17 00:00:00 2001
> From: Sohom <sohom.datta@learner.manipal.edu>
> Date: Sat, 12 Sep 2020 18:04:56 +0530
> Subject: [RESEND PATCH] staging: rtl8188eu: Fix else after return WARNING
>  (checkpatch)

Why is this in the body of your email?

Just use 'git send-email' to send the patch, no need to include it in
the body itself, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
