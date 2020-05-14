Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3D91D2877
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 09:04:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D797E88959;
	Thu, 14 May 2020 07:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jRXURdTdT2Bt; Thu, 14 May 2020 07:04:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E446888D4;
	Thu, 14 May 2020 07:04:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98ADE1BF389
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 07:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 954CE89356
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 07:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8aF8cPCzGLR8 for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 07:04:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C55E89285
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 07:04:51 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id a4so1631406lfh.12
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 00:04:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I9WnzFdmVQbheZ8Ai9Qer5xXiDc1MgImnC5EGlPBIDA=;
 b=NtdDuAdJ5CcN1uFU9Qm9V5s87zvsyk2qvicP4p1o5qZOtxLc8SWB3RnMKtaOpqRIa/
 j//aqiiK/zQVA2FH+09/yPIZYwcymLN2t72qriVFKxYDfdDWbbDU5+HPXQD3z32akvQG
 nM/GtV4xl2+oYoBzK82E+zCzeT/TADsx2NbRs5Cy+J+VEVnyKoyDqgcD1RiiRo1yDL/g
 yDDhFkm4UE1YxgQoQ99TU+P+pxFCHoAs91Iqkp4GzOwG203d+Lj33nfjP4stYO81ldmz
 8Nu5mq5OwUkJmiYjTaceaUIsOvjqMTj000qBwOJJbqxvxcvoOfUyhPMBSyznH/3cOCgO
 JbKQ==
X-Gm-Message-State: AOAM532YZVUt1+LRVEf6+V18g9HnGPIVF5fkKUGI73nIRRDGnBFY9ps6
 z6tbK6Ruepfo9P6YOpVPyuI=
X-Google-Smtp-Source: ABdhPJzbhRRGhNeIlXT1SpAvrdP+VLu4RYUXW0vcX5PRMC55VImUYwDNmGzuxiMOD5YnC/GXLi5E5A==
X-Received: by 2002:ac2:5542:: with SMTP id l2mr2220386lfk.113.1589439889686; 
 Thu, 14 May 2020 00:04:49 -0700 (PDT)
Received: from xi.terra (c-beaee455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.174.190])
 by smtp.gmail.com with ESMTPSA id c20sm937831ljk.59.2020.05.14.00.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 00:04:45 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jZ7vA-00018d-2b; Thu, 14 May 2020 09:04:44 +0200
Date: Thu, 14 May 2020 09:04:44 +0200
From: Johan Hovold <johan@kernel.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [greybus-dev] [PATCH] greybus: uart: fix uninitialized flow
 control variable
Message-ID: <20200514070444.GB25962@localhost>
References: <20200429190022.12671-1-arnd@arndb.de>
 <7146e1ca-1fc7-61ab-e798-7b017c7c974b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7146e1ca-1fc7-61ab-e798-7b017c7c974b@linaro.org>
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
 Arnd Bergmann <arnd@arndb.de>, Axel Haslam <ahaslam@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, David Lin <dtwlin@gmail.com>,
 greybus-dev@lists.linaro.org, Greg Kroah-Hartman <gregkh@google.com>,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@hovoldconsulting.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 29, 2020 at 03:00:44PM -0500, Alex Elder wrote:
> On 4/29/20 2:00 PM, Arnd Bergmann wrote:
> > gcc-10 points out an uninitialized variable use:
> 
> Wow, nice, checking individual uninitialized fields within
> the structure.
> 
> The structure should really be zero-initialized anyway; it's
> passed as a structure in a message elsewhere.  With your
> change, all fields in the structure are written, but in
> theory the structure could change and stack garbage could
> be sent over the wire.
> 
> What do you think of doing this instead?  Or in addition?
> 
>         struct gb_tty_line_coding newline = { };
> 
> (Presumably that would also silence the warning.)
> 
> I endorse of your change, either way.

Looks like Greg ended up applying an identical version of this patch
that was submitted this week instead.

Taking a closer look at this code I noticed we have two versions of this
line-coding struct which are supposed by be identical, but which could
get out of sync (and have once already it turns out).

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
