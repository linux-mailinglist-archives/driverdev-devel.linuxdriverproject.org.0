Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8454251E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:25:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C2CA26CAB;
	Tue, 21 May 2019 14:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uq6gPnbMIm+w; Tue, 21 May 2019 14:25:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DA98A25F62;
	Tue, 21 May 2019 14:25:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EED8A1BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:25:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EC15B87B05
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:25:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p-6b15cr5wRY for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:25:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5DB086C3A
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:25:05 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id z26so9161350pfg.6
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oebd2F37ejNWi5lexy3QmDFw2CbVqFTl/Y0CPklSoNM=;
 b=hWnMd6UrwExFgTU4HSM7G+D/D9I/CRkwkBhCMifCTDadcrF4c/ehjCsGQ895PUn7Rd
 uZ3+gY+9yRWM/PcrkejYmvBsmveHe4Eaup8dDMr4sSRhih9YexFK8qHmGl8Bk4tAA3Yx
 obdAvLuHcm8B/4Y4HUQoeL0mlDDziWWiWbRSWmMiYgC8JI/0aQxKKwQOKLev1tobtM2a
 6QIzUybCAlc3JIjug4mp1YUpx4hjr4Wf52A4dQJ31kAg0Sji26+zMhZ3iJ2++va4FjO/
 fKJQZzhVtDkcvExL0u9+kK2ORXOnD9b9zwYRMvZvSsCj0S1TGoLuEQsEoG5+QushoXEb
 Zn3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oebd2F37ejNWi5lexy3QmDFw2CbVqFTl/Y0CPklSoNM=;
 b=OIHVC/KplCdkTumVLmJnGH13RdW7NKS4Vd1yAfZxt6p/5A3mtXHoc8wWDvTZOE8+Zo
 053T/y6Lw8osWn9XEonkWxdD1LDrcC54RpQ/1qNpOGc1W84kmW+80JR/9MbWp6hdaNI3
 0tb0Ovi8TGstJ8u2Ijqqfwt5yM36CGMvaMW2RhyJCfqQM223Jc9D7rlxdrrSoXz7pwRV
 qVLyPUuH0TvCg1ybgMinas/TWjyF26oKezJ3EW64PJ8W3EnUnuU2aW9euctU71wJecoa
 3hCz2xUAfjugmsueo+jvoNOPFoStTPM4ARDGsRvIm4oIcxuEmbN2hgfrpjWk8sOaAG4k
 VuPg==
X-Gm-Message-State: APjAAAVzHvgiQHcZccscnU4p1ihsi5kj48T2c1SlqlLYr+r1wgpUXgPJ
 GyGgHoUBEqZY5u9iUFusuQoMEVFE5lbi6WGXel2bLQ==
X-Google-Smtp-Source: APXvYqzams8pZm41hOoVPXT7aEDN3bAuARD1yK7Sk6Ou0q1bgGQK7oI3Udb8twNT0BNND54zxCfbKylUPqV3CbPNdMA=
X-Received: by 2002:aa7:8652:: with SMTP id a18mr85679379pfo.167.1558448704934; 
 Tue, 21 May 2019 07:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190521142009.7331-1-TheSven73@gmail.com>
In-Reply-To: <20190521142009.7331-1-TheSven73@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 10:24:50 -0400
Message-ID: <CAGngYiVGWkjZoUncRcZJ5uqd2uqX1SmV-aZcfcGHM==8TZSSRA@mail.gmail.com>
Subject: Re: [PATCH v3] staging: fieldbus: core: fix ->poll() annotation
To: Oscar Gomez Fuente <oscargomezf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:20 AM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> From: Oscar Gomez Fuente <oscargomezf@gmail.com>
>
> ->poll() functions should return __poll_t, but the fieldbus
> core's poll() does not. This generates a sparse warning.
>
> Fix the ->poll() return value, and use recommended __poll_t
> constants (EPOLLxxx).
>
> Signed-off-by: Oscar Gomez Fuente <oscargomezf@gmail.com>

Please ignore this patch.
> /dev/null :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
