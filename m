Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2519ECFC49
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 16:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 090FE22744;
	Tue,  8 Oct 2019 14:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wxBN9P82wkO; Tue,  8 Oct 2019 14:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF977204B8;
	Tue,  8 Oct 2019 14:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84BB91BF3C8
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 14:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 787DA226CA
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 14:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OHFLX6p8wCFc for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 14:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by silver.osuosl.org (Postfix) with ESMTPS id A26BC204B8
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 14:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570544557;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jMpWj4uOPxcgbjJ4IsWoC4M5sQShlFz4NNLvVWf/x6o=;
 b=O4brBh4z6/IxfMM84z05YKxso+JYYv7If1I47cFVub/Ssyx3MetzWB/3LcmkTritRB8Fq0
 aeq6ystCewRMI6Clw5ynLGJamkdCaDlVCUYl8uZRYYpuf/eivP0L9+XTpaUxsfgPP38059
 Xbqu2Woj8onxCvDwVO4bpJoNce/cD3Q=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-ER-B98mTOgC6PdXmK_ycBQ-1; Tue, 08 Oct 2019 10:22:32 -0400
Received: by mail-lf1-f69.google.com with SMTP id w22so2268583lfe.2
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 07:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=izWGXNhra/3fh2DCf3llnwEjW05viNBlyod0b16IslA=;
 b=S6tsLUzEm5hL1vIheDjxM7gPi1fZ5qePrhSXPQ4ohHrH08Ax+WVTVsaV55arJxWelN
 iQduS+FOnpRjpgl64/NNXk8jRy0Jwa9uQ91fMxJNloYyv1DPR2dySe1p1bp7BkCMw3SP
 tBYjt+wIXs4AukogbxLbMO6A3S4EA8ynnDJkGq8/O23vfzvmg0qTlma0Gfs0VoB9ljPf
 AoBEg+Lb9B/LePSm5wq5lRHgbegd/kRdD9t6q6xPxqTR3ssU6VFCFIanfzBa6UqwQTXb
 nW8kkOpi870p57igRaVloJNWsUnjvXw619kB0uRHTJIxxNy3VsGhrn5aOBR58/hi4X+e
 JGEg==
X-Gm-Message-State: APjAAAUVZP1dBPWs5iJVS2NDBmsjs8ArRTquSTWUiKHTeqA2JcR1lSby
 Es8kCghtThbalawl2f3yo4UWD3tNU1u/QrYMI7qbA2qKKU7Amt3/d0MZl2pYwdYEpsdvzKtP7rP
 8BVLixh1XwYtC0qOn7kgsnuFURwb+3+Aq0GnmAQ==
X-Received: by 2002:a19:f617:: with SMTP id x23mr20131664lfe.97.1570544551474; 
 Tue, 08 Oct 2019 07:22:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwQ5BIwFckGkZoqMa3dajoTZI5b2H0V7PwZ9+q73PFB53Spl/+fGoimtc5lTyv7g1Hv5kaHN9PjZmq2Rci2J+I=
X-Received: by 2002:a19:f617:: with SMTP id x23mr20131648lfe.97.1570544551211; 
 Tue, 08 Oct 2019 07:22:31 -0700 (PDT)
MIME-Version: 1.0
References: <20191008123346.3931-1-mcroce@redhat.com>
 <20191008131518.GH25098@kadam>
In-Reply-To: <20191008131518.GH25098@kadam>
From: Matteo Croce <mcroce@redhat.com>
Date: Tue, 8 Oct 2019 16:21:54 +0200
Message-ID: <CAGnkfhxefH+3YKDWQMCOYoj1skcq6rUmHuiHZQ-76YixFqbQjg@mail.gmail.com>
Subject: Re: [PATCH] staging: vchiq: don't leak kernel address
To: Dan Carpenter <dan.carpenter@oracle.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-MC-Unique: ER-B98mTOgC6PdXmK_ycBQ-1
X-Mimecast-Spam-Score: 0
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
Cc: devel@driverdev.osuosl.org, LKML <linux-kernel@vger.kernel.org>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 8, 2019 at 3:16 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> The subject doesn't match the patch.  It should just be "remove useless
> printk".
>
> regards,
> dan carpenter
>

Well, it avoids leaking an address by removing an useless printk.
It seems that GKH already picked the patch in his staging tree, but
I'm fine with both subjects, really,

Greg?

-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
