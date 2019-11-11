Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 171A8F7A2B
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 18:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CFACA221D2;
	Mon, 11 Nov 2019 17:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gHgUNxglXMnq; Mon, 11 Nov 2019 17:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A7AA0220DD;
	Mon, 11 Nov 2019 17:48:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACF781BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A6A7F87594
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 17:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9XTcxe9Nnsn for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 17:48:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91BBD86C11
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 17:48:05 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0C0C20818;
 Mon, 11 Nov 2019 17:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573494485;
 bh=6apzf/QJW6InjRsMKp2H1gCrorF/S5IqlNmELXJRJMg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ajW/hvNbKXLtoiys8q9LrhFm/MZBB4fpadxcyPzO5gPhOJrnYWIJllehnGYFCEdcr
 fKQqocWmLenLfjlvFILyvXYatxhl3GoLfaqb4YRsDc1w+2KELLHtkg2Zi7f+TpsdaV
 i4iRzQV+FmImINVaQH6S4g4F69WBe1tbu6W+E5SE=
Date: Mon, 11 Nov 2019 18:48:02 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v2 1/3] staging: wfx: replace uintXX_t to uXX and intXX_t
 to sXX
Message-ID: <20191111174802.GA1083018@kroah.com>
References: <20191111133055.214410-1-jbi.octave@gmail.com>
 <22806545.kYr6eE9xQE@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22806545.kYr6eE9xQE@pc-42>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jules Irenge <jbi.octave@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 11, 2019 at 05:04:49PM +0000, Jerome Pouiller wrote:
> I know that uXX is prefered over uintXX_t. However, I dislike to change 
> 650 lines of code only for this purpose in one batch. It will generate 
> plenty of conflicts with branches currently in development. 

Now that the code is in the kernel tree, any "branches currently in
development" have to deal with what is merged upstream no matter if they
are tiny or big patches.  That's just the joy of working with upstream,
sorry.

If you want to do out-of-tree development, that's fine, but you can't
also want the code in-tree at the same time.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
