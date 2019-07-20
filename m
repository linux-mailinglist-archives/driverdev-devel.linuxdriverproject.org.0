Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9386F03B
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Jul 2019 19:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDCAE20515;
	Sat, 20 Jul 2019 17:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zg79Pit1vNQS; Sat, 20 Jul 2019 17:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 047FD204C1;
	Sat, 20 Jul 2019 17:36:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45B111BF33D
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 17:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E3718639E
 for <devel@linuxdriverproject.org>; Sat, 20 Jul 2019 17:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ew6v7Qorossy for <devel@linuxdriverproject.org>;
 Sat, 20 Jul 2019 17:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A9DEB8638F
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 17:36:22 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id f17so11516780pfn.6
 for <devel@driverdev.osuosl.org>; Sat, 20 Jul 2019 10:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/jFzEFbXL8zNeFrvM9gtQJVw7kMPeTM3qxkr4uBXj7g=;
 b=UPapH70G8Pzu1pg1x2Iha2h7FKvzz82Nv9TupdtGdQWcSvvtDW6XgGpOhzb6+WWvvO
 UyfByHF80wwI3MBKlBxATaAcS70wQ/N/BvPtoBw6juTuTyuJklnyo6YO+oOVveKIzcTK
 tQdXFARugh8oJMlOzbMXXFpzPXLBElc+7dUjTIB2RKUCS+Rkr/k0HEdNeFEbvAGuUUra
 0gGFoYoIOnBF5r+ljjENAr3kJLaZWURQ28WEyUwNl6P5dnd8GjgifxRLfQNjGT4ki4G5
 QCOIQlE+j15jXUoY3hw4bBKyO7hThGIdgKO4yOIaFXqV+h+G338QIjXtWmzL1ngNUWpn
 X2/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/jFzEFbXL8zNeFrvM9gtQJVw7kMPeTM3qxkr4uBXj7g=;
 b=X09qJVfdCC4oEYOBlMSOl67mfSdoEOLRUzTh1VibPoQ/Lcfu4qFU30Eec3ZXMk0yM3
 vqIi1rFqdgSDKhhVuvez0xx0r1nij8TwiWqD4XnXxRmImwt+pEqrk43bfoc/I8WKRNsU
 hFQKBaZrfwmUfO3prxHBSyUkWkmDlMUuCDRiR0xVbZS5L89S30IzizOzI8d+eanmBWM1
 6rDaQJ2mc7YnJ6kf3aaaHGiOBgiY/nzWh/d2hZqHnmnjWCicui0DTIiZnpwF+eKsWflO
 nUbJ1iSvSCp1XQKA3OPhNnm2o+AEpkOF0ORFjLZMy/HBKhgDO7jYmooFOjF/K7yjzGF2
 pjbw==
X-Gm-Message-State: APjAAAVgDhFntCiTMrPQF8XmQTQ0n9k6Yk5Htd4spvm8Y3icpr8gzn7S
 5KWVmbwzeyRAZgHYb/SrMxs=
X-Google-Smtp-Source: APXvYqxNNZGDJ1Z3eY/IfJfUVpvisSu3W4uOc+tNJWgFyRdKEailjCJybjrD7z7wlYqd/BifdGEweQ==
X-Received: by 2002:a63:d944:: with SMTP id e4mr60439916pgj.261.1563644182185; 
 Sat, 20 Jul 2019 10:36:22 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id f197sm34302222pfa.161.2019.07.20.10.36.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 20 Jul 2019 10:36:21 -0700 (PDT)
Date: Sat, 20 Jul 2019 23:06:15 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH v3] staging: kpc2000: Convert put_page to put_user_page*()
Message-ID: <20190720173615.GA4323@bharath12345-Inspiron-5559>
References: <20190719200235.GA16122@bharath12345-Inspiron-5559>
 <SN6PR02MB4016754FE1BB6200746281A2EECB0@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB4016754FE1BB6200746281A2EECB0@SN6PR02MB4016.namprd02.prod.outlook.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "jhubbard@nvidia.com" <jhubbard@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "jglisse@redhat.com" <jglisse@redhat.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 19, 2019 at 08:59:02PM +0000, Matt Sickler wrote:
> >From: Bharath Vedartham <linux.bhar@gmail.com>
> >Changes since v2
> >        - Added back PageResevered check as suggested by John Hubbard.
> >
> >The PageReserved check needs a closer look and is not worth messing
> >around with for now.
> >
> >Matt, Could you give any suggestions for testing this patch?
> 
> Myself or someone else from Daktronics would have to do the testing since the
> hardware isn't really commercially available.  I've been toying with the idea
> of asking for a volunteer from the mailing list to help me out with this - I'd
> send them some hardware and they'd do all the development and testing. :)
> I still have to run that idea by Management though.
> 
> >If in-case, you are willing to pick this up to test. Could you
> >apply this patch to this tree and test it with your devices?
> 
> I've been meaning to get to testing the changes to the drivers since upstreaming
> them, but I've been swamped with other development.  I'm keeping an eye on the
> mailing lists, so I'm at least aware of what is coming down the pipe.
> I'm not too worried about this specific change, even though I don't really know
> if the reserved check and the dirtying are even necessary.
> It sounded like John's suggestion was to not do the PageReserved() check and just
> use put_user_pges_dirty() all the time.  John, is that incorrect?
The change is fairly trivial in the upstream kernel. It requires no
testing in the upstream kernel. It would be great if you could test it
on John's git tree with the implemented gup tracking subsystem and check
if gup tracking is working alright with your dma driver. I think this
patch will easily apply to John's git tree.

Thanks!
Bharath
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
