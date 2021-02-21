Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80645320DE0
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 22:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6D63182F0F
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efXgeA8LVXfd for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 21:24:02 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id DBAA182F20; Sun, 21 Feb 2021 21:24:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CEEB8293F;
	Sun, 21 Feb 2021 21:23:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 636A21BF386
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 21:23:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F0C382EB4
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 21:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X511U65zrI6s for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 21:23:31 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id B935482EBA; Sun, 21 Feb 2021 21:23:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 090BD82EB4
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 21:23:29 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id a17so52518508ljq.2
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=AQV7bdL3ixWDRROegqp9Zoz/vwQ1ThGk5KvIDg9tWp4=;
 b=TrHii1y8rgxHy4TbUrE8VBv+pmcqMgewP8NHELgN2Q/gCp0+fuu+sK/sKlMoTvjM/W
 TYxf0C1HKI+JOVior0FmTM7wSDN4poZCWAOa62LgFXULODvLIEpzS40ofr39n+1NB9qU
 utBgw8+VcSX+4xcDr51ujkg2PSyavOOUpGL0MNxOa6KdvkGSOvwcUcWGcq7NGcNepbAB
 BpjxM6e7kB5FU5VekyhI/50vGkJia9Xt3FKlMWR2jnb2JsgHj8gjMBFPvlW5o8aTtvj+
 88QbgxCjXUwWc4WWzPGCxX+SJsVoI6k+TZR5FvQR4xBb43dvJrfHomNi0ymS5j+t5IdU
 jpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :mime-version:content-disposition;
 bh=AQV7bdL3ixWDRROegqp9Zoz/vwQ1ThGk5KvIDg9tWp4=;
 b=td1e1kpT4qEbYzL/cAa6CNexmQWGAn9kR2eJHSWqi0GMze3+ZkDG/keLp9FyC3x4fU
 QJX3cL8idHFmpw3o5CIX8vHzLFYNpx0CprId4vLcmx7xYPMmZzevwgOWjFcOkjiPIUJg
 uKaktdDEYpcJB11KbeP9cgZpJIzJux4OAKMnDUaYEBxFRHaxZhetExvkdGGf6fN0Qkje
 eZfdjHl88gLfDpL0mYX4T1sZF65Y3k22JFt3qbC8Tln8AelUFNelrh8jeZl55SE9S4nv
 8XQT1Tg/7v5G9vG/ku7TrfzKAsnmbuq1/zDoQ+FXcY+GgjtI8DIYHjo2EPGBn0RQo9/H
 WMfw==
X-Gm-Message-State: AOAM530dpDo1GE60S9q1FQtdD+kbrDupnMgluhPKYzIrfi4pqTGV7J8G
 M77Wsyy1st/NimGSfZgaW/A=
X-Google-Smtp-Source: ABdhPJxU6mkkoz1bA1grOdFh8Feiv9qT/QFP8JJNLoijB3oNS5IBe9x78lrVsbnWzWxvS6hNE3m1yg==
X-Received: by 2002:a05:651c:2046:: with SMTP id
 t6mr12507128ljo.289.1613942607698; 
 Sun, 21 Feb 2021 13:23:27 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id z14sm133056ljk.132.2021.02.21.13.23.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 13:23:27 -0800 (PST)
Date: Mon, 22 Feb 2021 00:21:36 +0300
From: "Nikolay K." <knv418@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] staging: media: omap4iss: code style - avoid macro
 argument precedence issues
Message-ID: <YDLO4CZlZH+sxFNV@msi.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Reply-To: YDK8RfFUlktIyu7q@pendragon.ideasonboard.com
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Laurent,

Thank you for the review.
I think that if we drop the unneeded parentheses here, we need to drop
them everywhere in the file for consistency, even in places checkpatch.pl
doesn't warn about. It'll increase patch size without actual usefullness 
gain, as for me. I am very (very) novice to the kernel,
but who wants slightly more readable one-line simple macros?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
