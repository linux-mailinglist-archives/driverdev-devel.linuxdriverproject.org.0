Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 587B5251B8
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:17:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D9E385FB0;
	Tue, 21 May 2019 14:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZ6ZMm8Q8t9C; Tue, 21 May 2019 14:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60F3885F09;
	Tue, 21 May 2019 14:17:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 145C91BF4DD
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 118EB86ADD
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z7-yLEDh7cAC for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:17:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8409D86AD9
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:17:17 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB0172173C;
 Tue, 21 May 2019 14:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558448237;
 bh=aFgS3FRwlivx+ZhHeFRUtTp70UBdo7+6IUb/uvATLIw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U3/HE/2R/J0b4V2AG/ljjYYWi/HKEpZkLJ4WBTYBxoUWacExzlxNcC2yUcUC7/Man
 UKU+v89T6Ph6D5jFRQWju3rQLW5DxBMT1fgdWebTKbarcRnYBpFay3m03Ai43uIuJo
 2H+DF+7CU21t4P9UutVhsnToP/zce7H3obW5gCrg=
Date: Tue, 21 May 2019 16:17:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
Message-ID: <20190521141715.GA25603@kroah.com>
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
 <CAGngYiVNQrr2nKfGCdi8FzS5UnmGaDj_Gu_F0ZeOTMKX6_1Zuw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiVNQrr2nKfGCdi8FzS5UnmGaDj_Gu_F0ZeOTMKX6_1Zuw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Oscar Gomez Fuente <oscargomezf@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:13:58AM -0400, Sven Van Asbroeck wrote:
> On Fri, May 17, 2019 at 1:50 PM Oscar Gomez Fuente
> <oscargomezf@gmail.com> wrote:
> >
> > These changes solve a warning realated to an incorrect type inilizer in the function
> > fieldbus_poll.
> >
> > Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>
> > ---
> 
> I've reviewed your patch and tested it on a live system. Everything looks good.
> However, I believe that your commit message could be improved.
> 
> I am going to re-post this patch as v3 (keeping you as the author) but with
> a (hopefully) improved commit message. If you provide positive feedback,
> and nobody else has any comments, I will tag it with my Reviewed-by,
> which will hopefully be Greg's cue to take the patch.

Greg already took this patch a while ago :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
