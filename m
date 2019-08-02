Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C6F80257
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 23:55:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4AD08765E;
	Fri,  2 Aug 2019 21:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXjmur6LCg1N; Fri,  2 Aug 2019 21:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ACBC7875A9;
	Fri,  2 Aug 2019 21:55:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A59D71BF3A7
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 21:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A2DAD86456
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 21:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IX753NXMODrw for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 21:55:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7CC2486427
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 21:55:08 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id a93so34066716pla.7
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 14:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3v959y3cG5ZVzOws7Yf1+skokBCt8eVG73f/LVI45bE=;
 b=V3Hpl9HrCUyugLTACvQdLDIAxuPF+z+eQixtnPJTDCaVCGqGU3IOij7fUVmLgwP7DC
 kQsEQblIgYdkFfFqFq4v2ktFDIaHIH/kCq1OBFMuF8o7rptFY8SBTg8EoRTkXEjlTurv
 KIZm3oKsVAnb4XyKjVGi+Hn+e5zG1vs7oLSePanBwPr0YzLP4aaBpuGQn8/fdTV7+6oe
 xKS1Pv+c4Ete30omsGWcP5Z3WeeZsfWBVvUefvXezmibpeBQsoFH5/4YukI8C6jrhkef
 Y+jacXlaIVVCM7PKXLNKr3dnRQPPNji4bTwvii5cKhoD05JsyLdacylOm5WB2LGGTOgI
 k4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3v959y3cG5ZVzOws7Yf1+skokBCt8eVG73f/LVI45bE=;
 b=tezexg53HV+uLql1P7+ncdRZMHbrP+XdADxzqwyXyQ76sEhz/nIrNqSjJ0v5WsGEn6
 C7amom7DhwLbxoBri8IUw56O4k/q7V5lygcUV1QWuG0FS8LoFtO1viH6jUhIYP1KPfZI
 SBi6NY8vRX6FBiNe840Dl6ffgTWKe61g48VVXIxQ4HWaNXGKAgRTdLqrqGkJPtya7h2z
 hC0OhRRzWBpLr8RT63VEffoBw0YUZ+Ni3SuMhE9zrSh4JI6gDNFH9FsVHscuPPYRBI3o
 xyn62xVwN/GK7QMvuWSLmWwHWaBqFWVgzjTpnrFRcxCZmyWCsu02K6Nen8PoRWU6bv8Y
 JNpg==
X-Gm-Message-State: APjAAAWsScUBcdoEuEsvRxTiDIkpVUVSNruInBhEtATjiJ92Xw0gwXI2
 /gPcGimqYQ3DXTBHeBWCpJw=
X-Google-Smtp-Source: APXvYqyQ65NF5GXQddSgKFl5futnv5t9QQ5mjPDSRTrAoLaT4aq/GyBekbHTh1tXi+6AxlMyrJ+RmQ==
X-Received: by 2002:a17:902:100a:: with SMTP id
 b10mr91768385pla.338.1564782908080; 
 Fri, 02 Aug 2019 14:55:08 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id r188sm121634800pfr.16.2019.08.02.14.55.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 14:55:08 -0700 (PDT)
Date: Fri, 2 Aug 2019 14:55:06 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
Subject: Re: [PATCH] isdn: hysdn: Fix error spaces around '*'
Message-ID: <20190802145506.168b576b@hermes.lan>
In-Reply-To: <20190802195602.28414-1-joseespiriki@gmail.com>
References: <20190802195602.28414-1-joseespiriki@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, isdn@linux-pingi.de,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri,  2 Aug 2019 19:56:02 +0000
Jose Carlos Cazarin Filho <joseespiriki@gmail.com> wrote:

> Fix checkpath error:
> CHECK: spaces preferred around that '*' (ctx:WxV)
> +extern hysdn_card *card_root;        /* pointer to first card */
> 
> Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>


Read the TODO, these drivers are scheduled for removal, so changes
are not helpful at this time.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
