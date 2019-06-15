Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 876CF471BC
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2019 20:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30ADE85F6A;
	Sat, 15 Jun 2019 18:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5bcCyXtcZSi; Sat, 15 Jun 2019 18:52:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16E408514B;
	Sat, 15 Jun 2019 18:52:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 253ED1BF2A0
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 18:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 222CE8514B
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2019 18:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtcuRdEZIsWM for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2019 18:52:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E600083527
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 18:52:36 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 374B821841;
 Sat, 15 Jun 2019 18:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560624756;
 bh=M99q4/HQ+4Y/74fnc/bD3P3M1u3ivtN+4HrYjppkzAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MR90KTxqd2IppmmAO3/oulKkVOC4tLchGohQ7VIOQVtw4+rGYTo14eJvgueeoCN/A
 Gs/wHIJQM+UbsSVFlFjqr0hwRwIVPsWZHvGKuud+C9YP8qC3zjTruWaj50JD3Pphek
 661SnPj8GVZqbTLVsxR6xh3yU7oqp8i2Fwrc2WPY=
Date: Sat, 15 Jun 2019 20:52:34 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: hal: Remove return type of initrecvbuf
Message-ID: <20190615185234.GB10201@kroah.com>
References: <20190615172220.GA6344@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190615172220.GA6344@hari-Inspiron-1545>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, Larry Finger <Larry.Finger@lwfinger.net>,
 Josenivaldo Benito Jr <jrbenito@benito.qsl.br>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jun 15, 2019 at 10:52:20PM +0530, Hariprasad Kelam wrote:
> change return of initrecvbuf from s32 to void. As this function always
> returns SUCCESS .
> 
> fix checkpatch warning "Comparison to false is error prone"

That is doing multiple things in the same patch, please break this up :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
