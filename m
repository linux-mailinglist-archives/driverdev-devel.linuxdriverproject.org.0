Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D22313327
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 14:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B4A986FC1;
	Mon,  8 Feb 2021 13:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZSWcnuudd+E; Mon,  8 Feb 2021 13:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8127B85EA2;
	Mon,  8 Feb 2021 13:21:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79FD41BF39C
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70ACA20424
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IX0l2GIFlvS for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 13:21:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by silver.osuosl.org (Postfix) with ESMTPS id A5A0D2010B
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 13:21:18 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id w4so12597527wmi.4
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 05:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/j7p/US0+NqzqBFdEXGg5t/+VEYJ8Ie/dDJTmC1ksfM=;
 b=msatjmHXDaOEevAtvgoLlshg2SK4HWE9F+DDAnKeF8wmuNdMkXO3pb2FxZ+puo/2tX
 bOEbptCv0QPjDcZS6rN7qiiuBvxbNgnITMm3rgh3k1eQhfrMC/+tvLdeHCNl9sV1CSYt
 Vglxmp9fm1ENYcPWF6NVuHooNCBIpHgg6E1Gi1Tr2wyr3p+1N3WOG0C787duGLGD18Tv
 Aqyq0cb8PbmzLvyeogYx+ZCWC9B1bvRxZUr4dcqeNu3TuL8qIsm03X+b+8cbi0BtlemS
 Ylc9vOTC8h/aXGyxtnwWsKUKJlrwuzTK/5omfRNsh5FjlkOjOQmBon73HBrVKJf5fd5F
 XBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/j7p/US0+NqzqBFdEXGg5t/+VEYJ8Ie/dDJTmC1ksfM=;
 b=bdKEWbMiuHaFazFZeibBLmnBz2cvUb2FJgZL68E6TBigXyuMAgipcFmLQDtawTXXxh
 j/E6IwNFXmAFzUkAcEqmY58tW/aM2PCYifmk+Kr/TiyY48U53WrHoV1hX9lqSXc7Abq0
 TmA76hVkj7WZipIS0syy3Mr/tLEJpuqlxS/dj97cifITeStbVsJtOVvA18IqxABKINns
 cLSlwRuhJaDAEEfpJHt/ed+iAs9r0BbHUJ3miSQGwI4x87jSbSIvBYltn6W3YyAbJuu+
 IWoyH13LlGXY91dIrFbqMi1WsFLypyyfBV9cDUB+3pyF/WWsGHvTTuDtzQylEa9PE2kO
 RI8g==
X-Gm-Message-State: AOAM530KcoBxTvcjPtdhXlN9bj3GxYS8D2Are0PWejcBQiwCcLXMWY/N
 e5m6ySVtbfNuDFetv8QQ+Mzx38Z3fGctCoYaWes=
X-Google-Smtp-Source: ABdhPJx5Cp7IP7l7os9vRt0yqXNRtYCu4Q8Bn4DDmkqmHj4tjYxVIcvdJi+pju7EAQ/72C9dClthdT5C1BsaC48CqUc=
X-Received: by 2002:a1c:b684:: with SMTP id g126mr14458121wmf.94.1612790476846; 
 Mon, 08 Feb 2021 05:21:16 -0800 (PST)
MIME-Version: 1.0
References: <20210207202501.9494-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20210207202501.9494-1-rikard.falkeborn@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 8 Feb 2021 08:21:05 -0500
Message-ID: <CAGngYiWV43EGDDPU7K6qjFTMmniVY0eOY_BmVP5iJRdtm=-H0g@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: arcx-anybus: constify static structs
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rikard, thank you for the contribution.

On Sun, Feb 7, 2021 at 3:25 PM Rikard Falkeborn
<rikard.falkeborn@gmail.com> wrote:
>
> Constify two static structs which are never modified, to allow the
> compiler to put them in read-only memory.
>
> The only usage of controller_attribute_group is to put its address in an
> array of pointers to const struct attribute_group, and the only usage of
> can_power_ops is to assign its address to the 'ops' field in the
> regulator_desc struct, which is a pointer to const struct regulator_ops.
>
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
