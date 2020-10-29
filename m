Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A4F29E8F7
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 11:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8744854F7;
	Thu, 29 Oct 2020 10:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 455rfP9uGKbp; Thu, 29 Oct 2020 10:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA6BD84FC9;
	Thu, 29 Oct 2020 10:29:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD8761BF41A
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 10:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA97586987
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 10:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kq3YwrbhLrGJ for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 10:29:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48D28869B6
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 10:29:29 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2E6F20782;
 Thu, 29 Oct 2020 10:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603967368;
 bh=eDNouMwfAkiromxxzvTEEY8/dwiXpUUMsSqp2SyTwYg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cRFnAUykbUa9YQUUF+cV72CvZM04bkeA5y2+5gY+ApFOFbxmgULMnhi46FL2Bhju/
 0/KTyBigOe8biQUv6iAigLUSdBiTEejzY7HO8O0cV/9D7GxH+jEGrzqzrfoFQhlTY4
 KKPfCZR7Kqc9Dp3R+E4mXPUbczInzJ0qHmZZwAA0=
Date: Thu, 29 Oct 2020 11:30:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH] drivers: staging: Fix spelling in comments
Message-ID: <20201029103018.GB3763875@kroah.com>
References: <20201029100759.21668-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201029100759.21668-1-unixbhaskar@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 29, 2020 at 03:37:59PM +0530, Bhaskar Chowdhury wrote:
> Fixed two spelling in two different comments.
> 
> s/defalut/default/p
> 
> This is in linux-next.

No need for this line, it doesn't make any sense here, right?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
