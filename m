Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD5C292111
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Oct 2020 04:12:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 330EA271D9;
	Mon, 19 Oct 2020 02:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5+NpM64Ya-Um; Mon, 19 Oct 2020 02:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84FDD236B5;
	Mon, 19 Oct 2020 02:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96CDE1BF3C4
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 02:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 932628758D
 for <devel@linuxdriverproject.org>; Mon, 19 Oct 2020 02:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XIeN-FSa3mUc for <devel@linuxdriverproject.org>;
 Mon, 19 Oct 2020 02:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA9ED87580
 for <devel@driverdev.osuosl.org>; Mon, 19 Oct 2020 02:12:36 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id h6so5119132pgk.4
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 19:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gSSl7RKNAw4tXQ+N5vKZ2jZJD5C6ie1Zau5pO0NfS3A=;
 b=FriraFrvI8WUy/RmtdBiB3O1Qi4b9xT+2FZ8vZkw1mAOityQotStjN5+IVkEIO3PUe
 0JUumqLSCXD5kg4Y+Q951HX2HASHS8qcymHBC0NVIgQnKYVXbB/O9jLyqa456L1dAMrG
 O7ZMzUdHqUrnEmdB6j5o17io/GZmnitH/1ofkUsnjl5Le9Ccj6rqSZF/rXGH3/N9SxgW
 KyXZc7DBi7UoYLr/BHKBFlLQ9e7wEN4/Pxu3XhmvLiHan+fZHg7VxW/qwpUB3dfcsrqp
 Zt6tuoOVXGAs3Gr+OZUJPOiveyq4gsSzSRnkc/wlaJWiGfa+gEKivOpVjndaXNmzdMR5
 U/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gSSl7RKNAw4tXQ+N5vKZ2jZJD5C6ie1Zau5pO0NfS3A=;
 b=mubLYFfJLdRyu6xH1gJSkvKfLKTJg3FluPye+BnmY0zwMRkZ2KzLbCISkv7Xbn3jiu
 jWymjzfhTR7kcbg7IeTw2EBqpyr1NViToY5/1hJXXfyHC81aF+vFV9++gIlDvAw9wcBm
 A70rqs8kpKv+8vBfa6aDS2M12t8dY8+62iCrpCve08n3bKaY4vYLcp91oGPzuiK8CcA2
 i+KP9IbFDAW8Ra0fjOwwrVhhNhQokB5Dg9cQUBBgHuCWXU7/2B3EMP/IkfhAFZXTaUtj
 fpPNY/+hWiKLWWUlagN+D/xWwBGbKYyZWAlqd0ZgcTTlFx1e8yn/RjWIcZFAzDXu+OgE
 Vg6w==
X-Gm-Message-State: AOAM530A6KEDbQauBZoSEBejZ0IFfeGu2an/XE2BDkKIkus483lCYrdI
 5jhs0pfhgwvmEoutcAxtOTY=
X-Google-Smtp-Source: ABdhPJyYeS2LbFnbuBj/B6mZ7VbBUXLnH/sbxZdr3GizUZWY3LYOLd+Rh1PpzDh5SVfp2nH3ZxE8zA==
X-Received: by 2002:a62:1c53:0:b029:155:e9e:d1da with SMTP id
 c80-20020a621c530000b02901550e9ed1damr14542999pfc.14.1603073556327; 
 Sun, 18 Oct 2020 19:12:36 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id q8sm9994570pfg.118.2020.10.18.19.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Oct 2020 19:12:35 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Mon, 19 Oct 2020 10:12:16 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v2 1/7] staging: qlge: replace ql_* with qlge_* to avoid
 namespace clashes with other qlogic drivers
Message-ID: <20201019021216.we4py3d2kqesaa6i@Rk>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-2-coiby.xu@gmail.com>
 <20201015010136.GB31835@f3> <20201016231631.efwu5a4a5f3jnrzv@Rk>
 <20201018110253.GA21325@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201018110253.GA21325@f3>
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
Cc: devel@driverdev.osuosl.org,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER" <GR-Linux-NIC-Dev@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 18, 2020 at 08:02:53PM +0900, Benjamin Poirier wrote:
>On 2020-10-17 07:16 +0800, Coiby Xu wrote:
>> On Thu, Oct 15, 2020 at 10:01:36AM +0900, Benjamin Poirier wrote:
>> > On 2020-10-14 18:43 +0800, Coiby Xu wrote:
>> > > To avoid namespace clashes with other qlogic drivers and also for the
>> > > sake of naming consistency, use the "qlge_" prefix as suggested in
>> > > drivers/staging/qlge/TODO.
>> > >
>> > > Suggested-by: Benjamin Poirier <benjamin.poirier@gmail.com>
>> > > Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> > > ---
>> > >  drivers/staging/qlge/TODO           |    4 -
>> > >  drivers/staging/qlge/qlge.h         |  190 ++--
>> > >  drivers/staging/qlge/qlge_dbg.c     | 1073 ++++++++++++-----------
>> > >  drivers/staging/qlge/qlge_ethtool.c |  231 ++---
>> > >  drivers/staging/qlge/qlge_main.c    | 1257 +++++++++++++--------------
>> > >  drivers/staging/qlge/qlge_mpi.c     |  352 ++++----
>> > >  6 files changed, 1551 insertions(+), 1556 deletions(-)
>> > >
>> > > diff --git a/drivers/staging/qlge/TODO b/drivers/staging/qlge/TODO
>> > > index f93f7428f5d5..5ac55664c3e2 100644
>> > > --- a/drivers/staging/qlge/TODO
>> > > +++ b/drivers/staging/qlge/TODO
>> > > @@ -28,10 +28,6 @@
>> > >  * the driver has a habit of using runtime checks where compile time checks are
>> > >    possible (ex. ql_free_rx_buffers(), ql_alloc_rx_buffers())
>> > >  * reorder struct members to avoid holes if it doesn't impact performance
>> > > -* in terms of namespace, the driver uses either qlge_, ql_ (used by
>> > > -  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
>> > > -  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
>> > > -  prefix.
>> >
>> > You only renamed ql -> qlge. The prefix needs to be added where there is
>> > currently none like the second example of that text.
>>
>> On second thoughts, these structs like ob_mac_iocb_req are defined in
>> local headers and there is no mixed usage. So even when we want to
>> build this diver and other qlogic drivers into the kernel instead of
>> as separate modules, it won't lead to real problems, is it right?
>
>Using cscope or ctags and searching for ob_mac_iocb_req will yield
>ambiguous results. It might also make things more difficult if using a
>debugger.
>
Even if I have been using gtags, I didn't realize it. Thank you for
explaining it to me.
>Looking at other drivers (ex. ice, mlx5), they use a prefix for their
>private types, just like for their static functions, even though it's
>not absolutely necessary. I think it's helpful when reading the code
>because it quickly shows that it is something that was defined in the
>driver, not in some subsystem.
>
Good point!

>I didn't think about it earlier but it would have been better to leave
>out this renaming to a subsequent patchset, since this change is
>unrelated to the debugging features.

It seems it's more reasonable to do renaming first. So in a sense, the
renaming is a preparatory step for the debugging features.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
