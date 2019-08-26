Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1DC9C8E3
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 07:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 504F5204DE;
	Mon, 26 Aug 2019 05:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwWXqx3JlbTJ; Mon, 26 Aug 2019 05:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA09B20427;
	Mon, 26 Aug 2019 05:59:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 035821BF20F
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 05:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0081285FA3
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 05:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M562HNsC7MKa for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 05:59:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED7CB8547D
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 05:59:17 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id t3so34451479ioj.12
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 22:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jx/PkJ/HJBNahQz742EujlxvyiLYErUOYWblJG5jYR0=;
 b=EKzlF5AqSU+PlCLC6HmJxvQaiOrjlE8PoytIrpsFNHDFnqTOZ8oq3vzueZn2CwfC9W
 HEvHbvS3PilvaZ8JKOwD7xZLXexQB0iKL2qQ1BS4qcQrABHSU6bC2fh/zwVdGIBXWHJh
 AVs+9mt7DXJlDBbab3t+X9hy/p+7pxDzP8vhqXEAFRMw1HJqSRCLOZWd7WyQSWElJl1M
 W7cgVY/hi5kCp8Z6lIcmUh0wUsKVxZgK8z3GQ0yg08Ge0G+HC94J01rZHyPquSKS127L
 FZxJoKWo2+k3Km6zIpHspoh/WVfi8dqJecwcjJdx0dRnFR2J5a2rP67DjZ25JSA+u9gM
 DlAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jx/PkJ/HJBNahQz742EujlxvyiLYErUOYWblJG5jYR0=;
 b=YyLjWm8EoNwCexGVa9rDF655l9eSt+/spqtJyrzmBhyfA81dHQgyjqgrqKrKXluADf
 vr79a1xx8o/fRJmnVepNTrdDqVUF4lmwgvnX8Qiw4rOt4ip4l40GZy1hpk43wqu1ZV9x
 nHsAf8rOSg+ped5ibJMgi1dtTXLO9gJkD+zJ/83fL2/VMePu5c8OIc6H5gsSNA3ZE7Ra
 fy2JYduKxKQkbMVf+x/q83byFruNhIGBycHPbRmYDjQmyHLcQIM7zpF++YqN0OKt8uRN
 nC68o7sJgjX+dXRlKkFCi2qWdY3XVjlAs9ui56aW4XXJOA10WM6c5NusU3vhgxCi+YyI
 qZpg==
X-Gm-Message-State: APjAAAW1Qn48Dj1hkNCfEk6TTztdYqVPBIHdasxdNPZoqQdysJab4t54
 f1q9C9BH8WXUbBxODtsy+5xld9yY6nU=
X-Google-Smtp-Source: APXvYqyZS3q8Z1jqdApzu6vN+19iGZkteWLqaQFf2scHB66MCoGbivmSuGfgws3sJMzg9v6omIfd0A==
X-Received: by 2002:a63:eb56:: with SMTP id b22mr15141553pgk.355.1566798683198; 
 Sun, 25 Aug 2019 22:51:23 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id q8sm22820482pje.2.2019.08.25.22.51.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 22:51:21 -0700 (PDT)
Date: Mon, 26 Aug 2019 11:21:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/9] staging: greybus: fix up SPDX comment in .h files
Message-ID: <20190826055119.4pbmf5ape224giwz@vireshk-i7>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-2-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-2-gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Viresh Kumar <vireshk@kernel.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 25-08-19, 07:54, Greg Kroah-Hartman wrote:
> When these files originally got an SPDX tag, I used // instead of /* */
> for the .h files.  Fix this up to use // properly.
> 
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/greybus/firmware.h               | 2 +-
>  drivers/staging/greybus/gb-camera.h              | 2 +-
>  drivers/staging/greybus/gbphy.h                  | 2 +-
>  drivers/staging/greybus/greybus.h                | 2 +-
>  drivers/staging/greybus/greybus_authentication.h | 2 +-
>  drivers/staging/greybus/greybus_firmware.h       | 2 +-
>  drivers/staging/greybus/greybus_manifest.h       | 2 +-
>  drivers/staging/greybus/greybus_protocols.h      | 2 +-
>  drivers/staging/greybus/greybus_trace.h          | 2 +-
>  drivers/staging/greybus/hd.h                     | 2 +-
>  drivers/staging/greybus/interface.h              | 2 +-
>  drivers/staging/greybus/manifest.h               | 2 +-
>  drivers/staging/greybus/module.h                 | 2 +-
>  drivers/staging/greybus/operation.h              | 2 +-
>  drivers/staging/greybus/spilib.h                 | 2 +-
>  drivers/staging/greybus/svc.h                    | 2 +-
>  16 files changed, 16 insertions(+), 16 deletions(-)

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
