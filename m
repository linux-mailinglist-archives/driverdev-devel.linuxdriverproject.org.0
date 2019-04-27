Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A772BB30E
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 09:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C6039226A9;
	Sat, 27 Apr 2019 07:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZKqDslsA35Xb; Sat, 27 Apr 2019 07:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63056226FC;
	Sat, 27 Apr 2019 07:21:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E4FB1BF3EE
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 07:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0B09586D63
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 07:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3wNr5lGVwWhb for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 07:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 132B586D11
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 07:21:06 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k10so4728764oik.7
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 00:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MhLA4X+a5rMjmgHTPodvSWDw3ddBPwuLk4iywBiynBU=;
 b=QeiUrKut3FEsTH1x42QQzm0y57di//P8DpDlWt4OjnwnoYoIUIA41fPUsLUwGWHvKJ
 r37+tOup3+pTgUb453VWuJi6nw/QXyLU+si2A22zzUQsu/QXa4RzD83EJ93fjKBkubv1
 pybLEs3d95fpGBfrHkyVxB1hJiZqQr/fVNkCRT9hawKoLIXIbRWxWMMomDVTEX79haC3
 bSwwOn4LTCMjsnqtib6Lsnl+AZ4eN2e5sdppFaIsmK0l8eNYHCrZncoyu0uNo04d1caZ
 KSEs3/u8meolvncYTE914ZflfaFWuLhj0I0FFSPFnN70t8T9d9+feAK0HU6ZHgT2KGe1
 biMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MhLA4X+a5rMjmgHTPodvSWDw3ddBPwuLk4iywBiynBU=;
 b=KsI5YQRsaDBSHqyBcXkqW2/3y+zgtrXZAlu+PG9/+i7C64/Di/gRqMavVXciaMmTso
 2AUrOUc/tMI4LFUhQJCeHBN3E/igkjyI/eaRVWIAiV+Y3+bm5XbtSYqGqsM54gAE3lwM
 Mig7YNu14quCa9m2Wy6IRYVO7958QpI+6S9IRKtfKi0zVTZcxzz6Wr/+PvZFPtKRFh/r
 qbFsC6OFJdLgIUbQAWkaTKGSeMaUh8hOuCCA1rHBbO+gIuVUJPma7QpGMtkoqNZz8lt7
 Fl0C16spJwmJYDPZfSgEui+VKXIy1JO68JNvdvElHPZq/FHJKICuIcHXTljb4vS6fR3+
 mQ8g==
X-Gm-Message-State: APjAAAWGnfc2wFZ0lsl4cM+QrzUJnBXJFeG6rKwCh6JN2FPRg9MN8Q//
 9I8Y8d2LAVCVSZukg595LS/L7rFKhS2VfgpS2h0=
X-Google-Smtp-Source: APXvYqwPwsTZHdPKhGJaSYtB9lz4zVOVaLWbbof/ytOS23yHhDq94/FTbQscRXXwAPLbgiQiE1OaRoYuvc9IH1t12b8=
X-Received: by 2002:aca:4202:: with SMTP id p2mr8930068oia.169.1556349665179; 
 Sat, 27 Apr 2019 00:21:05 -0700 (PDT)
MIME-Version: 1.0
References: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
 <CAGngYiXBrNu7Jrk535=L89-mOSNx-6EfqL=1EwwG49Sf44R0Vg@mail.gmail.com>
 <20190427070021.GA2290@osadl.at>
In-Reply-To: <20190427070021.GA2290@osadl.at>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sat, 27 Apr 2019 03:20:54 -0400
Message-ID: <CAGngYiX-s6dCc5focdXW5WYaiWiBF=dzacqFjSvXggvdxD3zAQ@mail.gmail.com>
Subject: Re: [PATCH RFC] staging: fieldbus: anybus-s: use proper type for
 wait_for_completion_timeout
To: Nicholas Mc Guire <der.herr@hofr.at>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 27, 2019 at 3:01 AM Nicholas Mc Guire <der.herr@hofr.at> wrote:
> > > (some unrelated sparse warnings (cast to restricted __be16))
> >
> > That sounds interesting too. Could you provide more details?
>
> make C=1
> drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted

regmap_bulk_read(cd->regmap, REG_FIELDBUS_TYPE, &fieldbus_type,
        sizeof(fieldbus_type));
fieldbus_type = be16_to_cpu(fieldbus_type);

Probably because the parameter to be16_to_cpu() should be __be16.
Would you like to spin a separate patch for this too? Or shall I?

> I'll send the V2 later today then.

Thank you !
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
