Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8018EA9BAA
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 09:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1726D86B46;
	Thu,  5 Sep 2019 07:22:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ur29_rE3jkyr; Thu,  5 Sep 2019 07:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61D7686B5E;
	Thu,  5 Sep 2019 07:22:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4EE721BF3D6
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49503204F3
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 07:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vpjpwvml7bou for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 07:22:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CC7E204D6
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 07:22:16 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id w6so1113951lfl.2
 for <devel@driverdev.osuosl.org>; Thu, 05 Sep 2019 00:22:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JR81XguHf8NA2x2LS/6JeusAt8AO3fo+lEK825RiQgY=;
 b=OQliXWNt0n+wP6KDjX2Xl2vC2pWcrQuuTaD43JAhI6NJqLOTZcMNNYSaZyp/nHWG37
 eR2ETnUL362TP9peZluZjyYorz811bbfn2BQik6LcH4AmMB1NgC/tCC3xxpfTGnoaDvA
 Yhs9M2nMiTqSVNsXKRL9gY+9T3Sw/3LOY7V6VAyZhamUsHnSFsEeJHYHqLiHckwQSG1G
 2OJKJYTXESItobOsGKy3WiGGiaJtqyYjArcjFHjZfiz0tbCy2wmQvu5VqfJCBk8fSzdu
 gEVjDixz+IZe5RmXM5VNeqvv4PazJfyZ7CS88T8YyTIfL2NQ4ocpTxfF+JoJY26juhz0
 y5zg==
X-Gm-Message-State: APjAAAXfIVz2+Sjbh0MDJ/Ivi+IMrDr9xY5SuMtsU+5rI77mJEhV/gt+
 oPyg3aEV7zXxH6PgK2x4zqU=
X-Google-Smtp-Source: APXvYqxIZVBiVFBRq6W7rWWvNIi8E2DVFJEM7Yp7Sa+BMdKA5rA5QwsF3dvCQYTsOCRV/mfCpqQwgg==
X-Received: by 2002:ac2:4352:: with SMTP id o18mr1354078lfl.164.1567668134676; 
 Thu, 05 Sep 2019 00:22:14 -0700 (PDT)
Received: from xi.terra (c-51f1e055.07-184-6d6c6d4.bbcust.telenor.se.
 [85.224.241.81])
 by smtp.gmail.com with ESMTPSA id f22sm266655lfa.41.2019.09.05.00.22.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:22:14 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92)
 (envelope-from <johan@kernel.org>)
 id 1i5m5o-0007l4-Ng; Thu, 05 Sep 2019 09:22:08 +0200
Date: Thu, 5 Sep 2019 09:22:08 +0200
From: Johan Hovold <johan@kernel.org>
To: Julio Faracco <jcfaracco@gmail.com>
Subject: Re: [PATCH] staging: greybus: Adding missing brackets into if..else
 block.
Message-ID: <20190905072208.GD1701@localhost>
References: <20190904203209.8669-1-jcfaracco@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904203209.8669-1-jcfaracco@gmail.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 lkcamp@lists.libreplanetbr.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 04, 2019 at 08:32:09PM +0000, Julio Faracco wrote:
> Inside a block of if..else conditional, else structure does not contain
> brackets. This is not following regular policies of good coding style.

s/good/kernel/ ?

> All parts of this conditional blocks should respect brackets inclusion.

Did you check that there aren't further instances of this style
issue in this file? If so, please them all in one go.

Also please include greybus component you are changing in your subject
prefix:

	staging: greybus: loopback_test: ...

> Signed-off-by: Julio Faracco <jcfaracco@gmail.com>
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index ba6f905f2..d46721502 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -801,8 +801,9 @@ static void prepare_devices(struct loopback_test *t)
>  			write_sysfs_val(t->devices[i].sysfs_entry,
>  					"outstanding_operations_max",
>  					t->async_outstanding_operations);
> -		} else
> +		} else {
>  			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
> +		}
>  	}
>  }

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
