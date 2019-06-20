Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A11C44CDE7
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 14:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A654C85F92;
	Thu, 20 Jun 2019 12:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0QIgsol_RU5; Thu, 20 Jun 2019 12:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8119585F88;
	Thu, 20 Jun 2019 12:44:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4910C1BF282
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 12:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 427DC85F88
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 12:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fgc93sDPm4Zk for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 12:44:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9FFF85F87
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 12:44:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F0332082C;
 Thu, 20 Jun 2019 12:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561034664;
 bh=c1rSzWptSdxxYx7mBfYCeDiH2JuZGxkohKszdGX95gY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Se/nyQTK9zv12raOigAW8XfX53KRu01qcWo3aa2YLl8OV0aD0EBUcapQrQ/pFFXL4
 KSGEw+L15cPNzUpUaoQusy5sym3ih3w0NpQ/+8Oc3zUo1Z7ddTOvjeSeqEC5JUGPj4
 i5lGS+QMo8FIcNvDLpdK/XQ4miVwPoK8CvpSgfak=
Date: Thu, 20 Jun 2019 14:44:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: HalBtc8723b1Ant: fix Using
 comparison to true is error prone
Message-ID: <20190620124422.GA28753@kroah.com>
References: <20190619180439.GA7217@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619180439.GA7217@hari-Inspiron-1545>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Wed, Jun 19, 2019 at 11:34:39PM +0530, Hariprasad Kelam wrote:
> This patch fixes below issue reported by checkpatch
> 
> CHECK: Using comparison to true is error prone
> CHECK: Using comparison to false is error prone
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Does not apply to my tree :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
