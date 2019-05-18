Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9533022504
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 23:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7740B8654D;
	Sat, 18 May 2019 21:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hvb8HXbah5xo; Sat, 18 May 2019 21:07:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2888086404;
	Sat, 18 May 2019 21:07:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 582F41BF3E3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5539887939
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 21:07:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nf8Img+FAbv6 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 21:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 384AD87938
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 21:07:06 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id n22so7607839lfe.12
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 14:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3p6wWF59ZsveqGprf3DgYpOGTHja2l9mhpdTwfZFFaM=;
 b=vQzpQaMlTVSiJnQgQXste8BGixnjGcLOfLI6iXbMIb2UdKRjYsteD0wWdmmu/zPmKB
 d9f+UFNq01IfLvcSuXtLrrMTHAOHs7HTav2sqi7K0WkgcjtiIcLSWNbvxrVbZOgXRtzM
 imIHlZ0G3Rsskswi+aXhMCycKU+DGvJLDnlDYnQzg93uvN+jSqotXNwbwjzETP8pzNLY
 8BjAQsjD+xkDh5oqKNGLUN4hOANLNWNKicyVS7Szs4CQ0qzNxKl9456FcRnaPH5PdQB1
 b2R81EMUeVvWrSRQTL9yQ4ZNtIV2Dmg/gSzOD1PkiHpp9mbSEeA3Z27WR2aToLEJt2Vr
 2wIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3p6wWF59ZsveqGprf3DgYpOGTHja2l9mhpdTwfZFFaM=;
 b=HTw3aq37Nf/2rogueio9QseWEjoVnXBVKvJps4xZOdvU0O/NGV+9eRRB3cgC5NvGUx
 nW5/C1OKdpT2IZiizmkhxNnq48d4daeDe5/hSdYBfDxJ/lsnvybU3CXw7TqUB61af/8C
 oW0M0LDTqi5hNZPAJhh2WA9pjpcsbrlY4ywMeDV/x8vuMejXtK7GMsDLWv/LzR8WYXWC
 Dt1eTeM+EQCQai4j3pg4bFCeiAgqMIN5k7OGGazEhC4s1GfBlvaCYAd0oaSWet2R3DgK
 1xSTszoA+TmAbW0lVxLih54t5kDaVclFVv/TyqCAC74NHksqIjTBqGLqA31qCRvaSo/T
 j6ig==
X-Gm-Message-State: APjAAAW9x8naSOqY14bOYKwLwFsfLy/GWOQPiXt9XmCwGHgYq1gADhBu
 LSDaI8XFnB4QNXeesqFJxE2Q9SQsTLUALcF7ZJY=
X-Google-Smtp-Source: APXvYqxurWCLzYbRooydRmlbrAzU6r5dSq9ppZ/jOuDyH4jRwxWgFDP9fyydWEXyJP+merckg0S9bPx351c1hQ5XrqE=
X-Received: by 2002:a19:5045:: with SMTP id z5mr32798202lfj.108.1558213624358; 
 Sat, 18 May 2019 14:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190518210008.20147-1-lucasseikioshiro@gmail.com>
In-Reply-To: <20190518210008.20147-1-lucasseikioshiro@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 18 May 2019 18:06:55 -0300
Message-ID: <CAOMZO5DvKGu61Q1o0f8PvcHGMjgHBKY-fsawzUY0UVX-sHGJSw@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: adis16240: add device to module device table
To: Lucas Oshiro <lucasseikioshiro@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Rodrigo Ribeiro <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Lucas,

On Sat, May 18, 2019 at 6:01 PM Lucas Oshiro <lucasseikioshiro@gmail.com> wrote:
>
> Add a of_device_id struct and MODULE_DEVICE_TABLE call.

Please provide an explanation as to why you are doing this.

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
