Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD22EFCE0
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 17:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0450C87A00;
	Tue, 30 Apr 2019 15:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrwBu5kGd0pC; Tue, 30 Apr 2019 15:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7785F8591B;
	Tue, 30 Apr 2019 15:28:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0A51BF5AE
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 15:28:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B54184F96
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 15:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vnzxDtXrvEQO for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 15:28:21 +0000 (UTC)
X-Greylist: delayed 00:08:48 by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF5B98254E
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 15:28:21 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 95B2013CFD;
 Tue, 30 Apr 2019 11:19:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 30 Apr 2019 11:19:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=animalcreek.com;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=mesmtp; bh=PqdKVmAegcUY+01jWk7gCCUC
 FnxdsWffSKcoSAyZrz0=; b=KLGl4dDWcypYzghgDsD+u5AdKCTJx0WYYG32QPOk
 VRAEAvLki/saXIZ+FELVvNyd7eBf2kY+a+Lgyt+d3XlYyd/rIlyohecS7+qW6g9e
 49Kp6aYvS5jv3QcTTDrFEKcl8zesN2nSOQEpftwDoDcraREJhwRM6FjNQ+gVfrfv
 Jjw=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=PqdKVm
 AegcUY+01jWk7gCCUCFnxdsWffSKcoSAyZrz0=; b=Xse+7eu6e+7sB7A3vfrfLJ
 UXqM/IAhrTe87qCpxc0Z7GbAFLTuYr2KNo6haKf5T+UOy8kVtyq4PXYpW5yNVK6h
 tovKSlKwUijGrJcrcjgs+6dMZpjU/TzEpkUDKrnJa2mmM5n0FMiyF3Fww+QCXSk2
 +SpHuaGG3oOxg3Q+kL+kLvM/hMwRbY+V02tQSy67kRTkJvM8UR+wtjzWbnWwcZvm
 2JV+oTolMHJRr8Ppt4S1smYPPmgbKu5x+U/EAsjMHD6XWfVJHkmAjZyq2nOZCkp0
 9TNee8DAGrr1WC+slp8v5rMuPfuKYq/SGRd00fLPVakamG5VrYplpN6T01bv1v8g
 ==
X-ME-Sender: <xms:gmfIXNIp3cgHm5z8P87KAp4zfzY5ZS_E_R4aKo-nfR_eV_Zx6humzQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrieehgddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujghofgesthdtredttdervdenucfhrhhomhepofgrrhhk
 ucfirhgvvghruceomhhgrhgvvghrsegrnhhimhgrlhgtrhgvvghkrdgtohhmqeenucfkph
 epieekrddvrdekjedrleehnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmghhrvggvrhes
 rghnihhmrghltghrvggvkhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:gmfIXAMRsaPLqfhQUsdfwSRIsOaWifswxzpnBY04sYzPHfRHrKLaUQ>
 <xmx:gmfIXNYROxrkfHO9y3_UupmN1f78ui2nxLhrcW1JjYak2qzBoYvOWA>
 <xmx:gmfIXEyQgwzU5MKiqAZNI3cZSNthcGfmFgflccqtzXSqTEtRkpX6yA>
 <xmx:hGfIXOtcc0O3WEiGO4HvZqWv4cKhud4QyMiawWAcTNunwmyh_u1ZBQ>
Received: from blue.animalcreek.com (ip68-2-87-95.ph.ph.cox.net [68.2.87.95])
 by mail.messagingengine.com (Postfix) with ESMTPA id 84A6B103CC;
 Tue, 30 Apr 2019 11:19:30 -0400 (EDT)
Received: by blue.animalcreek.com (Postfix, from userid 1000)
 id DEAC8A21364; Tue, 30 Apr 2019 08:19:28 -0700 (MST)
Date: Tue, 30 Apr 2019 08:19:28 -0700
From: Mark Greer <mgreer@animalcreek.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH] greybus: audio_manager: fix a missing check of
 ida_simple_get
Message-ID: <20190430151928.GA1854@animalcreek.com>
References: <20190314064525.15756-1-kjlu@umn.edu>
 <CAAs364_6MpywkbsFdZrT5TEdrD8+u1eTmg-8_KY0dypy_PgMxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAs364_6MpywkbsFdZrT5TEdrD8+u1eTmg-8_KY0dypy_PgMxQ@mail.gmail.com>
Organization: Animal Creek Technologies, Inc.
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Kangjie Lu <kjlu@umn.edu>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, pakki001@umn.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 15, 2019 at 10:49:46AM +0530, Vaibhav Agarwal wrote:
> On Thu, Mar 14, 2019 at 12:15 PM Kangjie Lu <kjlu@umn.edu> wrote:
> >
> > ida_simple_get could fail. The fix inserts a check for its
> > return value.
> >
> > Signed-off-by: Kangjie Lu <kjlu@umn.edu>
> > ---
> >  drivers/staging/greybus/audio_manager.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/staging/greybus/audio_manager.c b/drivers/staging/greybus/audio_manager.c
> > index d44b070d8862..c2a4af4c1d06 100644
> > --- a/drivers/staging/greybus/audio_manager.c
> > +++ b/drivers/staging/greybus/audio_manager.c
> > @@ -45,6 +45,9 @@ int gb_audio_manager_add(struct gb_audio_manager_module_descriptor *desc)
> >         int err;
> >
> >         id = ida_simple_get(&module_id, 0, 0, GFP_KERNEL);
> > +       if (id < 0)
> > +               return id;
> > +
> >         err = gb_audio_manager_module_create(&module, manager_kset,
> >                                              id, desc);
> >         if (err) {
> 
> Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>

I am sorry for not responding until now.  For some strange reason, email
from this list are being delayed.  I just got this today (April 30).

Thanks for the patch, Kangjie, and thanks for the review, Vaibhav.

And FWIW,

Reviewed-by: Mark Greer <mgreer@animalcreek.com>

Mark
--
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
