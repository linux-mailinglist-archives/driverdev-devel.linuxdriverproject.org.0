Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7DAE41CD
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 04:48:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DBB68793D;
	Fri, 25 Oct 2019 02:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbMminwmIkk7; Fri, 25 Oct 2019 02:48:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E70F8875D1;
	Fri, 25 Oct 2019 02:48:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DED491BF387
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA6FC86958
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aHN7_0rihs7i for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 02:48:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4A9FA86938
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 02:48:48 +0000 (UTC)
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2AC421D7F;
 Fri, 25 Oct 2019 02:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571971728;
 bh=L4DLVp2hZ/o4RJN3rGahjsfhwF0etIeief3IP0yUQH0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JX7ReB90jHSaOwKSrULomev4Yp3u8LLIMnaZWbtGNieit+Sogd0G8fvVexeqrZL6C
 qsagBnhKVgFk9xthSMguPnIMBfrPLCod1RCMvPyXi1MQ+aPxnOfGqcpj0AqxZjhskB
 kzYCk0K0LA88Re95SINmxvbyj5U2nB7ESy0bfhv8=
Date: Thu, 24 Oct 2019 22:43:08 -0400
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH 8/8] staging: exfat: Update TODO
Message-ID: <20191025024308.GA331878@kroah.com>
References: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
 <20191023052752.693689-9-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023052752.693689-9-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 23, 2019 at 01:27:51AM -0400, Valdis Kletnieks wrote:
> Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>
> ---
>  drivers/staging/exfat/TODO | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)

I can't take patches without any changelog text, sorry :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
