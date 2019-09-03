Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE34A609D
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 07:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F19488252;
	Tue,  3 Sep 2019 05:32:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EhLYtMw8-TGX; Tue,  3 Sep 2019 05:32:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BBA3E87AF3;
	Tue,  3 Sep 2019 05:31:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6BDD11BF38D
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 05:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 672F487ABF
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 05:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wD+U--55-hcz for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 05:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 42B358757E
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 05:31:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id r195so297108wme.2
 for <devel@driverdev.osuosl.org>; Mon, 02 Sep 2019 22:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sdTc5Col9gW6RO/wUIFLd9Ir0j2e9yKZwNZmVQ90wII=;
 b=R4T6GqueH4Qho03y99R1OJ7lpN3EOzwGjqO/Hxlf6NWmhobqQLXz+aM5ybWMA8M3eM
 MqTf5odZCddxCDu1/xag4JzYqF9qv3MU8Lho/1PNMONq5/6Jz3/3/i866qPMBGTNcuNi
 0rmClZhaHdp+b+fhVo6AvHoSN+6ZoP3W2IrWeWZmFuMyPohn1SS9tVn9pZzRHVz/kwGy
 MBOOGRfkl1N2xbCWnkg9I5Gy4flUaM6OXhbCo7ytsZHY4cgqWI42h+mtvw27O8tUWuC2
 djwv1S6aq5WORUYcBE1Ce0spF2k69eg0yHyJ6gDYMOc4/VhL4lj7BrFwh1YHfKo5Mhyy
 eZ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sdTc5Col9gW6RO/wUIFLd9Ir0j2e9yKZwNZmVQ90wII=;
 b=sBTcEw/pH8PepJEgc3xVg7kCJJ4EVGG/SGrDZfjnE70dYls5Xek3WmH8JCEEh3nzp9
 fb8oUt4pHjYveyVwZDj0FtwFWWw8jq7+UjneZPkm9fxjNkbJ4Dkn2vH5IlvERtuE52M3
 g1aWrE9riGlgs33/PVMXqSx1HdYjlOSEQQH3FFNypBwbCYjfkTFdMANOXak5qvS0xylq
 n2YPrBvZrCGWmXrpzLQWJwo/ZNk+jcMQcpzq6nlbvuMIi/SiWsCdXYoZImAqW0qS22TW
 fdLX1fBzESoumPOREAmah81U9tXPqFF8Q1n3984f506XajratzbnGaUI9D1m3oZIP6fH
 1h8g==
X-Gm-Message-State: APjAAAVZaCUIz/pnDhBWtUbVf1lyz+UKNPVazIxoqeTCvU6Zpdg8DVSQ
 wMmr3Xza4E4jSuXxNC8INTQ=
X-Google-Smtp-Source: APXvYqzU0OzUqhyCh6F+DEeckS/Al/RvOuCOKRjN0LgPq6DjX3hdGdbPVeuCGGT5w3R+/B3EKct7hQ==
X-Received: by 2002:a1c:a796:: with SMTP id q144mr32071273wme.15.1567488711366; 
 Mon, 02 Sep 2019 22:31:51 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id n14sm57733246wra.75.2019.09.02.22.31.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 22:31:50 -0700 (PDT)
Date: Mon, 2 Sep 2019 22:31:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: exfat: fix uninitialized variable ret
Message-ID: <20190903053149.GA56440@archlinux-threadripper>
References: <20190830184644.15590-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830184644.15590-1-colin.king@canonical.com>
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
 kernel-janitors@vger.kernel.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 07:46:44PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently there are error return paths in ffsReadFile that
> exit via lable err_out that return and uninitialized error
> return in variable ret. Fix this by initializing ret to zero.
> 
> Addresses-Coverity: ("Uninitialized scalar variable")
> Fixes: c48c9f7ff32b ("staging: exfat: add exfat filesystem code to staging")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Clang also warns about this:

drivers/staging/exfat/exfat_super.c:885:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
        if (p_fs->dev_ejected)
            ^~~~~~~~~~~~~~~~~
drivers/staging/exfat/exfat_super.c:892:9: note: uninitialized use occurs here
        return ret;
               ^~~
drivers/staging/exfat/exfat_super.c:885:2: note: remove the 'if' if its condition is always true
        if (p_fs->dev_ejected)
        ^~~~~~~~~~~~~~~~~~~~~~
drivers/staging/exfat/exfat_super.c:776:9: note: initialize the variable 'ret' to silence this warning
        int ret;
               ^
                = 0
1 warning generated.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
