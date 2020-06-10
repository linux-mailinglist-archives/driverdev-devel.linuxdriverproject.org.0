Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BDD1F5BEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 21:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2460873DC;
	Wed, 10 Jun 2020 19:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIRd1Sk3QCRl; Wed, 10 Jun 2020 19:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6784E869C0;
	Wed, 10 Jun 2020 19:20:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA4831BF41E
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 19:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D4606883B3
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 19:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gqcJWoosjt-4 for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 19:20:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D67FF883E7
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 19:20:52 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id n141so3243102qke.2
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 12:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gkvfxUP+ZGpQ9yo7tiW4XvIcLynrm+gZRuYO90l403o=;
 b=Hg2M/C6n9F8VBzvBH4OGC4g0h9kbarxfj4j3mDUbSB7q/AbmH0tO6oPwMhGiwKBRkb
 Lym8twgrOWioQl3oUZ59aQIbNhpLtBpPhXepP5jBzdy/YlxBKj7EZAA1rrNu8tco1DJL
 S3ww9Uq7TBLFUTEBHJQy5sA8muGn9gc0kNQUVY//DZ5UaDPdU3JkxAqWkv/WpqKuWBuK
 At7FiLIqYEiUtRKs4G1nrFpB+WnoOSI0bhtkVgSkweS5n5URs0KWG0Z3d0oE4z8ATdfE
 h/xsIwCFxjrGSF6V4G68g5OADpUg+O86pFv1skZvL5JBCnmClho74vygZSf3/rbGeEQF
 jUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gkvfxUP+ZGpQ9yo7tiW4XvIcLynrm+gZRuYO90l403o=;
 b=hUcuRkRv/oTjghfxix8JIdo9DKbAzV1iRO0qr6nGfFMIc+ehDODpJ5Q1SORNZv3bM/
 XWPQjoBN7VJNce0mc/lck+3T1X5F9yyz0mux55HaVcT0kc4kUhTtF9c0Ohw/bl/o8Ivy
 Rj3JWUg0YkjOih8dth+RdGsz55sb5sGLCXBZaWPwd3/69ZtUhpZN3MjDF1cgECnt9PuC
 icaGNJIyDu0wE2bdFwJ7D0Jk8HLnqgacZmcWMFmAYCRlksJ6VoVIhh11k6r4BYJ6J2pm
 aVtPlzYx86/eKScgF1jOHa3phR3xrCTSnwc4rz42sTg+e4l7jHW1YLGRWqxF0KhjRbSc
 MrfQ==
X-Gm-Message-State: AOAM531mGT9iPBAHZJW2NrmOohPzDqQZlHFYFt/EqalJianTFG7NfQjn
 6TsPHsc+iEgongzB+dQnBSY=
X-Google-Smtp-Source: ABdhPJwU2Jx5i3xpWvnmDT02RDeWFGBbOySoYhi11uAOl9RdEcTNXVqzFnS0k2Hft7oAeFkb/4KrdQ==
X-Received: by 2002:a37:aa87:: with SMTP id t129mr4757802qke.197.1591816851911; 
 Wed, 10 Jun 2020 12:20:51 -0700 (PDT)
Received: from ip-172-31-24-31.ec2.internal
 (ec2-54-234-246-66.compute-1.amazonaws.com. [54.234.246.66])
 by smtp.gmail.com with ESMTPSA id b21sm474161qkk.61.2020.06.10.12.20.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 10 Jun 2020 12:20:51 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:20:49 +0000
From: Rodolfo C Villordo <rodolfovillordo@gmail.com>
To: Joe Perches <joe@perches.com>
Subject: Re: Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <20200610192049.GA11463@ip-172-31-24-31.ec2.internal>
References: <20200607224156.GA24090@ip-172-31-24-31.ec2.internal>
 <20200608054614.GO23230@ZenIV.linux.org.uk>
 <alpine.DEB.2.21.2006080758510.2430@hadrien>
 <e3d7cc965eccec881bc35ae18d63f4bc23c33dfc.camel@perches.com>
 <20200608225838.GA26559@ip-172-31-24-31.ec2.internal>
 <c25f5af83658ab9ef4ae8ef3825ea6540fe4e094.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c25f5af83658ab9ef4ae8ef3825ea6540fe4e094.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: Julia Lawall <julia.lawall@inria.fr>, devel@driverdev.osuosl.org,
 Al Viro <viro@zeniv.linux.org.uk>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 08, 2020 at 04:33:06PM -0700, Joe Perches wrote:
> On Mon, 2020-06-08 at 22:58 +0000, Rodolfo C Villordo wrote:
> > 
> > How should I move forward with this?
> > 
> > 1 - Update this patch with the changes pointed by Dan Carpenter? 
> 
> Keep your changes small until you really know how this
> style of linux kernel staging changes is done.
> 
> > 2 - Do a more elaborated and bigger change, like suggested by Al Viro
> > and Joe Perches?
> 
> A patch series is much preferred to a single large change.
> 
> If you decide to refactor various functions, please do that
> in separate, discrete patches.
> 
> Adding a #define and doing a sed like:
> 
> $ sed -i 's/(BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW/AL2230_RLEN_CTL/' drivers/staging/vt6655/*.[ch]
> 
> should be a single patch.
> 
> And if you do that, another should be done for AL7230
> 
> $ sed -i 's/(BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW/AL7230_RLEN_CTL/' drivers/staging/vt6655/*.[ch]
> 
> etc...
> 
> Maybe the #define BY_AL2230_REG_LEN should be 0x17 so that
> the << 3 is more obviously constrained to the low byte
> 
> Maybe the + uses in the macros should be bitwise |.
> 
> Go wild after you figure out the process, just keep your
> patches to obvious, small and verifiable changes.
> 
Thank you so much for your comments Joe. 

I'll take off this patch and focus on these other changes.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
