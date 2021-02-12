Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D051F319C2A
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 10:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F61187518;
	Fri, 12 Feb 2021 09:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2NQ8hZN0SUOM; Fri, 12 Feb 2021 09:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1AA7874C1;
	Fri, 12 Feb 2021 09:55:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E54691BF334
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:55:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE5C38743A
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 09:55:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLA0i+Jc-BsJ for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 09:55:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 025E38740B
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 09:55:32 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id t25so5886748pga.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 01:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=D7Yd2gi+KI4gPD0nZT1VEYRq+EDsM1Zcn3kMJP9fD0A=;
 b=e6KXBJ/H5Fy2nEZx45ttHC2k7nn+qtN8koPZfJaXzZ2N+/bCfg6MogL3s0ehXtcAEp
 0Q4R/oxms/wHRD84qZZkYWFo8K0MefW6/oBWBxZlWZPFdV4UZ5foxk1ngsnTTbzVWO5F
 eE6Fqbch4SNgMAF4OeWd0pRly1RgWUnR0Gzl4kaQraxSoQhBwhLWN3lQtFnv8LlxUjKA
 HVnShniFT5U+zlm2zyat6KkZHpWwHn/mMZYnPXdotU5LxVqrvuDXUdvx5HDoyjiixr1c
 YqRacNsOqp//XGVpeQAE7h28s8PVjJGM9rF+ir4bmg2n+20+BfMs5v/UiqYFe76Zcifo
 DGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D7Yd2gi+KI4gPD0nZT1VEYRq+EDsM1Zcn3kMJP9fD0A=;
 b=gExaNml855PFiwqyKHlFi9yVMwXBv6ruf8yONAaSqj1BZhI3e4ZrtylSaqipe4JAH1
 1gS3zalkvZzxfW+1AjxyiapnPH5+nH7n3VP0NKXtk9542HfdCsQb6ofuHIGx1VduK1qm
 6rgo0EwL7VgdRjIBAifGPM4LyIFyt/DTrZPwQKdtpgv/VEhHk2fVuwNrQh2ECnRDiJk0
 Jsd9OEV9JbkNflcA8bgCw1HwZ9DvLWOvI/rMWTETP6Z/vbwjT9mSNqqApbErsmAlSNmG
 KdyimYD0NaiB7XxrFIXI9KGgWUCSAnjByAdo7Q6iWHX94E43AjabMxct9+XZs3F87RkD
 /W4Q==
X-Gm-Message-State: AOAM530Vuc/srEcOp/4f16nvCdi/YwE1GIe0Txrk3iqbpPZncULlgmlq
 R1IglF6baSo5CPJDaLtzJ3QLDA==
X-Google-Smtp-Source: ABdhPJz/AAQZNSDiokFZ2T7m8vBev8D9/51jRrArWknSlPXRoWrEXGh+hysWkS4poObxzimtSM67FA==
X-Received: by 2002:a62:8445:0:b029:1c1:c862:8fc4 with SMTP id
 k66-20020a6284450000b02901c1c8628fc4mr2199503pfd.77.1613123732518; 
 Fri, 12 Feb 2021 01:55:32 -0800 (PST)
Received: from localhost ([122.172.59.240])
 by smtp.gmail.com with ESMTPSA id l25sm7841344pff.105.2021.02.12.01.55.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Feb 2021 01:55:31 -0800 (PST)
Date: Fri, 12 Feb 2021 15:25:29 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 1/2] staging: greybus: Fixed alignment issue in hid.c
Message-ID: <20210212095529.2nsjc5wacegnd757@vireshk-i7>
References: <20210212081835.9497-1-pritthijit.nath@icloud.com>
 <20210212090926.ox763j3btrqfzzzj@vireshk-i7>
 <YCZHsMPgyqtRMTII@kroah.com>
 <20210212092130.cxo6tuess6msf4kb@vireshk-i7>
 <YCZPzV7KiT/y//m2@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCZPzV7KiT/y//m2@hovoldconsulting.com>
User-Agent: NeoMutt/20180716-391-311a52
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, elder@kernel.org, vireshk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 12-02-21, 10:52, Johan Hovold wrote:
> But what will the checkpatch crew then work on?

Lol..

> Better staging than the rest of the kernel.

[ /me wondering on who stops them from sending patches for rest of the
kernel ? ]

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
