Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2A5182E30
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 11:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31DC488B0C;
	Thu, 12 Mar 2020 10:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mBj4t2Ag80Wm; Thu, 12 Mar 2020 10:49:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDCFD88AB5;
	Thu, 12 Mar 2020 10:49:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 064431BF424
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 10:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 00576265F1
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 10:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iIROnpRPJH-t for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 10:49:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E6AC265D6
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 10:49:23 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.70,544,1574118000"; d="scan'208";a="439991803"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 11:49:21 +0100
Date: Thu, 12 Mar 2020 11:49:20 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
In-Reply-To: <20200312113416.23d3db5c@elisabeth>
Message-ID: <alpine.DEB.2.21.2003121145540.2418@hadrien>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
 <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
 <20200312113416.23d3db5c@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, daniel.baluta@gmail.com,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
 Shreeya Patel <shreeya.patel23498@gmail.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Thu, 12 Mar 2020, Stefano Brivio wrote:

> Hi Lakshmi,
>
> On Wed, 11 Mar 2020 19:42:06 -0700
> Lakshmi Ramasubramanian <nramas@linux.microsoft.com> wrote:
>
> > On 3/11/2020 6:58 AM, Shreeya Patel wrote:
> >
> > > Remove unnecessary if and else conditions since both are leading to the
> > > initialization of "phtpriv->ampdu_enable" with the same value.
> > >
> > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> >
> > Stating this based on the patch descriptions I have seen.
> > Others, please advise\correct me if I am wrong.
> >
> > Patch description should state the problem first[1] and then describe
> > how that is fixed in the given patch.
> >
> > For example:
> >
> > In the function rtw_update_ht_cap(), phtpriv->ampdu_enable is set to the
> > same value in both if and else statements.
> >
> > This patch removes this unnecessary if-else statement.
>
> That's my general preference as well, but I can't find any point in the
> "Describe your changes" section of submitting-patches.rst actually
> defining the order. I wouldn't imply that from the sequence the steps
> are presented in.
>
> In case it's possible to say everything with a single statement as
> Shreeya did here, though, I guess that becomes rather a linguistic
> factor, and I personally prefer the concise version here.

https://kernelnewbies.org/PatchPhilosophy suggests:

In patch descriptions and in the subject, it is common and preferable to
use present-tense, imperative language. Write as if you are telling git
what to do with your patch.

It provides the following as an example of a good description:

    somedriver: fix sleep while atomic in send_a_packet()

    The send_a_packet() function is called in atomic context but takes a mutex,
    causing a sleeping while atomic warning.  Change the skb_lock to be a spin
    lock instead of a mutex to fix.

So this illustrates the order that Lakshmi suggests, even though I don't
think that order is ever suggested explicitly.  On the other hand it
avoids "This patch...", which would add some clutter, in my opinion.

julia

>
> --
> Stefano
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312113416.23d3db5c%40elisabeth.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
