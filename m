Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58EF6805F
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:04:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16F4C86D11;
	Sun, 14 Jul 2019 17:04:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id maqaQ+VLtrHV; Sun, 14 Jul 2019 17:04:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CA6F85A70;
	Sun, 14 Jul 2019 17:04:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 926C61BF40B
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:04:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FCDC8452F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:04:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAcsaSnQLte9 for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:04:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 14DF784516
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:04:28 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id a27so9998113qkk.5
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 10:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fifFmsPpP77u9wn9Bi+cLuzl2ooK3wT2NlpPGgetbqQ=;
 b=GWHJnzpPem/cjvGASatoRSaiAB9BBZFDIYvrmGgVj2u5IOKLS6oWeaISk08IcyXBqr
 u+3X/iaGGriix4NneQL2oDn9JKSyTy15JV7A9NhDJKZ+oj67U/227zpPqvi+TXct1iIh
 JFjt2dX7sHcmuYAaXIGD8TH6tLu/MQyfBjAocsUbLGTFuVpXZBCo+nPJTvqrJ7bzSgiO
 dfYfixQcRyMWvp0Ka/SDYKi9lYzXIexKhqIBbfvvz3c6UWmC1zbm76ShVCLsTwojrlwR
 3TXKawqgYJXO0PJzlFc2AvoMyLX0fmsopvn1ISzgRhZBOhW/BFFgMfdnpSHebLz1OPfh
 Q9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fifFmsPpP77u9wn9Bi+cLuzl2ooK3wT2NlpPGgetbqQ=;
 b=t9GaXOlepKDonwK3C630zAXS+cv6kPG7U+gjCSew/cwTggYkGRBAJ4QDhSvpuHBKWZ
 B90WEn+vYJtU1HEilq967ZGC4m/BA7F3xC/wcZl/2IUT7BS/TVYZK3DZKcwkSm3CgtOb
 Sm/lsA9IRZ/9mRTgEh8w7qmz9knyipaPdYtYLY8tdW1r4YAbZGFJllTatiP/UrhPUqRN
 7HBzlytUP8cXfLxJgn+yzWL/dZd0Gj01Y3tNp0lO4KjRJOqqPHVjSGpmLCJ7i01nRp7T
 jJi9GXfXhvOzzdcmL7ACX5glKiyrM2hgZIxKmguo47HcE9rqtkQc0xwTjJw9I+HV+vRO
 PTug==
X-Gm-Message-State: APjAAAWIDKSIoIZFbaFCH4w1RoKZpXzskKp5xy4KvbLsB+pJs8z9Iojk
 NqEN+/EXjMbFqHPAvY4dD/G0cSkk5XoS
X-Google-Smtp-Source: APXvYqwRcksKUUflgv6z/92SVoaC+5Bz+I7zLvAWB4U35H7rkxhjCawisbZ7vv2azG2VmUgQ+kl/Ow==
X-Received: by 2002:ae9:ed4b:: with SMTP id c72mr13633944qkg.400.1563123867212; 
 Sun, 14 Jul 2019 10:04:27 -0700 (PDT)
Received: from keyur-pc (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.gmail.com with ESMTPSA id c45sm8017047qte.70.2019.07.14.10.04.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 10:04:26 -0700 (PDT)
Date: Sun, 14 Jul 2019 13:04:24 -0400
From: Keyur Patel <iamkeyur96@gmail.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v4] staging: most: Delete an error message for a failed memory
 allocation
Message-ID: <20190714170424.GA3615@keyur-pc>
References: <20190711175055.25157-1-iamkeyur96@gmail.com>
 <20190714164126.3159-1-iamkeyur96@gmail.com>
 <dd7867db-1089-7366-165f-6accba233c38@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd7867db-1089-7366-165f-6accba233c38@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I think commit message is clear enough to understand why this is needed.
You can send me what should I include in commit description and I will
add and send it again. Otherwise, Greg can comment on this.

Thanks.


On Sun, Jul 14, 2019 at 06:55:30PM +0200, Markus Elfring wrote:
> > ---
> > Changes in v4:
> 
> I find this change log still incomplete.
> 
> You have chosen to adjust the commit message once more.
> (Some contributors might be also not satisfied with this variant.)
> 
> Such a change requires to increase the corresponding patch version number,
> doesn't it?
> 
> Regards,
> Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
