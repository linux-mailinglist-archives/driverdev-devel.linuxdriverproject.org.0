Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 286F422517A
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 13:04:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AF7785BE4;
	Sun, 19 Jul 2020 11:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nnkhfn87Jn7W; Sun, 19 Jul 2020 11:04:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D0BF85BAE;
	Sun, 19 Jul 2020 11:04:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6157D1BF27F
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5DC1D85BB5
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 11:04:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iqmh9WSN84wz for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 11:04:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9F41385BAE
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 11:04:28 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D291C207DF;
 Sun, 19 Jul 2020 11:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595156668;
 bh=rUyPqN7o8n11Cuq/SsXI7IA/ehdlS6u9JPo8pQ6obYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zsX/3lfsy1Ub36Jau67UPnKyl3DBRtw/vDoLXbFs+/bIzT3vcaVvCxsyEs3k8/JC6
 YQKw9FHPotTJoQdwx70r+lXlJoXnZziDrI498/XX9IfDGfpNM8NqsE4BlthPREqGZd
 mjpgNrLOCCnUXjkNTHstbrZKuSo0sI8uYz38FBjM=
Date: Sun, 19 Jul 2020 13:04:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: B K Karthik <bkkarthik@pesu.pes.edu>
Subject: Re: [PATCH 2/4] staging: rtl8188eu: include: fixed multiple
 parentheses coding style issues
Message-ID: <20200719110439.GA266150@kroah.com>
References: <20200718091626.uflhdcgkmhqij5b7@pesu-pes-edu>
 <20200719092652.GA257887@kroah.com>
 <CAAhDqq1LNQ=UfCaNojZ+wf2+njQ+7jD8Yvr1AG1TSrcByfMo+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhDqq1LNQ=UfCaNojZ+wf2+njQ+7jD8Yvr1AG1TSrcByfMo+g@mail.gmail.com>
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

On Sun, Jul 19, 2020 at 05:35:04AM -0400, B K Karthik wrote:
> On Sun, Jul 19, 2020 at 5:26 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Sat, Jul 18, 2020 at 05:16:26AM -0400, B K Karthik wrote:
> > > fixed multiple parentheses coding style issues reported by checkpatch.
> > >
> > > Signed-off-by: B K Karthik <karthik.bk2000@live.com>
> > > ---
> > >  drivers/staging/rtl8188eu/include/ieee80211.h |  4 +--
> > >  .../staging/rtl8188eu/include/osdep_service.h |  4 +--
> > >  drivers/staging/rtl8188eu/include/wifi.h      | 34 +++++++++----------
> > >  3 files changed, 21 insertions(+), 21 deletions(-)
> >
> > You can never add warnings to the build, like this patch did.  Always
> > test-build your patches at the very least...
> 
> understood, I will definitely do that.
> but these warnings are (mostly) [-Wunused-value] and [-Wformat].
> that should not have (?) occurred due to the usage of parentheses.

They are not there _before_ your patch, and only show up _after_ your
patch, so perhaps your patch is wrong?  :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
