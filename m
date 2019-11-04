Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 100BAEE509
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 17:47:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB3148A606;
	Mon,  4 Nov 2019 16:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nkzpNuCFrG9s; Mon,  4 Nov 2019 16:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C618686E2A;
	Mon,  4 Nov 2019 16:46:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF4191BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D94DE8757C
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6OW+7tqkaXH for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 16:46:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 623198733D
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 16:46:56 +0000 (UTC)
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A96272084D;
 Mon,  4 Nov 2019 16:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572886016;
 bh=sYcDK73tFZoyMTCPD69+QGP17PeoJr16f74gTN3ha84=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dTD9s701LlwjQ8YBFR3DBhM4ey5e2rsTqm6aoJbfy/OYQx1JtWJ1SjnK0yLjgK13C
 VXHASmfPa5h01/kOkHPwg3CfoqDTFWTzeSWxo9uC9ZDNPUbiEPlrDz3t4R/JtBa+70
 p3Wevx6vzSuIat6qt3sRrEvlwllcQt7PjE46P99A=
Date: Mon, 4 Nov 2019 17:46:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
Message-ID: <20191104164653.GA2281588@kroah.com>
References: <20191104163331.68173-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104163331.68173-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 abbotti@mev.co.uk, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 04, 2019 at 04:33:31PM +0000, Jules Irenge wrote:
> Rewrite macro function with the GNU extension typeof
> to remove a possible side-effects of MACRO argument reuse "x".
>  - Problem could rise if arguments have different types
> and different use though.

You can not just get away with a potential problem by documenting it :)

You might have just broken this.  Why are you trying to "fix" something
that is not broken?

What is wrong with the code as-is?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
