Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A45233E9A
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 07:09:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 876D3869F7;
	Fri, 31 Jul 2020 05:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id doKiTx5sOF5C; Fri, 31 Jul 2020 05:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8566685BD0;
	Fri, 31 Jul 2020 05:09:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61CB61BF2A0
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 05:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D3A0886E1
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 05:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dtqLrZ5jf9xh for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 05:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D225E886DC
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 05:08:58 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id f9so6683835pju.4
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 22:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JHjIJTBJBTgUWoslHF7PITJJr5gm4KM0Yh2llRAmHQU=;
 b=SROeIPRYWuOnttEmX05+rUyOwgaBjAo/4WwbGvMOPdK9En4nNdSbjr7Aj7OYhpiByS
 +tne3VyOxlKLzhTu9d7x3C+PxsmmscHTGn4byZX/vrjmt3sni6L81/0keQmIM2LtI/m+
 IeqsOOSzWmI0pCrnM9djRCVez04i42STL8jcGUhis4CkvhGND4sk+6M6trR2mUsm6knB
 MawipyNHqeN+/dYHSQfA7EMptSfKqgSZVkGR1X4JYrHDCjkboQ7oMWb+75jg9S16H8Es
 V4vYJGvbKsXWyB8TUkJ6jvWdEUFuFag28As6LS5CmDbHWunVopjADRG4uk3qSt8HiFaL
 zJxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JHjIJTBJBTgUWoslHF7PITJJr5gm4KM0Yh2llRAmHQU=;
 b=eZC1HCCYK04Ofz5qEzIY9r60e5X3bShm39bUYUbitGAiA+F0TrLnnEkglZWj9zSQQ/
 jxkuc76XRzifdjkuLiZNML141WGYr4JYbfoQRR4uniG9RtoHj9MkSrnalyp1PlYLZL2+
 rzkqcW4u2eGAelDDqL5Zp4hRc4UamXE0KQtEMdBOJ+LTLsF/vWuf+dt7K0HP1DqlM/DW
 2a4Mk1EKyeaYD+Od01N2T5xpHD2oSQ38t2ms/3JC4zZJRtF2AC/b+9WZZrgESYFZ4yoy
 f3ekZTdim/a6bLSua/xqizvfE0269gHl/1o0Jw1qnbsatnz8SCQlFuis8LL9xJFT0MEN
 lL6g==
X-Gm-Message-State: AOAM5335DcX8aXgI6qCh6ylQxkxN03MMn9ejb00+c+NYLUhGse6Q1G0V
 /9kxz99fuHx6sLbN3Hdiudg=
X-Google-Smtp-Source: ABdhPJy7Oz3Df3DzUKcdAS+mro7JR56UBRqdXPWb3W3RXItZnZmuX3YFJA1+9iWxhbH/q3+TlAsvhg==
X-Received: by 2002:a63:3681:: with SMTP id d123mr2155531pga.317.1596172138333; 
 Thu, 30 Jul 2020 22:08:58 -0700 (PDT)
Received: from gmail.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id r4sm7227679pji.37.2020.07.30.22.08.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 Jul 2020 22:08:57 -0700 (PDT)
Date: Fri, 31 Jul 2020 10:38:52 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Colin Ian King <colin.king@canonical.com>
Subject: Re: issue with uninitialized value used in a comparison in
 gbcodec_mixer_dapm_ctl_put
Message-ID: <20200731050850.GA25458@gmail.com>
References: <7da6363c-9423-2b9f-029a-395cc8a932d7@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7da6363c-9423-2b9f-029a-395cc8a932d7@canonical.com>
User-Agent: Mutt/1.10.1+3 (f9293d646485) (2018-09-22)
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
 Alex Elder <elder@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 Johan Hovold <johan@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 30, 2020 at 05:02:22PM +0100, Colin Ian King wrote:
> Hi,
> 
> Static analysis with Coverity has detected an uninitialized value being
> used in a comparison.  The error was detected on a recent change to
> drivers/staging/greybus/audio_topology.c however the issue actually
> dates back to the original commit:

Thanks Colin for reporting the issue. I'll fix the same and share a 
patch soon.

--
Regards,
Vaibhav
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
