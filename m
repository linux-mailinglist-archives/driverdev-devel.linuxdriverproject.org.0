Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D372DF5D8
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 16:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 57B3587321;
	Sun, 20 Dec 2020 15:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvgOoho1R-f8; Sun, 20 Dec 2020 15:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C1DC87530;
	Sun, 20 Dec 2020 15:29:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62FF41BF5A0
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 15:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 21B2B20396
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 15:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FA5KJTW6Hf4H for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 15:29:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by silver.osuosl.org (Postfix) with ESMTPS id 0711220394
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 15:29:26 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id 23so17647079lfg.10
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 07:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=p5NOTE254vm73Lsu62t4gF2fTVdlTH1aZ94SNqxQ8GA=;
 b=D8tXd1I+MQFSuLn4t1MdD78KrSSBwywZmReYQRhr2ieSTwOLazBjAYdmCiRljQYzdU
 Da87xyaFugXVyyJPf+iIOZBJ6IzAr6jovF7FLoMwH9wc5ohGgjh6JPUEIShH/WlQDoMF
 odMbbDUxhMK28vXD4QHORAXhhY2MxcIbgg7FQvQzKcFvR20yjWdJlNkI7L8CW+MIv/79
 4qfju58NCyDXBatNXKNQv4CLhXxdFOSs4BQO12sDhihNIMnXvqBJJKWlf55FTbtIb0W4
 Y5piQXCxHKU8yiqyT4mQ0PjHRWIPU4sa50FbKyNHcBmxdu44BPFzplftKkt+Li+Z1VLt
 9gcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=p5NOTE254vm73Lsu62t4gF2fTVdlTH1aZ94SNqxQ8GA=;
 b=uGi+gzDxClDkBDd2fwV/4vG3H49IXCyZDmHjMQL8Wu7XHuoICYPZQGEd89uk1nu6C3
 RaKTEkDy+BeVonEWhtnNjo5I2K6NYvnibVBsNEwvWVsA1EsX7ecCfq2UnWIfwlgP/t2z
 DBKHc51+9ThQWKbbrBQm41UnvxVWWiKWJeEi8dnUszccN6oaKcv2GDAkQAmie8vGzS/f
 wScAB/HEMJTFEH0+B8IG0zi/i4Jq5VI7+1DUtiFczkSXMXUsSN7u+RCJdSYbTWqDU9Mb
 VLltUDIN7MoNQG8zT2WZNJOzdFgQZbqsGEqqZPhLMwBfU6OJJtEkam8I9FUDcKBHe3wT
 vuHg==
X-Gm-Message-State: AOAM533P1ZrMP7AeptAHIC6dfxFjPrMGh3d3r7rSnIzjIOeNL4EEIHPb
 ClqNMBz30xhrUiQzC8kNhHw=
X-Google-Smtp-Source: ABdhPJw4tClKnnNkIgEKdhj9k5r+cHGbdWL90UhAmX7lv3ttm+vfAyLPggT33xdYKT2Dw1QzGE0y7w==
X-Received: by 2002:a2e:760c:: with SMTP id r12mr5432858ljc.11.1608478164083; 
 Sun, 20 Dec 2020 07:29:24 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id f23sm1677699lfk.298.2020.12.20.07.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Dec 2020 07:29:23 -0800 (PST)
Date: Sun, 20 Dec 2020 17:29:21 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Daniel West <daniel.west.dev@gmail.com>
Subject: Re: [PATCH 8455/8455] staging: rtl8188eu: core: fixed a comment
 format issue.
Message-ID: <20201220152921.dqlsmqfvygtpzj5b@kari-VirtualBox>
References: <20201219224312.380126-1-daniel.west.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201219224312.380126-1-daniel.west.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, insafonov@gmail.com, gregkh@linuxfoundation.org,
 gustavoars@kernel.org, andrealmeidap1996@gmail.com,
 linux-kernel@vger.kernel.org, yepeilin.cs@gmail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 19, 2020 at 02:43:12PM -0800, Daniel West wrote:
> Fixed a checkpatch warning:
> 
> WARNING: Block comments use * on subsequent lines
>  #4595: FILE: drivers/staging/rtl8188eu/core/rtw_mlme_ext.c:4595:
> +/****************************************************************************
> +
> 
> The code is full of comments like this. Should the coding style
> be inforced here, even when there is a logic to the way the code
> was broken up?

You should make one patch which atleast fix one file at ones. It would
be even better if it fixes whole stuff (example one driver) right a way.
Also note that you should not but this kind messages to your patch
message. If you want to note this kind of thing you can use --- and
after that it will not included in patch itself. You can read it online
more.

Also where does this [PATCH 8455/8455] even come from? Good thing is
that you really didn't send so many patches or atleast I won't see them.

And it seems that you are new so welcome a board :)

--
Kari Argillander
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
