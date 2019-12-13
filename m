Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A704311EB02
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 20:10:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 374AE889AB;
	Fri, 13 Dec 2019 19:10:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AYWE4mcNsOMP; Fri, 13 Dec 2019 19:10:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC815889C0;
	Fri, 13 Dec 2019 19:10:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E09AE1BF2C8
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 19:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BEEDF889D0
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 19:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ig-r8WL6jtii for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 19:10:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14952889AB
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 19:10:39 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id v140so1694428oie.0
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 11:10:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gqHrE4O7N3WyEVZBtjPW2RoMCJ5WebdfF8tzAO9VFB8=;
 b=ZuI5g/NxXPcGvoq27ohcU8E8qB64Xsz5KV8ICw8KQlKIPsf9nVEmj5znEMBf25Idc6
 C96/GxgmcJwKkxfpe/uFhOH0TDvDyUskeK9Meb7InqrBBgocwM9uep7za3gFuR22DSf0
 xQw6O+bYPsKL7BR/7iFGVWZ805D/dA+EErSR5mo1WHZCnoPMk9fcYvrxk3iNX5EcF1rT
 w9oFIF/CXFvATRVhigNdtcGeoeJwQjEsWDdKaQCj6wKMRkTAh0GNLynz/QCPitXIBNAA
 JqRW3XXCHJFaDAhzIQvn165nBBSA5kAc+gkIb6kzyOz/RTNbwUY0QbaCnOdLAUTU2q/C
 XBKw==
X-Gm-Message-State: APjAAAV+tWPHAiKb8SJ+fJHPPx2uNtgEt+hHX1Oyq+xSW+YbU8gqDkEt
 UPjFjKUYEHhcUIgXYN4dcg==
X-Google-Smtp-Source: APXvYqxZJ6Djo9EHYC157I6r3XJQxg59UQRl0WouyQ2edATyQWi33Bg1WW4fHm5bv/3Ywm6ouP31Pw==
X-Received: by 2002:a54:4702:: with SMTP id k2mr6835867oik.168.1576264238139; 
 Fri, 13 Dec 2019 11:10:38 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j130sm3596993oia.34.2019.12.13.11.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:10:37 -0800 (PST)
Date: Fri, 13 Dec 2019 13:10:36 -0600
From: Rob Herring <robh@kernel.org>
To: Rodrigo Carvalho <rodrigorsdc@gmail.com>
Subject: Re: [PATCH v6 2/2] dt-bindings: iio: accel: add binding
 documentation for ADIS16240
Message-ID: <20191213191036.GA28558@bogus>
References: <20191207045339.9186-1-rodrigorsdc@gmail.com>
 <20191207045339.9186-2-rodrigorsdc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191207045339.9186-2-rodrigorsdc@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rodrigo Carvalho <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat,  7 Dec 2019 01:53:39 -0300, Rodrigo Carvalho wrote:
> This patch add device tree binding documentation for ADIS16240.
> 
> Signed-off-by: Rodrigo Carvalho <rodrigorsdc@gmail.com>
> ---
> V6:
>   - Update SPDX license identifier
> 
>  .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
