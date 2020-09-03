Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F147525C8A9
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 20:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EA58A272AB;
	Thu,  3 Sep 2020 18:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVt90jDJHNif; Thu,  3 Sep 2020 18:21:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF5F3204D0;
	Thu,  3 Sep 2020 18:21:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 161F91BF40E
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 18:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0912C20336
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 18:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 41ofxrMjbD9K for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 18:21:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 21C9B20242
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 18:21:35 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id q9so3817910wmj.2
 for <devel@driverdev.osuosl.org>; Thu, 03 Sep 2020 11:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Xnj90cQeIAUzM8X1DU7D3qe+cvr4mKrVyMj9gojTDnU=;
 b=lit6mD8ojmWLJpH5VgviiSew4e1h6g7UkWjSaHP2CMmto+VctmLLpfonu9y5YYszfh
 4HRUqwK2/QZPAE91f/cYntJYJujunP9AklTQdkbAJXKuaiO7xjgYxb8H6R4aTa0qcUSS
 kXoWkAKPcrnhAAHCVxFz97xvJEP3nDFDuRdOmN3MPxonghZxLFZubUP+1z/jrNV/fhUe
 yCd34Pa8JvrlXfS5+6xaO3PTMZNHagjUGlR7MCRI5BfOcEalbG+gh8ajfxAXT7qzpcSG
 fCnPdtfiDLfGitPPfP1HdBgQrCB3aDRa4xnfHPZTPQUmIIsUxDaAU8tDy1c0dXSDQ5f4
 OjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Xnj90cQeIAUzM8X1DU7D3qe+cvr4mKrVyMj9gojTDnU=;
 b=ilEnzeiK9Af5PQLYsnABW1NkOnL0Q+vUobMk1FTTh2yxvM6H3qyajs8+XT9YsJ1rM8
 /dZ0BhhTFK0Ksf6UJO2qOO9V++MVlL/tCc5GcalVQqliaU+CzEZKPKZxW8DTnfEJbXYb
 3XqRWY55g9ydJ6Nb4Tx81VPjHfRwdSPv/HThRk7nFv0Jp6fYms0p1dU5bi0iJ8+nohIk
 X2nHBtp6KhDmeDdL0U4nJgItgiSGxGa8pnNfMJAswseMNj5M5TFCKrPc6YWGCfYOT7Ix
 hQDqLwnV/Zg9oQGJlokUaGmQNPA5QTQsJWIFMUw/+hipRRJTPf+YzpfIIDXU3w6gJ3NW
 43mg==
X-Gm-Message-State: AOAM5335Ar/gnx3fleAZdW30QKAwO+AAEGXCqs/foJ5u2ony9L5laYx8
 5Ww33A5LRrjNFjrWm05gcTM=
X-Google-Smtp-Source: ABdhPJwuvVasdL+HnKler9zAB3ZWl1DtRzxQYr6hcc4+i0MKXr+7UH36ZTM5rxPOl+5QOzlcwous4w==
X-Received: by 2002:a1c:bdc4:: with SMTP id n187mr3707848wmf.109.1599157293356; 
 Thu, 03 Sep 2020 11:21:33 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net.
 [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id p11sm5302865wma.11.2020.09.03.11.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 11:21:32 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Thu, 3 Sep 2020 19:21:30 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: media: atomisp: Fix error path in lm3554_probe()
Message-ID: <20200903182130.ugsbzjyq3yc56mdv@medion>
References: <20200902184207.479525-1-alex.dewar90@gmail.com>
 <20200903121134.GB8299@kadam>
 <20200903154841.w5rppm325jobimud@medion>
 <20200903173843.GF8299@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903173843.GF8299@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> You're right.  I wonder if there is really any need for the
> lm3554_gpio_uninit() function at all?  It's basically the same as
> lm3554_gpio_init() except for the order of function calls.  Probably
> we could just rename lm3554_gpio_init() to something like
> lm3554_gpio_set_default() and use it in both the probe() and remove
> functions()...

I think you probably also don't want to return error values from
lm3554_gpio_uninit() as it is only called on module removal, so it'd
probably make more sense to just print a warning and carry on. I'll do
this as a separate patch and send it to the list, though.

v2 to follow...

> 
> But I don't know the code and can't test it so let's leave that for
> another day.
> 
> We still do need to clean up if atomisp_register_i2c_module() fails
> though, and the timer as well so could you resend a v2?
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
