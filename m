Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A10510D652
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 14:51:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6083F8790A;
	Fri, 29 Nov 2019 13:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9bWBYYmVs7p; Fri, 29 Nov 2019 13:51:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 244D086704;
	Fri, 29 Nov 2019 13:51:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D11A41BF27B
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 13:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB2B886AF2
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 13:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDTM0lTr2ico for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 13:51:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F70F85C9F
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 13:51:46 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id e10so22912235ljj.6
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 05:51:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r/Fi0MEV5r+tBjNoZsXiqWGS8fmABPhyE3GLMwdmTOs=;
 b=DYaUWg0LKRrSpvez+k2uDn2K7gB4674asGa2Oc+mjyT35YWjyxpQyaHGbZo7kkKdAg
 oAx/yrD0KYcrsMbbnBm46fJ8zNSQ+EBI0vO19rxrzRvax/Jd3yMm3ckVb9iUXva8lK8S
 pwRe5MsAvbo8fx4vSc6iE5uWytfOTJczx0jlaHyFpUrF8psRElFWXKM04bwEBVrJp5Qs
 zRFwfMgWekEQK3/YWWOafuCOaiey1SOevk0BIgz1KlBqDTBDnuWy7AdsaSu/WJj+41R0
 c1Et6bRASPbwUwIAfECd8EAonVBj3xkOm/KhkdxfeUJ52z7rMkEiRSEsRYuk3Qb1Wm7k
 YCRw==
X-Gm-Message-State: APjAAAVsVr71wZKTbT5LbUD9UcM+nfh0EX8FUdzhv4uXENMgFqetGg97
 YDbZxDy+FqfHrA4kDtMvAcfEUW2l
X-Google-Smtp-Source: APXvYqzYOIhahw5q4/27xdaWNr1ynP0NYIT6X4+7RsS/yjJYtt4WrdyvUoYMvOR/STunO0LIzBZ0Kg==
X-Received: by 2002:a2e:7013:: with SMTP id l19mr38235479ljc.201.1575035504338; 
 Fri, 29 Nov 2019 05:51:44 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id u7sm3157258lfn.31.2019.11.29.05.51.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 05:51:43 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1iaggT-0005iP-Ue; Fri, 29 Nov 2019 14:51:46 +0100
Date: Fri, 29 Nov 2019 14:51:45 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/4] staging: gigaset: fix crashes on probe
Message-ID: <20191129135145.GJ29518@localhost>
References: <20191129101753.9721-1-johan@kernel.org>
 <20191129133239.GA3703941@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129133239.GA3703941@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 29, 2019 at 02:32:39PM +0100, Greg Kroah-Hartman wrote: > On Fri, Nov 29, 2019 at 11:17:49AM +0100, Johan Hovold wrote:
> > Syzbot has been reporting a GPF on probe in the gigaset ISDN driver,
> > which have since been moved to staging.
> > 
> > The first patch fixes that issue, and the next one fixes a second crash
> > found during testing.
> > 
> > The third patch addresses a benign warning in USB core which syzbot is
> > bound to report once the crashes have been fixed.
> > 
> > And while I hate playing checkpatch games, the final patch addresses a
> > checkpatch warning introduced on purpose by the third patch.
> 
> I'll take these after 5.5-rc1, but then it is time to just delete all of
> drivers/staging/isdn/ from my tree, so don't worry about them after that
> :)

Sounds good to me. :)

But we should probably get these backported before dropping
staging/isdn. Not sure if syzbot is run against older stable trees as
well, but if so, you may want to consider adding a stable-tag also to
patch 3/4.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
