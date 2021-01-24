Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD69301E71
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Jan 2021 20:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B98F9871EE;
	Sun, 24 Jan 2021 19:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6KWyPuwNV8f; Sun, 24 Jan 2021 19:32:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25B7E87104;
	Sun, 24 Jan 2021 19:32:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 589E51BF310
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 519F6864B8
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qM-Efhcg70KK for <devel@linuxdriverproject.org>;
 Sun, 24 Jan 2021 19:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7403B85D5F
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 19:32:19 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id l12so10174675ljc.3
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 11:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BTvet0cA5VlERgtC2SKba0nr4XReZGr85iq9+W5yFLQ=;
 b=N9MjFFBprfupE/NTW030MsWjnVBdqRh3ew1F4CWJ3Bv3kfLVGKYuD7qDAb90L4SVg6
 HvAGBWFkg3JGqyA4AuQSo/lSrQbT1yZxZMxA3mvIYD34hRbrDwYD/AppYoJyXEF/EELF
 ueF5M03HECaE2WMl8cu8fWYgfG3MvVIePJdAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BTvet0cA5VlERgtC2SKba0nr4XReZGr85iq9+W5yFLQ=;
 b=TVs9GH6u1ZultVQeWPlO3cHZPCl4k3hAPprRKTRsIgBwQOR1aus05ig3Dz2eIhrqs9
 yMDZeZNXIG42ZMevKOxsN2xfPI+Tj+85mQcH5DGOI8qxFcZFz78aDp2ByEi01F6QL4As
 h/06eNgzgERTXvqM6H8tUKR70BrML7PNCeGciiI7KI/wZw5TZOWv/T2XCstHvC9DeS5k
 5l48uEGZrur8+7FzkspUkDUgluYwlI6KG0V2UjBwIFLuQR2J7uOHqvN9LFfJapqwOwMv
 CbeHQiGGRRK2Lk0VGV8f9iV31PIUduWbH9pUogtBe82QiXCwmzECh8NkXqy0+fZ4A7Ak
 /sng==
X-Gm-Message-State: AOAM530sZf/mRyIwOkB1rWJDYD2FdY6vzvtApaii8KMKFrge585SOXON
 JEzIo0rnqeQb3E7HszItsnK24Ra1kJiyXA==
X-Google-Smtp-Source: ABdhPJwEkNf5K1IaS9e/A7cd5s6bbNhtTX8P99b6Mep3HtNeATRtEGvzySSClgTsNtqfcGfrV6EsRQ==
X-Received: by 2002:a2e:a554:: with SMTP id e20mr154823ljn.128.1611516737116; 
 Sun, 24 Jan 2021 11:32:17 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id h126sm1549666lfd.44.2021.01.24.11.32.16
 for <devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Jan 2021 11:32:16 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id i17so12746308ljn.1
 for <devel@linuxdriverproject.org>; Sun, 24 Jan 2021 11:32:16 -0800 (PST)
X-Received: by 2002:a2e:a545:: with SMTP id e5mr87321ljn.48.1611516735834;
 Sun, 24 Jan 2021 11:32:15 -0800 (PST)
MIME-Version: 1.0
References: <YA1u24kUPB+B7gKY@kroah.com>
In-Reply-To: <YA1u24kUPB+B7gKY@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 24 Jan 2021 11:31:59 -0800
X-Gmail-Original-Message-ID: <CAHk-=whe0kHRKsNegF+JxCooS_Z0otcEX_Ggz=iN2v3D1Rssxg@mail.gmail.com>
Message-ID: <CAHk-=whe0kHRKsNegF+JxCooS_Z0otcEX_Ggz=iN2v3D1Rssxg@mail.gmail.com>
Subject: Re: [GIT PULL] Staging/IIO driver fixes for 5.11-rc5
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 24, 2021 at 4:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> David Lechner (1):
>       counter:ti-eqep: remove floor

I'm not sure why that ti-eqep counter driver seems to be in your
"iio/staging" pile rather than "char/misc", but whatever..

               Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
