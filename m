Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D09659EF80
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 17:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 233BC23100;
	Tue, 27 Aug 2019 15:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mihHm-I7P-GD; Tue, 27 Aug 2019 15:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FC4C230FE;
	Tue, 27 Aug 2019 15:57:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71F681BF576
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E900868D0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMdvKCAFaQCf
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BA602866C4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:57:23 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id u16so19365853wrr.0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 08:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=H1torqY/P3gtGJ+ugePzQCECcZOx2AhSiXCBn05NB9k=;
 b=cO4L/q1kzop9jgA86USjSszzVAloN78q3oEiPirAOB4Db/ItlI+x+XMPuN7CWC9Hxz
 tk2oUjnpA4X4MNbxmck1DPpLnTOUFqLeLCfw88rJ2lS8ln2Ys5YFLg30QvIX4uBqbYVd
 XXVfgu39LO7WDOK8AJVUMZM++xiXnHF7e9L2kzsGY77acE3ON6GtDkWv6Ao3vjtVBDZd
 mGJY3BviFYW1l8aWnedED2o/EnJ045qiE/POJ6gPRvJXWhoSTKkS32R1D6hFgoiR69ZG
 cuXcOFrepIps47133hTTMVs8M1exwmU9faHNbp1ivqgvEaJwc1Z6GtH7iuEvh9SDsWYL
 /PbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=H1torqY/P3gtGJ+ugePzQCECcZOx2AhSiXCBn05NB9k=;
 b=QXOncydgQxh1poSRxIv+tHp0zkbcDpbjvJo5GEF/Cp8hgsaLJyKCKnlgkAxwWfNbmQ
 Uyeazv3EXk8xtso5e5Yu8isWE/PNHsBoIclNSIN0YleF29U9IkpJHKeSETUqyuGgBJE4
 82xZV4a+iSKoEmelkpFxAyYLgxkIvNHDdNwnXlg6S6UCe48ncq71adyCUXYhfvbo5cdC
 lcgifXYCwZ8e46vQvX1M50+PRrscpDMCS/7LAn6v6ZE6nO+FPF90nHhoRKSEer/OaUvB
 50BlbWoK4PqmxdZz1mHHQGO8HZOp5w8apOqAeNT+wjWWzuRqd7kxwayGH+NNAkeDpPZ5
 OJ2w==
X-Gm-Message-State: APjAAAVxWDjk6tGW1ZhR9QT4EeI04dvHHsQ8aiysRL67kMtnH2m0jG9s
 creRyBhB+Yen0IVuLgYw1Y8=
X-Google-Smtp-Source: APXvYqw1eVmS+SjnJwtinntp3LdrJ8JbR6zDEg86MR8gxyYXhMoa2ggTGXf8z78qW/ip4Bnmb32bsw==
X-Received: by 2002:a5d:6742:: with SMTP id l2mr29732445wrw.70.1566921442215; 
 Tue, 27 Aug 2019 08:57:22 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id f24sm4084979wmc.25.2019.08.27.08.57.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 08:57:21 -0700 (PDT)
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190827133611.GE23584@kadam> <20190827134557.GA25038@kroah.com>
 <m3d0gqisua.fsf@gmail.com> <20190827154308.GD534@kroah.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH 0/9] staging: move greybus core out of staging
In-reply-to: <20190827154308.GD534@kroah.com>
Date: Tue, 27 Aug 2019 16:57:20 +0100
Message-ID: <m3blwaiotb.fsf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 driverdev-devel@linuxdriverproject.org, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,
On Tue 27 Aug 2019 at 16:43, Greg KH wrote:
> On Tue, Aug 27, 2019 at 03:30:21PM +0100, Rui Miguel Silva wrote:
>> Hi,
>> On Tue 27 Aug 2019 at 14:45, Greg Kroah-Hartman wrote:
>> > On Tue, Aug 27, 2019 at 04:36:11PM +0300, Dan Carpenter wrote:
>> >> I can't compile greybus so it's hard to run Smatch on it...  I have a
>> >> Smatch thing which ignores missing includes and just tries its best.
>> >> It mostly generates garbage output but a couple of these look like
>> >> potential issues:
>> >
>> > Why can't you compile the code?
>> >
>>
>> I think we are missing includes in some of the
>> greybus header files.
>
> Really?  Where?  Builds fine here and passes 0-day :)
>

Yeah; just sent a patch to fix it.

Cheers,
   Rui
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
